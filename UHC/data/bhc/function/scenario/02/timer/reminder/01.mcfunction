
#> bhc:scenario/02/timer/reminder/01
#
# @within			bhc:timer/cooldown/reminder
#
#
# @description		Rappel des règles du scénario à l'approche de son lancement
#

tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Ère Viking ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Règles de la catégorie ","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF","bold":true},{"text":"\n\n+5","color":"#3FE7FF","bold":true},{"text":" points","color":"#00C3DF"},{"text":" par kill sur une cible ou un assassin.","color":"#FFFFFF"},{"text":"\n+1","color":"#3FE7FF","bold":true},{"text":" point","color":"#00C3DF"},{"text":" par kill si victime ni cible ni assassin après le bingo.","color":"#FFFFFF"},{"text":"\n-5","color":"#FF3F3F","bold":true},{"text":" points","color":"#DF0000"},{"text":" par kill si victime ni cible ni assassin pendant le bingo.\n","color":"#FFFFFF"}]
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Viking Era ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Rules of the category ","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF","bold":true},{"text":"\n\n+5","color":"#3FE7FF","bold":true},{"text":" points","color":"#00C3DF"},{"text":" per kill on a target or assassin.","color":"#FFFFFF"},{"text":"\n+1","color":"#3FE7FF","bold":true},{"text":" point","color":"#00C3DF"},{"text":" per kill if the victim is neither the target nor the assassin after the bingo.","color":"#FFFFFF"},{"text":"\n-5","color":"#FF3F3F","bold":true},{"text":" points","color":"#DF0000"},{"text":" per kill if the victim is neither the target nor the assassin during the bingo.\n","color":"#FFFFFF"}]

schedule function bhc:scenario/02/timer/reminder/02 10s
