execute as @a at @s[gamemode=survival,nbt={Inventory:[{id:"minecraft:structure_void"}]}] run give @s minecraft:wither_skeleton_spawn_egg{display:{Name:'{"text":"Structure_Voidblock"}'},EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["structure_voidblock"]}} 1

execute as @a at @s[gamemode=survival,nbt={Inventory:[{id:"minecraft:structure_void"}]}] run clear @s minecraft:structure_void 1

execute as @a at @s[gamemode=survival,nbt={Inventory:[{id:"minecraft:barrier"}]}] run give @s minecraft:enderman_spawn_egg{display:{Name:'{"text":"Block_Delete"}'},EntityTag:{id:"minecraft:area_effect_cloud",Particle:"block air",NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:1,Tags:["block_delete"]}} 1

execute as @a at @s[gamemode=survival,nbt={Inventory:[{id:"minecraft:barrier"}]}] run clear @s minecraft:barrier 1

execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:wither_skeleton_spawn_egg"}}] at @s run execute as @e[type=minecraft:armor_stand,tag=structure_voidblock] at @s run particle block_marker structure_void ~ ~0.45 ~ 0 0 0 0.1 1 normal
execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:enderman_spawn_egg"}}] at @s run execute as @e[type=minecraft:armor_stand,tag=structure_voidblock] at @s run particle block_marker structure_void ~ ~0.45 ~ 0 0 0 0.1 1 normal

execute as @e[tag=structure_voidblock,tag=!structure_voided] at @s run setblock ~ ~ ~ minecraft:structure_void
execute as @e[tag=structure_voidblock] at @s run tag @s add structure_voided
execute as @e[tag=structure_voidblock] at @s run execute unless block ~ ~ ~ minecraft:structure_void run summon item ~ ~ ~ {Item:{id:"minecraft:wither_skeleton_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Structure_Voidblock"}'},EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["structure_voidblock"]}}}}
execute as @e[tag=structure_voidblock] at @s run execute unless block ~ ~ ~ minecraft:structure_void run kill @s

execute as @e[tag=block_delete] at @s if entity @e[tag=structure_voidblock,distance=..1] run give @p minecraft:wither_skeleton_spawn_egg{display:{Name:'{"text":"Structure_Voidblock"}'},EntityTag:{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["structure_voidblock"]}} 1
execute as @e[tag=block_delete] at @s run kill @e[tag=structure_voidblock,distance=..1]
execute as @e[tag=block_delete] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[tag=block_delete] at @s run give @p minecraft:enderman_spawn_egg{display:{Name:'{"text":"Block_Delete"}'},EntityTag:{id:"minecraft:area_effect_cloud",Particle:"block air",NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:1,Tags:["block_delete"]}} 1
execute as @e[tag=block_delete] at @s run kill @e[tag=block_delete]
