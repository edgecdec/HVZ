from Util import *
from HVZConstants import *

zombieSatStr = f"execute as @p run effect give @a[team={ZOMBIE_TEAM_NAME}] minecraft:saturation 1 0 true\n"
scoreboardAddStr = f"execute as @p run scoreboard players add {ZOMBIE_SATURATION_TIMER_PLAYER} {ZOMBIE_SATURATION_TIMER_SCOREBOARD} 1\n"
helperActivateStr = f"execute if score {ZOMBIE_SATURATION_TIMER_PLAYER} {ZOMBIE_SATURATION_TIMER_SCOREBOARD} matches {ZOMBIE_SATURATION_TICKS_BETWEEN} run function hvz:control/zombie_saturation\n"
scoreboardResetStr = f"execute if score {ZOMBIE_SATURATION_TIMER_PLAYER} {ZOMBIE_SATURATION_TIMER_SCOREBOARD} matches {ZOMBIE_SATURATION_TICKS_BETWEEN} run scoreboard players set {ZOMBIE_SATURATION_TIMER_PLAYER} {ZOMBIE_SATURATION_TIMER_SCOREBOARD} 0\n"

def generateZombieSaturationFile():
    with open(f"{CONTROL_FILE_PATH}zombie_saturation.mcfunction", 'w') as outfile:
        outfile.write(zombieSatStr)

    with open(f"{CONTROL_FILE_PATH}zombie_timer.mcfunction", 'w') as outfile:
        outfile.write(scoreboardAddStr)
        outfile.write(helperActivateStr)
        outfile.write(scoreboardResetStr)
