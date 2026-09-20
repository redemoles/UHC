
#> uhc:translation/menu/load/settings/pve_2_lives_left
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
$execute if score #lives uhc.data.setup matches 3.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.14 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Descente à 2 vies > ","color":"#FFFFFF","italic":false},{"text":"$(2_lives_left)","color":"#FF3F3F","bold":true},{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_2"}]
execute unless score #lives uhc.data.setup matches 3.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.14 with minecraft:black_candle[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_live_2"}]
$execute if score @s uhc.menu.settings.pve matches 3 if score @s uhc.player.lang matches 061801 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Descente à 2 vies > ","color":"#FFFFFF","italic":false},{"text":"$(2_lives_left)","color":"#FF3F3F","bold":true},{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_2"}]

## ENG - English
$execute if score #lives uhc.data.setup matches 3.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.14 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Drop to 2 lives > ","color":"#FFFFFF","italic":false},{"text":"$(2_lives_left)","color":"#FF3F3F","bold":true},{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_2"}]
execute unless score #lives uhc.data.setup matches 3.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.14 with minecraft:black_candle[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_live_2"}]
$execute if score @s uhc.menu.settings.pve matches 3 if score @s uhc.player.lang matches 051407 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Drop to 2 lives > ","color":"#FFFFFF","italic":false},{"text":"$(2_lives_left)","color":"#FF3F3F","bold":true},{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_2"}]
