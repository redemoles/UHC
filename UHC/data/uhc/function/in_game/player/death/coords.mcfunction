
#> uhc:in_game/player/death/coords
#
# @within			uhc:in_game/player/death/
# 
#
# @description		Donne au joueur les coordonnées d'où il est mort
#

# Msg FRA
$tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Tu es mort en","color":"#FF3F3F"},{"text":" $(x)","color":"#FFE73F","bold":true},{"text":" $(y)","color":"#FFEF7F"},{"text":" $(z)","color":"#FFE73F","bold":true}]

# Msg ENG
$tellraw @s[scores={uhc.player.lang=051407}] [{"text":"You died at","color":"#FF3F3F"},{"text":" $(x)","color":"#FFE73F","bold":true},{"text":" $(y)","color":"#FFEF7F"},{"text":" $(z)","color":"#FFE73F","bold":true}]
