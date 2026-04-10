
#> uhc:in_game/player/spec/revive/new_player/menu/selection/team/pages/colors
#
# @within			uhc:in_game/player/spec/revive/new_player/menu/selection/team/root
#
#
# @description		Menu
#

scoreboard players add @s uhc.menu.main.player 1
execute if score @s uhc.menu.main.player matches 3 run scoreboard players remove @s uhc.menu.main.player 2
execute if score @s uhc.menu.main.player matches 5 run scoreboard players remove @s uhc.menu.main.player 2
function uhc:in_game/player/spec/revive/new_player/menu/load/team
