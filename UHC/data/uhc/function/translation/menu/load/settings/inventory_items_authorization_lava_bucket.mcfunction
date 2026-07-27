
#> uhc:translation/menu/load/settings/inventory_items_authorization_lava_bucket
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
execute if score #lava_bucket uhc.data.setup matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Seau de lave","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_lava_bucket"}]
execute if score #lava_bucket uhc.data.setup matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:lava_bucket[minecraft:item_name=[{"text":"Seau de lave","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_lava_bucket"}]

## ENG - English
execute if score #lava_bucket uhc.data.setup matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Lava bucket","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_lava_bucket"}]
execute if score #lava_bucket uhc.data.setup matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:lava_bucket[minecraft:item_name=[{"text":"Lava bucket","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_lava_bucket"}]
