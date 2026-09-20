
#> uhc:translation/menu/load/settings/pve_lives_number
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.16 with minecraft:totem_of_undying[minecraft:item_name=[{"text":"Nombre de vies > ","color":"#FFFFFF","italic":false},{"text":"$(lives)","color":"#FF3F3F","bold":true}],minecraft:custom_data={Tags:"settings_lives"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.pve matches 11 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:totem_of_undying[minecraft:item_name=[{"text":"Nombre de vies > ","color":"#FFFFFF","italic":false},{"text":"$(lives)","color":"#FF3F3F","bold":true}],minecraft:custom_data={Tags:"settings_lives"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.16 with minecraft:totem_of_undying[minecraft:item_name=[{"text":"Number of lives > ","color":"#FFFFFF","italic":false},{"text":"$(lives)","color":"#FF3F3F","bold":true}],minecraft:custom_data={Tags:"settings_lives"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.pve matches 11 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:totem_of_undying[minecraft:item_name=[{"text":"Number of lives > ","color":"#FFFFFF","italic":false},{"text":"$(lives)","color":"#FF3F3F","bold":true}],minecraft:custom_data={Tags:"settings_lives"}]
