
#> uhc:translation/menu/load/gamemode/bhc_scenario_main
#
# @within			uhc:pre_game/menu/load/gamemode/bhc/scenario_page
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.21 with minecraft:filled_map[minecraft:item_name=[{"text":"Scénarios principaux","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["map_id"]},minecraft:custom_data={Tags:"menu_bhc"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.22 with minecraft:filled_map[minecraft:item_name=[{"text":"Scénarios des 1er avril","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["map_id"]},minecraft:custom_data={Tags:"menu_bhc"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.23 with minecraft:filled_map[minecraft:item_name=[{"text":"Autres scénarios","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["map_id"]},minecraft:custom_data={Tags:"menu_bhc"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.21 with minecraft:filled_map[minecraft:item_name=[{"text":"Main scenarios","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["map_id"]},minecraft:custom_data={Tags:"menu_bhc"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.22 with minecraft:filled_map[minecraft:item_name=[{"text":"April Fools' Day scenarios","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["map_id"]},minecraft:custom_data={Tags:"menu_bhc"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.23 with minecraft:filled_map[minecraft:item_name=[{"text":"Others scenarios","color":"#FFFFFF","italic":false}],minecraft:tooltip_display={"hidden_components":["map_id"]},minecraft:custom_data={Tags:"menu_bhc"}]
