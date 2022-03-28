#add scores + teams + modify
scoreboard objectives add FLo.L dummy {"text":"F lo.l","color":"dark_red","bold":"true"}
scoreboard objectives setdisplay sidebar FL.oL

scoreboard objectives add Health health {"text":"❤","color":"dark_red"}
scoreboard objectives setdisplay belowName Health

scoreboard objectives add Tode deathCount
scoreboard objectives setdisplay list Tode

scoreboard objectives add Kills totalKillCount

scoreboard objectives add leaves minecraft.custom:minecraft.leave_game

scoreboard objectives add Flo.l trigger
scoreboard objectives add Noob trigger
scoreboard objectives add PLAYER trigger
scoreboard objectives add ADMIN trigger

scoreboard objectives add ONLINE trigger
scoreboard objectives add BESCH trigger
scoreboard objectives add FARMEN trigger
scoreboard objectives add AFK trigger


tag @a[name=Sir_Morton] add ADMIN


#Flo.l
team add Flo.l
team modify Flo.l color dark_aqua
team modify Flo.l suffix [{"text":" | ","color":"dark_gray"},{"text":"","color":""}]
team modify Flo.l prefix [{"text":"Flo.l","color":"dark_aqua"},{"text":" | ","color":"dark_gray"}]




#NOOB
team add ONLINENOOB
team modify ONLINENOOB color aqua
team modify ONLINENOOB suffix [{"text":" | ","color":"dark_gray"},{"text":"ONLINE","color":"dark_green"}]
team modify ONLINENOOB prefix [{"text":"NOOB","color":"light_purple"},{"text":" | ","color":"dark_gray"}]

team add BESCHNOOB
team modify BESCHNOOB color aqua
team modify BESCHNOOB suffix [{"text":" | ","color":"dark_gray"},{"text":"BESCHÄFTIGT","color":"gold"}]
team modify BESCHNOOB prefix [{"text":"NOOB","color":"light_purple"},{"text":" | ","color":"dark_gray"}]

team add FARMENNOOB
team modify FARMENNOOB color aqua
team modify FARMENNOOB suffix [{"text":" | ","color":"dark_gray"},{"text":"FARMEN","color":"yellow"}]
team modify FARMENNOOB prefix [{"text":"NOOB","color":"light_purple"},{"text":" | ","color":"dark_gray"}]

team add AFKNOOB
team modify AFKNOOB color aqua
team modify AFKNOOB suffix [{"text":" | ","color":"dark_gray"},{"text":"AFK","color":"red"}]
team modify AFKNOOB prefix [{"text":"NOOB","color":"light_purple"},{"text":" | ","color":"dark_gray"}]


#SPIELER
team add ONLINEPLAYER
team modify ONLINEPLAYER color dark_aqua
team modify ONLINEPLAYER suffix [{"text":" | ","color":"dark_gray"},{"text":"ONLINE","color":"dark_green"}]
team modify ONLINEPLAYER prefix [{"text":"PLAYER","color":"white"},{"text":" | ","color":"dark_gray"}]

team add BESCHPLAYER
team modify BESCHPLAYER color dark_aqua
team modify BESCHPLAYER suffix [{"text":" | ","color":"dark_gray"},{"text":"BESCHÄFTIGT","color":"gold"}]
team modify BESCHPLAYER prefix [{"text":"PLAYER","color":"white"},{"text":" | ","color":"dark_gray"}]

team add FARMENPLAYER
team modify FARMENPLAYER color dark_aqua
team modify FARMENPLAYER suffix [{"text":" | ","color":"dark_gray"},{"text":"FARMEN","color":"yellow"}]
team modify FARMENPLAYER prefix [{"text":"PLAYER","color":"white"},{"text":" | ","color":"dark_gray"}]

team add AFKPLAYER
team modify AFKPLAYER color dark_aqua
team modify AFKPLAYER suffix [{"text":" | ","color":"dark_gray"},{"text":"AFK","color":"red"}]
team modify AFKPLAYER prefix [{"text":"PLAYER","color":"white"},{"text":" | ","color":"dark_gray"}]


#ADMIN
team add ONLINEADMIN
team modify ONLINEADMIN color green
team modify ONLINEADMIN suffix [{"color":"dark_gray","bold":"false","text":" | "},{"color":"dark_green","text":"ONLINE"},{"color":"black","obfuscated":"true","bold":"true","text":"*****"}]
team modify ONLINEADMIN prefix [{"color":"black","obfuscated":"true","bold":"true","text":"*****"},{"color":"dark_blue","obfuscated":"false","bold":"false","text":"ADMIN"},{"color":"dark_gray","obfuscated":"false","bold":"false","text":" | "}]

team add BESCHADMIN
team modify BESCHADMIN color green
team modify BESCHADMIN suffix [{"text":" | ","color":"dark_gray"},{"text":"BESCHÄFTIGT","color":"gold"},{"text":"*****","color":"black","obfuscated":"true","bold":"true"}]
team modify BESCHADMIN prefix [{"text":"*****","color":"black","obfuscated":"true","bold":"true"},{"text":"ADMIN","color":"dark_blue","obfuscated":"false","bold":"false"},{"text":" | ","color":"dark_gray","obfuscated":"false","bold":"false"}]

team add FARMENADMIN
team modify FARMENADMIN color green
team modify FARMENADMIN suffix [{"text":" | ","color":"dark_gray"},{"text":"FARMEN","color":"yellow"},{"text":"*****","color":"black","obfuscated":"true","bold":"true"}]
team modify FARMENADMIN prefix [{"text":"*****","color":"black","obfuscated":"true","bold":"true"},{"text":"ADMIN","color":"dark_blue","obfuscated":"false","bold":"false"},{"text":" | ","color":"dark_gray","obfuscated":"false","bold":"false"}]

team add AFKADMIN
team modify AFKADMIN color green
team modify AFKADMIN suffix [{"text":" | ","color":"dark_gray"},{"text":"AFK","color":"red"},{"text":"*****","color":"black","obfuscated":"true","bold":"true"}]
team modify AFKADMIN prefix [{"text":"*****","color":"black","obfuscated":"true","bold":"true"},{"text":"ADMIN","color":"dark_blue","obfuscated":"false","bold":"false"},{"text":" | ","color":"dark_gray","obfuscated":"false","bold":"false"}]
