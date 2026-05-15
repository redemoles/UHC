
#> uhc:pre_game/menu/load/gamemode/bhc/scenario_page/1
#
# @within			uhc:pre_game/menu/load/gamemode/bhc/scenario_page/main
#
#
# @description		Menu
#

execute unless score #bhc bhc.scenario matches 01 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:yellow_stained_glass[minecraft:item_name=[{"text":"BHC I - Ruée Vers l'Or","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]
execute unless score #bhc bhc.scenario matches 02 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:brown_stained_glass[minecraft:item_name=[{"text":"BHC II - Ère Viking","color":"#CF6F3F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]

execute if score #bhc bhc.scenario matches 01 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:yellow_concrete[minecraft:item_name=[{"text":"BHC I - Ruée Vers l'Or","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]]]
execute if score #bhc bhc.scenario matches 02 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:brown_concrete[minecraft:item_name=[{"text":"BHC II - Ère Viking","color":"#CF6F3F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]]]

execute unless score #bhc bhc.scenario matches 01 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:yellow_stained_glass[minecraft:item_name=[{"text":"BHC I - Gold Rush","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]
execute unless score #bhc bhc.scenario matches 02 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:brown_stained_glass[minecraft:item_name=[{"text":"BHC II - Viking Era","color":"#CF6F3F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]

execute if score #bhc bhc.scenario matches 01 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:yellow_concrete[minecraft:item_name=[{"text":"BHC I - Gold Rush","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]]]
execute if score #bhc bhc.scenario matches 02 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:brown_concrete[minecraft:item_name=[{"text":"BHC II - Viking Era","color":"#CF6F3F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]]]
