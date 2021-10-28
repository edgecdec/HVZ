import sys, random, argparse, os, errno
from datetime import datetime

DEFAULT_DISTANCE = 5

items = ['brick']
dirpath = 'scavenger_mura/data/scavenger/functions'
if not os.path.exists(os.path.dirname(dirpath)):
    try:
        os.makedirs(os.path.dirname(dirpath))
    except OSError as exc:
        if exc.errno != errno.EEXIST:
            raise


def generate():
    if not os.path.exists(dirpath + '/items'):
        os.makedirs(dirpath + '/items')

    if not os.path.exists(dirpath + '/control'):
        os.makedirs(dirpath + '/control')

    for item in items:
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

        with open(f'{dirpath}/items/scavenger_found_{item}.mcfunction', 'w+') as itemf:
            itemf.write(f'{giveCommand}{soundCommand}{tellCommand}{treasureLeftCommand}{finishCommand}')
        itemf.close()

    # Create join game file
    clearCommand = '# clear inventory\n'
    clearCommand += 'execute as @p run clear\n\n'

    scoreboardCreationCommand = '# set scoreboard treasures left to 0\n'
    scoreboardCreationCommand += f'scoreboard players set @p TreasuresLeft {str(len(items))}\n\n'

    scoreboardPlayerCommand = '# set finishing rank to 0\n'
    scoreboardPlayerCommand += 'scoreboard players set @p ScavengerRanking 0\n\n'

    joinTeamCommand = '# join team\n'
    joinTeamCommand += 'execute as @p run team join ScavengerHunt\n\n'

    with open(dirpath + '/control/join_game.mcfunction', 'w+') as joinf:
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
    for item in items:
        removeTagCommand += f'tag @a remove {item}\n'
    removeTagCommand += 'tag @a remove finished'

    with open(dirpath + '/control/scavenger_end_game.mcfunction', 'w+') as endf:
        endf.write(f'{clearCommand}{removeTeamCommand}{removeScoreboardCommand}{removeTagCommand}')
    endf.close()

    # setup game
    addscore = '# adds scoreboard Treasures Left\nscoreboard objectives add TreasuresLeft dummy {"text":"Items Left","bold":true}\nscoreboard objectives add ScavengerRanking dummy {"text":"Scavenger Ranking","bold":true}\n'
    addscavhunt = '\n# adds Scavenger Hunt Team\nteam add ScavengerHunt "ScavengerHunt"\nteam modify ScavengerHunt color light_purple\n'
    addscavfin = '\n# add Scavenger Finished Team\nteam add ScavengerFin "ScavengerFinished"\nteam modify ScavengerFin color dark_blue\n'
    addwait = '\n# if player has waitingScavenger tag have them join the team\nexecute as @a[tag=waitingScavenger] run team join ScavengerHunt\n'
    clear = '\n# clear player inventory\nexecute as @a[team=ScavengerHunt] run clear\n'
    addunfound = '\n# set all treasures to unfound\nscoreboard players set @a[team=ScavengerHunt] TreasuresLeft ' + str(len(items)) + '\n'
    display = '\n# Display objective for users in scavenger hunt\nscoreboard objectives setdisplay sidebar.team.light_purple TreasuresLeft\n'
    displayfin = '\n# Display objective for users in scavenger finished team\nscoreboard objectives setdisplay sidebar.team.dark_blue ScavengerFin'
    with open(dirpath + '/control/scavenger_setup.mcfunction', 'w+') as setupf:
        setupf.write(addscore + addscavhunt + addscavfin + addwait + clear + addunfound + display + displayfin)
    setupf.close()


def pack():
    text = '{\n\t"pack": {\n\t\t"pack_format": 5,\n\t\t"description": "scavenger generate script compiled on ' + datetime.now().strftime(
        "%m/%d/%Y %H:%M:%S") + '"\n\t}\n}'
    with open('scavenger_mura/pack.mcmeta', 'w+') as packf:
        packf.write(text)
    packf.close()

    text = '# Check if anyone has finished\nexecute as @a[distance=..5,scores={TreasuresLeft=..0},tag=!finished] run say HAS COMPLETED THE SCAVENGER HUNT!\nexecute as @a[distance=..5,scores={TreasuresLeft=..0},tag=!FINISHED] run summon firework_rocket ~ ~3 ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;8073150,14602026],FadeColors:[I;14602026]}]}}}}\ntag @a[distance=..5,scores={TreasuresLeft=..0},tag=!FINISHED] add FINISHED\nexecute as @a[tag=FINISHED, scores={TreasuresLeft=..0}] run scoreboard players add @a[tag=FINISHED, scores={TreasuresLeft=..0}] ScavengerRanking 1'
    with open(dirpath + '/items/see_if_anyone_finished.mcfunction', 'w+') as seef:
        seef.write(text)


generate()
pack()