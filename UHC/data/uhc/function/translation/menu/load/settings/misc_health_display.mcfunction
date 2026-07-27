
#> uhc:translation/menu/load/settings/misc_health_display
#
# @within			uhc:pre_game/menu/load/settings/misc/menu
#
#
# @description		Menu
#

## FRA - Français / French
execute if score @s uhc.menu.settings.misc matches 01..10 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:book[minecraft:item_name=[{"text":"Affichage des points de vie","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_health_display"}]
execute if score @s uhc.menu.settings.misc matches 11.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.2 with minecraft:book[minecraft:item_name=[{"text":"Affichage des points de vie","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_health_display"}]

## ENG - English
execute if score @s uhc.menu.settings.misc matches 01..10 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:book[minecraft:item_name=[{"text":"Health Points display","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_health_display"}]
execute if score @s uhc.menu.settings.misc matches 11.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:book[minecraft:item_name=[{"text":"Health Points display","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_health_display"}]
