
#> uhc:pre_game/menu/selected/main/player/team/chosen/spec
#
# @within			uhc:pre_game/menu/selected/main/player/gm
#
#
# @description		Ajout des spectateurs
#

tag @s add uhc.spec
tag @s remove uhc.player
team join 099 @s[tag=!uhc.host]
team join 099.host @s[tag=uhc.host]


function uhc:translation/menu/load/team/page/team_join/spectator

scoreboard players reset @s uhc.id.team
tag @s remove uhc.random_team.in_a_team
