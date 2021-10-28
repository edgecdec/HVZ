import sys, random, argparse, os, errno
from datetime import datetime

DEFAULT_DISTANCE = 5
PACK_FORMAT_NUM = 5

ITEMS = ['brick']
AUTHORS = ['edge_dec', 'XtremeGumdrop']

NUM_ITEMS = len(ITEMS)

DIR_PATH = 'scavenger_mura/data/scavenger/functions/'
if not os.path.exists(os.path.dirname(DIR_PATH)):
    try:
        os.makedirs(os.path.dirname(DIR_PATH))
    except OSError as exc:
        if exc.errno != errno.EEXIST:
            raise


def generate():
    if not os.path.exists(f'{DIR_PATH}items'):
        os.makedirs(f'{DIR_PATH}items')

    if not os.path.exists(f'{DIR_PATH}control'):
        os.makedirs(f'{DIR_PATH}control')

    for item in ITEMS:
        # /items folder with items
        giveCommand = '# Found a treasure\n'
        giveCommand += f'give @a[distance=..{DEFAULT_DISTANCE},tag=!{item},team=ScavengerHunt] {item}\n\n'

        soundCommand = '# Play sound to user indicating they have found an item\n'
        soundCommand += 'playsound block.note_block.bell block @p ~ ~ ~ 5 0 1\n\n'

        tellCommand = '# Tell user the item they have found\n'
        tellCommand += f'tellraw @p ["", {{"text": "You found "}},{{"text": "a {item}!", "bold": true, "color": "red"}}]\n\n'

        treasureLeftCommand = '# subtract 1 from treasures left\n'
        treasureLeftCommand += f'scoreboard players remove @a[distance= ..{DEFAULT_DISTANCE},tag=!{item},team=ScavengerHunt] TreasuresLeft 1\n\n'

        tagAddCommand = '# add tag indicating they found the treasure\n'
        tagAddCommand+= f'tag @a[distance=..{DEFAULT_DISTANCE},team=ScavengerHunt] add {item}\n\n'

        finishCommand = '# check to see if anyone has won\n'
        finishCommand += 'function scavenger:items/see_if_anyone_finished\n\n'

        with open(f'{DIR_PATH}/items/scavenger_found_{item}.mcfunction', 'w+') as itemf:
            itemf.write(f'{giveCommand}{soundCommand}{tellCommand}{treasureLeftCommand}{finishCommand}')
        itemf.close()

    # Create join game file
    clearCommand = '# clear inventory\n'
    clearCommand += 'execute as @p run clear\n\n'

    scoreboardCreationCommand = '# set scoreboard treasures left to 0\n'
    scoreboardCreationCommand += f'scoreboard players set @p TreasuresLeft {str(NUM_ITEMS)}\n\n'

    scoreboardPlayerCommand = '# set finishing rank to 0\n'
    scoreboardPlayerCommand += 'scoreboard players set @p ScavengerRanking 0\n\n'

    joinTeamCommand = '# join team\n'
    joinTeamCommand += 'execute as @p run team join ScavengerHunt\n\n'

    with open(f'{DIR_PATH}control/join_game.mcfunction', 'w+') as joinf:
        joinf.write(f'{clearCommand}{scoreboardCreationCommand}{scoreboardPlayerCommand}{joinTeamCommand}')
    joinf.close()

    # Create end game file
    clearCommand = '# Clear inventories\n'
    clearCommand += 'execute as @a[team=ScavengerHunt] run clear\n\n'

    removeTeamCommand = '# Remove Teams\n'
    removeTeamCommand += 'team remove ScavengerHunt\n'
    removeTeamCommand += 'team remove ScavengerFinished\n\n'

    removeScoreboardCommand = '# Remove Scoreboard Objective\n'
    removeScoreboardCommand += 'scoreboard objectives remove TreasuresLeft\n'
    removeScoreboardCommand += 'scoreboard objectives remove ScavengerRanking\n\n'

    removeTagCommand = '# Remove Tags\n'
    for item in ITEMS:
        removeTagCommand += f'tag @a remove {item}\n'
    removeTagCommand += 'tag @a remove finished'

    with open(f'{DIR_PATH}control/scavenger_end_game.mcfunction', 'w+') as endf:
        endf.write(f'{clearCommand}{removeTeamCommand}{removeScoreboardCommand}{removeTagCommand}')
    endf.close()

    # Create setup game file
    createTreasuresLeftCommand = '# adds scoreboard Treasures Left\n'
    createTreasuresLeftCommand += 'scoreboard objectives add TreasuresLeft dummy {"text":"Items Left","bold":true}\n'
    createTreasuresLeftCommand += 'scoreboard objectives add ScavengerRanking dummy {"text":"Scavenger Ranking","bold":true}\n\n'

    createScavHuntTeamCommand = '# adds Scavenger Hunt Team\n'
    createScavHuntTeamCommand += 'team add ScavengerHunt "ScavengerHunt"\n'
    createScavHuntTeamCommand += 'team modify ScavengerHunt color light_purple\n\n'

    createScavHuntFinishTeam = '# add Scavenger Finished Team\n'
    createScavHuntFinishTeam += 'team add ScavengerFin "Scavenger Finished"\n'
    createScavHuntFinishTeam += 'team modify ScavengerFin color dark_blue\n\n'

    addWaitingTagCommand = '# if player has waitingScavenger tag have them join the team\n'
    addWaitingTagCommand += 'execute as @a[tag=waitingScavenger] run team join ScavengerHunt\n\n'

    clearCommand = '# clear player inventory\n'
    clearCommand += 'execute as @a[team=ScavengerHunt] run clear\n\n'

    createUnfoundCommand = '# set all treasures to unfound\n'
    createUnfoundCommand += f'scoreboard players set @a[team=ScavengerHunt] TreasuresLeft {str(NUM_ITEMS)}\n\n'

    displayObjectivePlayingCommand = '# Display objective for players in scavenger hunt\n'
    displayObjectivePlayingCommand += 'scoreboard objectives setdisplay sidebar.team.light_purple TreasuresLeft\n\n'

    displayObjectiveFinishedCommand = '# Display objective for users in scavenger finished team\n'
    displayObjectiveFinishedCommand += 'scoreboard objectives setdisplay sidebar.team.dark_blue ScavengerFin\n\n'

    with open(f'{DIR_PATH}control/scavenger_setup.mcfunction', 'w+') as setupf:
        setupf.write(f'{createTreasuresLeftCommand}{createScavHuntTeamCommand}{createScavHuntFinishTeam}{addWaitingTagCommand}{clearCommand}{createUnfoundCommand}{displayObjectivePlayingCommand}{displayObjectiveFinishedCommand}')
    setupf.close()


