
#> bhc:scenario/02/timer/reminder/02
#
# @within			bhc:scenario/02/timer/reminder/01
#
#
# @description		Rappel des règles du scénario à l'approche de son lancement
#

tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Ère Viking ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Règles de la catégorie ","color":"#FFFFFF"},{"text":"Bingo de l'Ère Viking","color":"#3FE7FF","bold":true},{"text":"\n\n+1","color":"#3FE7FF","bold":true},{"text":" point","color":"#00C3DF"},{"text":" par case complétée via récolte de l'item.","color":"#FFFFFF"},{"text":"\n+2","color":"#3FE7FF","bold":true},{"text":" points","color":"#00C3DF"},{"text":" par case complétée via un kill sur une cible.\n","color":"#FFFFFF"}]
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Viking Era ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Rules of the category ","color":"#FFFFFF"},{"text":"Bingo of the Viking Era","color":"#3FE7FF","bold":true},{"text":"\n\n+1","color":"#3FE7FF","bold":true},{"text":" point","color":"#00C3DF"},{"text":" per box completed by collecting the item.","color":"#FFFFFF"},{"text":"\n+2","color":"#3FE7FF","bold":true},{"text":" points","color":"#00C3DF"},{"text":" per box completed by killing a target.\n","color":"#FFFFFF"}]

schedule function bhc:scenario/02/timer/reminder/03 10s
