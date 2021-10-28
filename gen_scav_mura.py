import sys, random, argparse, os, errno
from datetime import datetime

DEFAULT_DISTANCE = 4

items = ['brick']
dirpath = 'scavenger_mura/data/scavenger/functions'
if not os.path.exists(os.path.dirname(dirpath)):
    try:
        os.makedirs(os.path.dirname(dirpath))
    except OSError as exc:
        if exc.errno != errno.EEXIST:
            raise


def generate(variable='', num=1):
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
            itemf.write(f'{giveCommand}{item}{soundCommand}{tellCommand}{treasureLeftCommand}{finishCommand}')
        num += 1
        itemf.close()

    # join game
    clear = '# clear inventory\nexecute as @p run clear\n'
    setscore = '\n# set scoreboard treasures left to 0\nscoreboard players set @p TreasuresLeft ' + str(
        num - 1) + '\n'
    score = 'scoreboard players set @p ScavengerRanking 0\n'
    join = '\n# join team\nexecute as @p run team join ScavengerHunt'
    with open(dirpath + '/control/join_game.mcfunction', 'w+') as joinf:
        joinf.write(clear + setscore + score + join)
    joinf.close()

    # end game
    clear = '# Clear inventories\nexecute as @a[team=ScavengerHunt] run clear\n'
    removeteam = '\n# Remove Team\nteam remove ScavengerHunt\nteam remove ScavengerFinished\n'
    removeobj = '\n# Remove Scoreboard Objective\nscoreboard objectives remove TreasuresLeft\nscoreboard objectives remove ScavengerRanking\n'
    tag = '\n# Remove Tags\n'
    for item in items:
        tag += 'tag @a remove ' + item + '\n'
    with open(dirpath + '/control/scavenger_end_game.mcfunction', 'w+') as endf:
        endf.write(clear + removeteam + removeobj + tag + 'tag @a remove finished')
    endf.close()

    # setup game
    addscore = '# adds scoreboard Treasures Left\nscoreboard objectives add TreasuresLeft dummy {"text":"Items Left","bold":true}\nscoreboard objectives add ScavengerRanking dummy {"text":"Scavenger Ranking","bold":true}\n'
    addscavhunt = '\n# adds Scavenger Hunt Team\nteam add ScavengerHunt "ScavengerHunt"\nteam modify ScavengerHunt color light_purple\n'
    addscavfin = '\n# add Scavenger Finished Team\nteam add ScavengerFin "ScavengerFinished"\nteam modify ScavengerFin color dark_blue\n'
    addwait = '\n# if player has waitingScavenger tag have them join the team\nexecute as @a[tag=waitingScavenger] run team join ScavengerHunt\n'
    clear = '\n# clear player inventory\nexecute as @a[team=ScavengerHunt] run clear\n'
    addunfound = '\n# set all treasures to unfound\nscoreboard players set @a[team=ScavengerHunt] TreasuresLeft ' + str(
        num - 1) + '\n'
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