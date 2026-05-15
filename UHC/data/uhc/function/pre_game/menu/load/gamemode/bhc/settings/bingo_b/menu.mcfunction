
#> uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_b/menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:light_blue_dye[minecraft:item_name=[{"text":"Départ > ","color":"#FFFFFF","bold":false,"italic":false},$(stepb_start),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:red_dye[minecraft:item_name=[{"text":"Fin > ","color":"#FFFFFF","bold":false,"italic":false},$(stepb_end),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.border matches 16 run item replace entity @s inventory.22 with minecraft:light_blue_dye[minecraft:item_name=[{"text":"Départ > ","color":"#FFFFFF","bold":false,"italic":false},$(stepb_start),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.border matches 17 run item replace entity @s inventory.22 with minecraft:red_dye[minecraft:item_name=[{"text":"Fin > ","color":"#FFFFFF","bold":false,"italic":false},$(stepb_end),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]

$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:light_blue_dye[minecraft:item_name=[{"text":"Start > ","color":"#FFFFFF","bold":false,"italic":false},$(stepb_start),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:red_dye[minecraft:item_name=[{"text":"End > ","color":"#FFFFFF","bold":false,"italic":false},$(stepb_end),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.border matches 16 run item replace entity @s inventory.22 with minecraft:light_blue_dye[minecraft:item_name=[{"text":"Start > ","color":"#FFFFFF","bold":false,"italic":false},$(stepb_start),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.border matches 17 run item replace entity @s inventory.22 with minecraft:red_dye[minecraft:item_name=[{"text":"End > ","color":"#FFFFFF","bold":false,"italic":false},$(stepb_end),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
