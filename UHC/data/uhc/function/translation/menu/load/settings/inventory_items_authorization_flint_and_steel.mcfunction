
#> uhc:translation/menu/load/settings/inventory_items_authorization_flint_and_steel
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
execute if score #flint_and_steel uhc.data.setup matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Briquet","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_flint_and_steel"}]
execute if score #flint_and_steel uhc.data.setup matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:flint_and_steel[minecraft:item_name=[{"text":"Briquet","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_flint_and_steel"}]

## ENG - English
execute if score #flint_and_steel uhc.data.setup matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Flint and steel","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_flint_and_steel"}]
execute if score #flint_and_steel uhc.data.setup matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:flint_and_steel[minecraft:item_name=[{"text":"Flint and steel","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_flint_and_steel"}]
