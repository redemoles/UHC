
#> uhc:pre_game/menu/load/gamemode/main
#
# @within			uhc:pre_game/menu/selected/main/host/main
#
#
# @description		Menu
#

clear @s
tag @s remove uhc.menu.main.host
scoreboard players set @s uhc.menu.gamemode.main 1
scoreboard players set @s uhc.menu.gamemode.bhc 0
function #plugin:pre_game/menu/reset

function uhc:pre_game/menu/load/background/

item replace entity @s inventory.1 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Bingo","color":"#B73FFF","bold":false},{"text":" UHC","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"gamemode_bhc"}]
function #plugin:pre_game/menu/load/gamemodes_main_menu/main

function uhc:translation/menu/load/close
