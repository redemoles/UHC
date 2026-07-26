
#> uhc:pre_game/menu/selected/main/player/pages/symbol
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add @s uhc.menu.main.player 2
execute if score @s uhc.menu.main.player matches 5.. run scoreboard players remove @s uhc.menu.main.player 4

function uhc:pre_game/menu/load/main/player/menu
