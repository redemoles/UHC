
#> uhc:pre_game/menu/load/gamemode/bhc/settings/main
#
# @within			uhc:pre_game/menu/load/gamemode/bhc/main
#
#
# @description		Menu
#

function uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_a/macro_set
function uhc:translation/menu/load/gamemode/bhc_settings_bingo_a with storage uhc:settings menu.stepa

function uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_b/macro_set
function uhc:translation/menu/load/gamemode/bhc_settings_bingo_b with storage uhc:settings menu.stepb

execute if score @s uhc.menu.gamemode.bhc matches 12.. run function uhc:translation/menu/load/gamemode/bhc_settings_main
execute if score @s uhc.menu.gamemode.bhc matches 12.. run item replace entity @s inventory.20 with minecraft:purple_concrete[minecraft:item_name=[{"text":"-10","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"-10"}]
execute if score @s uhc.menu.gamemode.bhc matches 12.. run item replace entity @s inventory.21 with minecraft:magenta_concrete[minecraft:item_name=[{"text":"-1","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"-1"}]
execute if score @s uhc.menu.gamemode.bhc matches 12.. run item replace entity @s inventory.23 with minecraft:light_blue_concrete[minecraft:item_name=[{"text":"+1","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"+1"}]
execute if score @s uhc.menu.gamemode.bhc matches 12.. run item replace entity @s inventory.24 with minecraft:cyan_concrete[minecraft:item_name=[{"text":"+10","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"+10"}]
