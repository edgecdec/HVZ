from ScavengerConstants import *

def generateEndGameFile():
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

    with open(f'{DIR_PATH}control/scavenger_end_game.mcfunction', 'w+') as outfile:
        outfile.write(f'{clearCommand}{removeTeamCommand}{removeScoreboardCommand}{removeTagCommand}')
    outfile.close()
