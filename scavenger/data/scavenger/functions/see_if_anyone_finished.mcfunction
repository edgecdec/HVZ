# Check if anyone has finished
execute as @a[distance=..5,scores={TreasuresLeft=..0},tag=!finished] run say HAS COMPLETED THE SCAVENGER HUNT!
execute as @a[distance=..5,scores={TreasuresLeft=..0},tag=!finished] run summon firework_rocket ~ ~3 ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:0,Trail:1,Colors:[I;8073150,14602026],FadeColors:[I;14602026]}]}}}}

Add tag to make sure they can't finish again.
tag @a[distance=..5,scores={TreasuresLeft=..0},tag=!finished] add finished
execute as @a[tag=finished, scores={TreasuresLeft=..0}] run scoreboard players add @a[tag=finished, scores={TreasuresLeft=..0}] ScavengerRanking 1