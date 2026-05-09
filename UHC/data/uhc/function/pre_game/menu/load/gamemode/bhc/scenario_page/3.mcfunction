
#> uhc:pre_game/menu/load/gamemode/bhc/scenario_page/3
#
# @within			uhc:pre_game/menu/load/gamemode/bhc/main
#
#
# @description		Menu
#

execute unless score #bhc bhc.scenario matches 00 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:lime_stained_glass[minecraft:item_name=[{"text":"BHC Classique","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]
execute unless score #bhc bhc.scenario matches 99 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:light_blue_stained_glass[minecraft:item_name=[{"text":"BHC Run","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]
execute unless score #bhc bhc.scenario matches 91 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.15 with minecraft:white_stained_glass[minecraft:item_name=[{"text":"BHC - Chill Mode (1 grille)","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]
execute unless score #bhc bhc.scenario matches 92 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.16 with minecraft:white_stained_glass[minecraft:item_name=[{"text":"BHC - Chill Mode (2 grilles + Score Survie)","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]

execute if score #bhc bhc.scenario matches 00 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:grass_block[minecraft:item_name=[{"text":"BHC Classique","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]]]
execute if score #bhc bhc.scenario matches 99 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:diamond[minecraft:item_name=[{"text":"BHC Run","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]]]
execute if score #bhc bhc.scenario matches 91 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.15 with minecraft:white_concrete[minecraft:item_name=[{"text":"BHC - Chill Mode (1 grille)","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]]]
execute if score #bhc bhc.scenario matches 92 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.16 with minecraft:white_concrete[minecraft:item_name=[{"text":"BHC - Chill Mode (2 grilles + Score Survie)","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]]]

execute unless score #bhc bhc.scenario matches 00 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:lime_stained_glass[minecraft:item_name=[{"text":"BHC Classic","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]
execute unless score #bhc bhc.scenario matches 99 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:light_blue_stained_glass[minecraft:item_name=[{"text":"BHC Run","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]
execute unless score #bhc bhc.scenario matches 91 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.15 with minecraft:white_stained_glass[minecraft:item_name=[{"text":"BHC - Chill Mode (1 grid)","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]
execute unless score #bhc bhc.scenario matches 92 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.16 with minecraft:white_stained_glass[minecraft:item_name=[{"text":"BHC - Chill Mode (2 grids + Survival score)","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]

execute if score #bhc bhc.scenario matches 00 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:grass_block[minecraft:item_name=[{"text":"BHC Classic","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]]]
execute if score #bhc bhc.scenario matches 99 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:diamond[minecraft:item_name=[{"text":"BHC Run","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]]]
execute if score #bhc bhc.scenario matches 91 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.15 with minecraft:white_concrete[minecraft:item_name=[{"text":"BHC - Chill Mode (1 grid)","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]]]
execute if score #bhc bhc.scenario matches 92 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.16 with minecraft:white_concrete[minecraft:item_name=[{"text":"BHC - Chill Mode (2 grids + Survival score)","color":"#E7E7E7","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]]]
