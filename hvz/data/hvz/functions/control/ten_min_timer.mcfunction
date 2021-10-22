bossbar add timer "Time Remaining"
bossbar set timer max 360
bossbar set timer value 360
bossbar set timer players @a
scoreboard objectives add TimeRem dummy "Time Remaining Helper"
scoreboard players set timeRem TimeRem 0