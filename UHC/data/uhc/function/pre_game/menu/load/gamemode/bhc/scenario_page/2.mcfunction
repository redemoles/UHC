
#> uhc:pre_game/menu/load/gamemode/bhc/scenario_page/2
#
# @within			uhc:pre_game/menu/load/gamemode/bhc/scenario_page/main
#
#
# @description		Menu
#

execute unless score #bhc bhc.scenario matches 51 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:magenta_stained_glass[minecraft:item_name=[{"text":"BHC - 1er avril 2026","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]

execute if score #bhc bhc.scenario matches 51 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:magenta_glazed_terracotta[minecraft:item_name=[{"text":"BHC - 1er avril 2026","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]]]

execute unless score #bhc bhc.scenario matches 51 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:magenta_stained_glass[minecraft:item_name=[{"text":"BHC - April fool 2026","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]

execute if score #bhc bhc.scenario matches 51 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:magenta_glazed_terracotta[minecraft:item_name=[{"text":"BHC - April fool 2026","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]]]
