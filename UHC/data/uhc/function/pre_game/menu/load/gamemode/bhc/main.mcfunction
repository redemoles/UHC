
#> uhc:pre_game/menu/load/gamemode/bhc/main
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

clear @s
tag @s remove uhc.menu.main.host
scoreboard players set @s uhc.menu.gamemode.main 0
execute unless score @s uhc.menu.gamemode.bhc matches 1.. run scoreboard players set @s uhc.menu.gamemode.bhc 1






function uhc:pre_game/menu/load/background/

execute if score @s uhc.menu.gamemode.bhc matches 1..10 run function uhc:pre_game/menu/load/gamemode/bhc/scenario_page
execute if score @s uhc.menu.gamemode.bhc matches 11 run function uhc:pre_game/menu/load/gamemode/bhc/settings/main
execute if score @s uhc.menu.gamemode.bhc matches 12.. run return run function uhc:pre_game/menu/load/gamemode/bhc/settings/main

function uhc:translation/menu/load/gamemode/bhc_main
