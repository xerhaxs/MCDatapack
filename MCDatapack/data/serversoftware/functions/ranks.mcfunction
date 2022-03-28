#enabele trigger scores
#scoreboard players enable @a Flo.l

scoreboard players enable @a Noob
scoreboard players enable @a PLAYER
scoreboard players enable @a[tag=ADMIN] ADMIN

scoreboard players enable @a ONLINE
scoreboard players enable @a BESCHAEFTIGT
scoreboard players enable @a FARMEN
scoreboard players enable @a AFK



#detact npc-tag Noob
execute as @a[limit=1,scores={Noob=1..}] at @s run tag @s add NoobTEAM
execute as @a[limit=1,scores={Noob=1..},tag=NoobTEAM] at @s run tag @s remove ADMINTEAM
execute as @a[limit=1,scores={Noob=1..},tag=NoobTEAM] at @s run tag @s remove PLAYERTEAM
execute as @a[limit=1,scores={Noob=1..},tag=NoobTEAM] at @s run team join ONLINENOOB @s
execute as @a[limit=1,scores={Noob=1..},tag=NoobTEAM] at @s run scoreboard players reset @s Noob

#detact npc-tag PLAYER
execute as @a[limit=1,scores={PLAYER=1..}] at @s run tag @s add PLAYERTEAM
execute as @a[limit=1,scores={PLAYER=1..},tag=PLAYERTEAM] at @s run tag @s remove ADMINTEAM
execute as @a[limit=1,scores={PLAYER=1..},tag=PLAYERTEAM] at @s run tag @s remove NoobTEAM
execute as @a[limit=1,scores={PLAYER=1..},tag=PLAYERTEAM] at @s run team join ONLINEPLAYER @s
execute as @a[limit=1,scores={PLAYER=1..},tag=PLAYERTEAM] at @s run scoreboard players reset @s PLAYER

#detact npc-tag ADMIN
execute as @a[limit=1,scores={ADMIN=1..}] at @s run tag @s add ADMINTEAM
execute as @a[limit=1,scores={ADMIN=1..},tag=ADMINTEAM] at @s run tag @s remove NoobTEAM
execute as @a[limit=1,scores={ADMIN=1..},tag=ADMINTEAM] at @s run tag @s remove PLAYERTEAM
execute as @a[limit=1,scores={ADMIN=1..},tag=ADMINTEAM] at @s run team join ONLINEADMIN @s
execute as @a[limit=1,scores={ADMIN=1..},tag=ADMINTEAM] at @s run scoreboard players reset @s ADMIN



#detact team Noob
execute as @a[limit=1,scores={ONLINE=1..},tag=NoobTEAM] at @s run team join ONLINENOOB
execute as @a[limit=1,scores={ONLINE=1..},tag=NoobTEAM] at @s run scoreboard players reset @s ONLINE

execute as @a[limit=1,scores={BESCHAEFTIGT=1..},tag=NoobTEAM] at @s run team join BESCHNOOB
execute as @a[limit=1,scores={BESCHAEFTIGT=1..},tag=NoobTEAM] at @s run scoreboard players reset @s BESCHAEFTIGT

execute as @a[limit=1,scores={FARMEN=1..},tag=NoobTEAM] at @s run team join FARMENNOOB
execute as @a[limit=1,scores={FARMEN=1..},tag=NoobTEAM] at @s run scoreboard players reset @s FARMEN

execute as @a[limit=1,scores={AFK=1..},tag=NoobTEAM] at @s run team join AFKNOOB
execute as @a[limit=1,scores={AFK=1..},tag=NoobTEAM] at @s run scoreboard players reset @s AFK


#detact team PLAYER
execute as @a[limit=1,scores={ONLINE=1..},tag=PLAYERTEAM] at @s run team join ONLINEPLAYER
execute as @a[limit=1,scores={ONLINE=1..},tag=PLAYERTEAM] at @s run scoreboard players reset @s ONLINE

execute as @a[limit=1,scores={BESCHAEFTIGT=1..},tag=PLAYERTEAM] at @s run team join BESCHPLAYER
execute as @a[limit=1,scores={BESCHAEFTIGT=1..},tag=PLAYERTEAM] at @s run scoreboard players reset @s BESCHAEFTIGT

execute as @a[limit=1,scores={FARMEN=1..},tag=PLAYERTEAM] at @s run team join FARMENPLAYER
execute as @a[limit=1,scores={FARMEN=1..},tag=PLAYERTEAM] at @s run scoreboard players reset @s FARMEN

execute as @a[limit=1,scores={AFK=1..},tag=PLAYERTEAM] at @s run team join AFKPLAYER
execute as @a[limit=1,scores={AFK=1..},tag=PLAYERTEAM] at @s run scoreboard players reset @s AFK


#detact team ADMIN
execute as @a[limit=1,scores={ONLINE=1..},tag=ADMINTEAM] at @s run team join ONLINEADMIN
execute as @a[limit=1,scores={ONLINE=1..},tag=ADMINTEAM] at @s run scoreboard players reset @s ONLINE

execute as @a[limit=1,scores={BESCHAEFTIGT=1..},tag=ADMINTEAM] at @s run team join BESCHADMIN
execute as @a[limit=1,scores={BESCHAEFTIGT=1..},tag=ADMINTEAM] at @s run scoreboard players reset @s BESCHAEFTIGT

execute as @a[limit=1,scores={FARMEN=1..},tag=ADMINTEAM] at @s run team join FARMENADMIN
execute as @a[limit=1,scores={FARMEN=1..},tag=ADMINTEAM] at @s run scoreboard players reset @s FARMEN

execute as @a[limit=1,scores={AFK=1..},tag=ADMINTEAM] at @s run team join AFKADMIN
execute as @a[limit=1,scores={AFK=1..},tag=ADMINTEAM] at @s run scoreboard players reset @s AFK
