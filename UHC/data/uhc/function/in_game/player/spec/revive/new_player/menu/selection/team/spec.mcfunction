
#> uhc:in_game/player/spec/revive/new_player/menu/selection/team/spec
#
# @within			uhc:pre_game/menu/selection/main/player/gm
#
#
# @description		Ajout des spectateurs
#

team join 099 @s[tag=!uhc.host]
team join 099.host @s[tag=uhc.host]

scoreboard players enable @s uhc.menu.revive
function uhc:translation/in_game/revive_menu/spectator
