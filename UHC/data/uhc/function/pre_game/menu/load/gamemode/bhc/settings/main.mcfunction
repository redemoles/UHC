
#> uhc:pre_game/menu/load/gamemode/bhc/settings/main
#
# @within			uhc:pre_game/menu/load/gamemode/bhc/main
#
#
# @description		Menu
#

function uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_a/macro_set
function uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_a/macro_text with storage uhc:settings menu.stepa
execute if score @s uhc.menu.gamemode.bhc matches 12..15 run function uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_a/menu with storage uhc:settings menu.stepa

function uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_b/macro_set
function uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_b/macro_text with storage uhc:settings menu.stepb
execute if score @s uhc.menu.gamemode.bhc matches 16..19 run function uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_b/menu with storage uhc:settings menu.stepb

execute if score @s uhc.menu.gamemode.bhc matches 12.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:command_block[minecraft:item_name=[{"text":"Paramètres","color":"#F3F3F3","italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
execute if score @s uhc.menu.gamemode.bhc matches 12.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:command_block[minecraft:item_name=[{"text":"Settings","color":"#F3F3F3","italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]

execute if score @s uhc.menu.gamemode.bhc matches 12.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
execute if score @s uhc.menu.gamemode.bhc matches 12.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Cancel","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
