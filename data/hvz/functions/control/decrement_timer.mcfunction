scoreboard players add timeRem TimeRem 1
execute if score timeRem TimeRem matches 1200 run bossbar set timer value 300
execute if score timeRem TimeRem matches 2400 run bossbar set timer value 240
execute if score timeRem TimeRem matches 3600 run bossbar set timer value 180
execute if score timeRem TimeRem matches 4800 run bossbar set timer value 120
execute if score timeRem TimeRem matches 6000 run bossbar set timer value 60
execute if score timeRem TimeRem matches 6000 run say 1 minute remaining!
execute if score timeRem TimeRem matches 6600 run bossbar set timer value 30
execute if score timeRem TimeRem matches 6600 run say 30 seconds remaining!
execute if score timeRem TimeRem matches 7000 run bossbar set timer value 10
execute if score timeRem TimeRem matches 7000 run say 10 seconds remaining!
execute if score timeRem TimeRem matches 7100 run bossbar set timer value 5
execute if score timeRem TimeRem matches 7100 run say 5 seconds remaining!
execute if score timeRem TimeRem matches 7200 run bossbar set timer value 0
execute if score timeRem TimeRem matches 7200 run say TIME IS UP!



