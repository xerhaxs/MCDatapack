execute as @a at @s[gamemode=survival,nbt={Inventory:[{id:"minecraft:light"}]}] run give @s minecraft:blaze_spawn_egg{display:{Name:'{"text":"Lightblock"}'},EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["lightblock"]}} 1

execute as @a at @s[gamemode=survival,nbt={Inventory:[{id:"minecraft:light"}]}] run clear @s minecraft:light 1

execute as @a at @s[gamemode=survival,nbt={Inventory:[{id:"minecraft:barrier"}]}] run give @s minecraft:enderman_spawn_egg{display:{Name:'{"text":"Block_Delete"}'},EntityTag:{id:"minecraft:area_effect_cloud",Particle:"block air",NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:1,Tags:["block_delete"]}} 1

execute as @a at @s[gamemode=survival,nbt={Inventory:[{id:"minecraft:barrier"}]}] run clear @s minecraft:barrier 1

execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:blaze_spawn_egg"}}] at @s run execute as @e[type=minecraft:armor_stand,tag=lightblock] at @s run particle block_marker light ~ ~0.45 ~ 0 0 0 0.1 1 normal
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:enderman_spawn_egg"}}] at @s run execute as @e[type=minecraft:armor_stand,tag=lightblock] at @s run particle block_marker light ~ ~0.45 ~ 0 0 0 0.1 1 normal

execute as @e[tag=lightblock,tag=!lighted] at @s run setblock ~ ~ ~ minecraft:light
execute as @e[tag=lightblock] at @s run tag @s add lighted
execute as @e[tag=lightblock] at @s run execute unless block ~ ~ ~ minecraft:light run summon item ~ ~ ~ {Item:{id:"minecraft:blaze_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Lightblock"}'},EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["lightblock"]}}}}
execute as @e[tag=lightblock] at @s run execute unless block ~ ~ ~ minecraft:light run kill @s

execute as @e[tag=block_delete] at @s if entity @e[tag=lightblock,distance=..1] run give @p minecraft:blaze_spawn_egg{display:{Name:'{"text":"Lightblock"}'},EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["lightblock"]}} 1
execute as @e[tag=block_delete] at @s run kill @e[tag=lightblock,distance=..1]
execute as @e[tag=block_delete] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[tag=block_delete] at @s run give @p minecraft:enderman_spawn_egg{display:{Name:'{"text":"Block_Delete"}'},EntityTag:{id:"minecraft:area_effect_cloud",Particle:"block air",NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:1,Tags:["block_delete"]}} 1
execute as @e[tag=block_delete] at @s run kill @e[tag=block_delete]