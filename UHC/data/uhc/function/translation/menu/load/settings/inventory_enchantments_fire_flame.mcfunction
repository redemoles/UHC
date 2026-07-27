
#> uhc:translation/menu/load/settings/inventory_enchantments_fire_flame
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
execute if score #fire_flame uhc.data.setup matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:campfire[minecraft:item_name=[{"text":"Aura de feu / Flamme > ","color":"#FFFFFF","italic":false},{"text":"Désactivé","color":"#FF3F3F","bold":true,"italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_fire_flame"}]
execute if score #fire_flame uhc.data.setup matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:soul_campfire[minecraft:item_name=[{"text":"Aura de feu / Flamme > ","color":"#FFFFFF","italic":false},{"text":"Activé","color":"#3FE7FF","bold":true,"italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_fire_flame"}]

## ENG - English
execute if score #fire_flame uhc.data.setup matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:campfire[minecraft:item_name=[{"text":"Fire Aspect / Flame > ","color":"#FFFFFF","italic":false},{"text":"Disabled","color":"#FF3F3F","bold":true,"italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_fire_flame"}]
execute if score #fire_flame uhc.data.setup matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:soul_campfire[minecraft:item_name=[{"text":"Fire Aspect / Flame > ","color":"#FFFFFF","italic":false},{"text":"Enabled","color":"#3FE7FF","bold":true,"italic":false}],minecraft:custom_data={Tags:"settings_inventory_enchantments_fire_flame"}]
