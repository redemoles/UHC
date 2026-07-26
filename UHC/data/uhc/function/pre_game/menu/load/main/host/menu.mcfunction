
#> uhc:pre_game/menu/load/main/host/menu
#
# @within			uhc:pre_game/menu/selected/...
#
#
# @description		Menu
#

clear @s
execute if score #language uhc.player.lang matches 1.. run tag @s add uhc.menu.main.host
scoreboard players set @s uhc.menu.main.player 0

function uhc:pre_game/menu/reset/all

function uhc:pre_game/menu/load/background/

function uhc:translation/menu/load/host
