
#> uhc:translation/menu/load/settings/inventory_rewards_item_armor
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.menu.settings.inventory matches 01..10 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.15 with minecraft:diamond_chestplate[minecraft:item_name=[{"text":"Armures dupliquées à la mort d'un joueur : ","color":"#FFE73F","italic":false},{"text":"$(item_additional_armor)","color":"#FF3F3F","bold":true}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"Appliqué lorsqu'un joueur meurt d'un","color":"#FFFFFF"}],[{"text":"adversaire, sauf si mort définitive.","color":"#FFFFFF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_item_armor"}]
$execute if score @s[tag=uhc.host] uhc.menu.settings.inventory matches 07 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.22 with minecraft:diamond_chestplate[minecraft:item_name=[{"text":"Armures dupliquées à la mort d'un joueur : ","color":"#FFE73F","italic":false},{"text":"$(item_additional_armor)","color":"#FF3F3F","bold":true}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"Appliqué lorsqu'un joueur meurt d'un","color":"#FFFFFF"}],[{"text":"adversaire, sauf si mort définitive.","color":"#FFFFFF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_item_armor"}]

## ENG - English
$execute if score @s uhc.menu.settings.inventory matches 01..10 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.15 with minecraft:diamond_chestplate[minecraft:item_name=[{"text":"Duplicated armor at the death of a player: ","color":"#FFE73F","italic":false},{"text":"$(item_additional_armor)","color":"#FF3F3F","bold":true}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"Applies when a player is killed by an","color":"#FFFFFF"}],[{"text":"opponent, except if definitive death.","color":"#FFFFFF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_item_armor"}]
$execute if score @s[tag=uhc.host] uhc.menu.settings.inventory matches 07 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.22 with minecraft:diamond_chestplate[minecraft:item_name=[{"text":"Duplicated armor at the death of a player: ","color":"#FFE73F","italic":false},{"text":"$(item_additional_armor)","color":"#FF3F3F","bold":true}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"Applies when a player is killed by an","color":"#FFFFFF"}],[{"text":"opponent, except if definitive death.","color":"#FFFFFF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_inventory_item_armor"}]
