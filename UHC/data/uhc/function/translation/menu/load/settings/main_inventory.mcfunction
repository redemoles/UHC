
#> uhc:translation/menu/load/settings/main_inventory
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.5 with minecraft:chest[minecraft:item_name=[{"text":"Inventaire","color":"#FFE73F","italic":false}],minecraft:lore=[{"text":"Règles de stuff, items au démarrage et récompenses","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.5 with minecraft:chest[minecraft:item_name=[{"text":"Inventory","color":"#FFE73F","italic":false}],minecraft:lore=[{"text":"Items rules, starter and rewards items","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory"}]
