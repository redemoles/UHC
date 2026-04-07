
#> uhc:pre_game/menu/load/scenario/restricted_area/main
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Menu Scénarios à zone restreinte
#

clear @s
execute if score #sky_high uhc.scenario matches 1 unless score @s uhc.menu.scenario.restricted_area matches 1.. run scoreboard players set @s uhc.menu.scenario.restricted_area 2
execute if score #go_to_hell uhc.scenario matches 1 unless score @s uhc.menu.scenario.restricted_area matches 1.. run scoreboard players set @s uhc.menu.scenario.restricted_area 2
execute unless score @s uhc.menu.scenario.restricted_area matches 1.. run scoreboard players set @s uhc.menu.scenario.restricted_area 1






function uhc:pre_game/menu/load/background/

function uhc:pre_game/menu/load/scenario/restricted_area/go_to_hell with storage uhc:scenario go_to_hell
function uhc:pre_game/menu/load/scenario/restricted_area/sky_high with storage uhc:scenario sky_high

execute if score @s uhc.menu.scenario.restricted_area matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:red_glazed_terracotta[minecraft:item_name=[{"text":"Scénarios à zone restreinte : ","color":"#FFFFFF","italic":false},{"text":"Désactivé","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"scenario_restricted_area_disable"}]
execute if score @s uhc.menu.scenario.restricted_area matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:red_glazed_terracotta[minecraft:item_name=[{"text":"Restricted area scenarios: ","color":"#FFFFFF","italic":false},{"text":"Disabled","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"scenario_restricted_area_disable"}]
execute if score @s uhc.menu.scenario.restricted_area matches 2.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:light_blue_stained_glass[minecraft:item_name=[{"text":"Scénarios à zone restreinte : ","color":"#FFFFFF","italic":false},{"text":"Activé","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"scenario_restricted_area_disable"}]
execute if score @s uhc.menu.scenario.restricted_area matches 2.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:light_blue_stained_glass[minecraft:item_name=[{"text":"Restricted area scenarios: ","color":"#FFFFFF","italic":false},{"text":"Enabled","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"scenario_restricted_area_disable"}]

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Close","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
