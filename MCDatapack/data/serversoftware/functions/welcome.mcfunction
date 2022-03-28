#welcom first time + roll
execute as @a at @s run execute unless score @s leaves matches 2.. run scoreboard players set @s leaves 3

execute as @a[limit=1,scores={leaves=3}] at @s run trigger PLAYER
execute as @a[name=Sir_Morton,scores={leaves=3}] at @s run trigger ADMIN

execute as @a[limit=1,scores={leaves=3}] at @s run spawnpoint @s 0 100 0
execute as @a[limit=1,scores={leaves=3}] at @s run tp @s 0 100 0

execute as @a[limit=1,scores={leaves=3}] at @s run title @s title ["",{"text":"Willkommen auf diesem Server, ","bold":true,"color":"gold"},"\n",{"selector":"@s"}]

execute as @a[limit=1,scores={leaves=3}] at @s run scoreboard players set @s leaves 6

#welcome back
execute as @a[limit=1,scores={leaves=7..}] at @s run title @s title ["",{"text":"Willkommen zurück, ","bold":true,"color":"gold"},"\n",{"selector":"@s"}]
execute as @a[limit=1,scores={leaves=7..}] at @s run scoreboard players set @s leaves 6