def pack():
    authorStr = f"{', '.join(AUTHORS)} et al."
    curTimeStr = datetime.now().strftime("%m/%d/%Y %H:%M:%S")

    packFormatLine = f'\t\t"pack_format": {PACK_FORMAT_NUM},\n'
    packDescLine = f'\t\t"description": "Created by {authorStr} on {curTimeStr}"\n'

    packLines = '{\n'
    packLines += '\t"pack": {\n'
    packLines += packFormatLine
    packLines += packDescLine
    packLines += '\t}\n'
    packLines += '}'

    with open('scavenger_mura/pack.mcmeta', 'w+') as packf:
        packf.write(packLines)
    packf.close()

    checkIfFinishCommand = '# Check if anyone has just finished\n'
    checkIfFinishCommand += 'execute as @a[distance=..5,scores={TreasuresLeft=..0},tag=!finished] run say HAS COMPLETED THE SCAVENGER HUNT!\n\n'

    oneTimeCelebrationCommand = '# If anyone has just finished, congratulate them\n'
    oneTimeCelebrationCommand += 'execute as @a[distance=..5,scores={TreasuresLeft=..0},tag=!finished] run summon firework_rocket ~ ~3 ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;8073150,14602026],FadeColors:[I;14602026]}]}}}}\n\n'

    addFinishedTagCommand = '# Add the finished tag to anyone who has finished to prevent multiple celebrations\n'
    addFinishedTagCommand += 'tag @a[distance=..5,scores={TreasuresLeft=..0},tag=!finished] add finished\n\n'

    increaseRankOfFinishedPlayersCommand = '# Add 1 to rank of all players who have finished\n'
    increaseRankOfFinishedPlayersCommand += 'execute as @a[tag=finished, scores={TreasuresLeft=..0}] run scoreboard players add @s ScavengerRanking 1\n\n'

    with open(f'{DIR_PATH}items/see_if_anyone_finished.mcfunction', 'w+') as seef:
        seef.write(f'{checkIfFinishCommand}{oneTimeCelebrationCommand}{addFinishedTagCommand}{increaseRankOfFinishedPlayersCommand}')

generate()
pack()