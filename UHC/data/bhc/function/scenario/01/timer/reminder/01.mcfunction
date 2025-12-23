
#> bhc:scenario/01/timer/reminder/01
#
# @within			bhc:timer/cooldown/reminder
#
#
# @description		Rappel des règles du scénario à l'approche de son lancement
#

tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Ruée vers l'Or ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Règles du ","color":"#FFFFFF"},{"text":"Bingo","color":"#FFE73F","bold":true},{"text":"\n\n5 minutes après le début du bingo, toutes les cases réalisées par ","color":"#FFFFFF"},{"score":{"name":"#exhausted","objective":"bhc.case"},"color":"#FFFFFF"},{"text":" équipes seront épuisées.\n","color":"#FFFFFF"}]
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Gold Rush ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Rules of the ","color":"#FFFFFF"},{"text":"Bingo","color":"#FFE73F","bold":true},{"text":"\n\n5 minutes after the start of the bingo, all the box achieved by ","color":"#FFFFFF"},{"score":{"name":"#exhausted","objective":"bhc.case"},"color":"#FFFFFF"},{"text":" teams are exhausted.\n","color":"#FFFFFF"}]

schedule function bhc:scenario/01/timer/reminder/02 10s
