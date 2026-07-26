
#> uhc:translation/menu/load/scenario/restricted_area
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Menu Scénario à zone restreinte
#

## FRA - Français / French
execute if score @s uhc.menu.scenario.restricted_area matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:red_glazed_terracotta[minecraft:item_name=[{"text":"Scénario à zone restreinte : ","color":"#FFFFFF","italic":false},{"text":"Désactivé","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"scenario_restricted_area_disable"}]
execute if score @s uhc.menu.scenario.restricted_area matches 2.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:light_blue_stained_glass[minecraft:item_name=[{"text":"Scénario à zone restreinte : ","color":"#FFFFFF","italic":false},{"text":"Activé","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"scenario_restricted_area_disable"}]

## ENG - English
execute if score @s uhc.menu.scenario.restricted_area matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:red_glazed_terracotta[minecraft:item_name=[{"text":"Restricted area scenario: ","color":"#FFFFFF","italic":false},{"text":"Disabled","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"scenario_restricted_area_disable"}]
execute if score @s uhc.menu.scenario.restricted_area matches 2.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:light_blue_stained_glass[minecraft:item_name=[{"text":"Restricted area scenario: ","color":"#FFFFFF","italic":false},{"text":"Enabled","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"scenario_restricted_area_disable"}]
