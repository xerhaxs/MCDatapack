#start gamrule + spawnpoint
fill -1 99 1 1 99 -1 minecraft:sea_lantern
setblock 0 99 0 minecraft:bedrock
fill 2 100 -2 -2 255 2 air
setworldspawn 0 100 0
gamerule spawnRadius 1
gamerule commandBlockOutput false
gamerule doFireTick false
gamerule keepInventory true
fill -1 99 1 1 99 -1 minecraft:sea_lantern
setblock 0 99 0 minecraft:bedrock
fill 2 100 -2 -2 255 2 air
execute as @a[dx=0,dy=100,dz=0,distance=..5] at @s run effect give @s minecraft:regeneration 5 255 true
execute as @a[dx=0,dy=100,dz=0,distance=..5] at @s run effect give @s minecraft:resistance 5 255 true
execute as @a[dx=0,dy=100,dz=0,distance=..5] at @s run effect give @s minecraft:saturation 5 255 true
execute as @a[dx=0,dy=100,dz=0,distance=..5] at @s run effect give @s minecraft:slow_falling 20 4 true
