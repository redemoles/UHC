
#> uhc:translation/menu/load/gamemode/bhc_main
#
# @within			uhc:pre_game/menu/load/gamemode/bhc/main
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:bookshelf[minecraft:item_name=[{"text":"Liste des scénarios","color":"#F3F3F3","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.2 with minecraft:command_block[minecraft:item_name=[{"text":"Paramètres","color":"#F3F3F3","italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.7 with minecraft:crafter[minecraft:item_name=[{"text":"Vérifier les grilles de bingo","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Attention : Les joueurs pourront également les voir.","color":"#CFCFCF"}]],minecraft:custom_data={Tags:"bhc_display_grid"}]
execute if score #bhc uhc.gamemode matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:red_glazed_terracotta[minecraft:item_name=[{"text":"Bingo UHC : ","color":"#FFFFFF","italic":false},{"text":"Désactivé","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"disable"}]
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Bingo UHC : ","color":"#FFFFFF","italic":false},{"text":"Activé","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"disable"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.1 with minecraft:bookshelf[minecraft:item_name=[{"text":"Scenarios list","color":"#F3F3F3","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:command_block[minecraft:item_name=[{"text":"Settings","color":"#F3F3F3","italic":false}],minecraft:custom_data={Tags:"bhc_settings"}]
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.7 with minecraft:crafter[minecraft:item_name=[{"text":"Check the bingo grids","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Note: Players will also be able to see them.","color":"#CFCFCF"}]],minecraft:custom_data={Tags:"bhc_display_grid"}]
execute if score #bhc uhc.gamemode matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:red_glazed_terracotta[minecraft:item_name=[{"text":"Bingo UHC: ","color":"#FFFFFF","italic":false},{"text":"Disabled","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"disable"}]
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Bingo UHC: ","color":"#FFFFFF","italic":false},{"text":"Enabled","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"disable"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Cancel","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
