
#> uhc:pre_game/menu/load/settings/player_menu/scenario/macro_text
#
# @within			uhc:pre_game/menu/selection/main/player/team/x
#
#
# @description		Menu Settings pour les joueurs
#

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.20 with minecraft:repeating_command_block[minecraft:item_name=[{"text":"Scénarios","color":"#FFE73F","italic":false}],minecraft:lore=[[{"text":"Clique pour voir la liste des scénarios","color":"#E7E7E7","italic":true}]],minecraft:custom_data={Tags:"scenario_list"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.20 with minecraft:repeating_command_block[minecraft:item_name=[{"text":"Scenarios","color":"#FFE73F","italic":false}],minecraft:lore=[[{"text":"Click to see the list of scenarios","color":"#E7E7E7","italic":true}]],minecraft:custom_data={Tags:"scenario_list"}]
