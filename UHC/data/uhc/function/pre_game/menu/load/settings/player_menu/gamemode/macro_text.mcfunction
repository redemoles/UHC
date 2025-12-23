
#> uhc:pre_game/menu/load/settings/player_menu/gamemode/macro_text
#
# @within			uhc:pre_game/menu/selection/main/player/team_menu/x
#
#
# @description		Menu Settings pour les joueurs
#

$execute if score #vanilla uhc.gamemode matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:command_block[minecraft:item_name=[{"text":"Mode de jeu","color":"#FF3F3F","italic":false}],minecraft:lore=[[$(gamemode)],[{"text":"Clique pour plus d'informations sur le mode de jeu","color":"#E7E7E7","italic":true}]],minecraft:custom_data={Tags:"gamemode_list"}]
$execute if score #vanilla uhc.gamemode matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:command_block[minecraft:item_name=[{"text":"Game mode","color":"#FF3F3F","italic":false}],minecraft:lore=[[$(gamemode)],[{"text":"Click for more informations about the gamemode","color":"#E7E7E7","italic":true}]],minecraft:custom_data={Tags:"gamemode_list"}]

$execute if score #vanilla uhc.gamemode matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:command_block[minecraft:item_name=[{"text":"Mode de jeu","color":"#FF3F3F","italic":false}],minecraft:lore=[[$(gamemode)]],minecraft:custom_data={Tags:"gamemode_list"}]
$execute if score #vanilla uhc.gamemode matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:command_block[minecraft:item_name=[{"text":"Game mode","color":"#FF3F3F","italic":false}],minecraft:lore=[[$(gamemode)]],minecraft:custom_data={Tags:"gamemode_list"}]
