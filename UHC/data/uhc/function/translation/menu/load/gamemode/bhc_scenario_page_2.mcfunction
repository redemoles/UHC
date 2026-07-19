
#> uhc:translation/menu/load/gamemode/bhc_scenario_page_2
#
# @within			uhc:pre_game/menu/load/gamemode/bhc/scenario_page
#
#
#
#

## FRA - Français / French
execute unless score #bhc bhc.scenario matches 51 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:magenta_stained_glass[minecraft:item_name=[{"text":"1er avril 2026","color":"#E7E7E7","italic":false}],minecraft:lore=[[{"text":"Premier Bingo ","color":"#B73FFF","italic":false},{"text":">","color":"#CFCFCF","bold":true},{"text":" ¿","color":"#FFFFFF"}],[{"text":"Second Bingo ","color":"#87FF3F","italic":false},{"text":">","color":"#CFCFCF","bold":true},{"text":" ?","color":"#FFFFFF"}]],minecraft:custom_data={Tags:"bhc_scenario"}]

execute if score #bhc bhc.scenario matches 51 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:magenta_glazed_terracotta[minecraft:item_name=[{"text":"1er avril 2026","color":"#E7E7E7","italic":false},{"text":" - ","color":"#FFFFFF"},{"text":"Sélectionné","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Premier Bingo ","color":"#B73FFF","italic":false},{"text":">","color":"#CFCFCF","bold":true},{"text":" ¿","color":"#FFFFFF"}],[{"text":"Second Bingo ","color":"#87FF3F","italic":false},{"text":">","color":"#CFCFCF","bold":true},{"text":" ?","color":"#FFFFFF"}]],minecraft:custom_data={Tags:"bhc_scenario"}]

## ENG - English
execute unless score #bhc bhc.scenario matches 51 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:magenta_stained_glass[minecraft:item_name=[{"text":"April Fool's Day 2026","color":"#E7E7E7","italic":false}],minecraft:lore=[[{"text":"First Bingo ","color":"#B73FFF","italic":false},{"text":">","color":"#CFCFCF","bold":true},{"text":" ¿","color":"#FFFFFF"}],[{"text":"Second Bingo ","color":"#87FF3F","italic":false},{"text":">","color":"#CFCFCF","bold":true},{"text":" ?","color":"#FFFFFF"}]],minecraft:custom_data={Tags:"bhc_scenario"}]

execute if score #bhc bhc.scenario matches 51 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:magenta_glazed_terracotta[minecraft:item_name=[{"text":"April Fool's Day 2026","color":"#E7E7E7","italic":false},{"text":" - ","color":"#FFFFFF"},{"text":"Selected","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"First Bingo ","color":"#B73FFF","italic":false},{"text":">","color":"#CFCFCF","bold":true},{"text":" ¿","color":"#FFFFFF"}],[{"text":"Second Bingo ","color":"#87FF3F","italic":false},{"text":">","color":"#CFCFCF","bold":true},{"text":" ?","color":"#FFFFFF"}]],minecraft:custom_data={Tags:"bhc_scenario"}]
