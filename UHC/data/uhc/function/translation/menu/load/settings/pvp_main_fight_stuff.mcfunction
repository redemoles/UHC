
#> uhc:translation/menu/load/settings/pvp_main_fight_stuff
#
# @within			uhc:pre_game/menu/load/settings/pvp/menu
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.pvp matches 01..10 run item replace entity @s inventory.11 with minecraft:shield[minecraft:item_name=[{"text":"Équipements de combat","color":"#FFB73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}]
execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.pvp matches 11.. run item replace entity @s inventory.2 with minecraft:shield[minecraft:item_name=[{"text":"Équipements de combat","color":"#FFB73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.pvp matches 01..10 run item replace entity @s inventory.11 with minecraft:shield[minecraft:item_name=[{"text":"Combat equipments","color":"#FFB73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}]
execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.pvp matches 11.. run item replace entity @s inventory.2 with minecraft:shield[minecraft:item_name=[{"text":"Combat equipments","color":"#FFB73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}]
