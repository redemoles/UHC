
#> uhc:translation/menu/load/settings/pve_1_life_left
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
$execute if score #lives uhc.data.setup matches 2.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.15 with minecraft:red_candle[minecraft:item_name=[{"text":"Descente à 1 vie > ","color":"#FFFFFF","italic":false},{"text":"$(1_life_left)","color":"#FF3F3F","bold":true},{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_1"}]
execute unless score #lives uhc.data.setup matches 2.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.15 with minecraft:black_candle[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_live_1"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.pve matches 2 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:red_candle[minecraft:item_name=[{"text":"Descente à 1 vie > ","color":"#FFFFFF","italic":false},{"text":"$(1_life_left)","color":"#FF3F3F","bold":true},{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_1"}]

## ENG - English
$execute if score #lives uhc.data.setup matches 2.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.15 with minecraft:red_candle[minecraft:item_name=[{"text":"Drop to 1 life > ","color":"#FFFFFF","italic":false},{"text":"$(1_life_left)","color":"#FF3F3F","bold":true},{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_1"}]
execute unless score #lives uhc.data.setup matches 2.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.15 with minecraft:black_candle[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_live_1"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.pve matches 2 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:red_candle[minecraft:item_name=[{"text":"Drop to 1 life > ","color":"#FFFFFF","italic":false},{"text":"$(1_life_left)","color":"#FF3F3F","bold":true},{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_1"}]
