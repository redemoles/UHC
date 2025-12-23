
#> uhc:in_game/player/misc/info/team/list
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Donne au joueur la liste des équipes pour lui permettre de regarder leurs statistiques
#

tag @s add uhc.temp
scoreboard players set #team uhc.id.team 1
execute in uhc:lobby run function uhc:in_game/player/misc/info/team/marker_order
tag @s remove uhc.temp

scoreboard players reset @s uhc.info.team
scoreboard players enable @s uhc.info.team
scoreboard players enable @s uhc.info.team.temp
