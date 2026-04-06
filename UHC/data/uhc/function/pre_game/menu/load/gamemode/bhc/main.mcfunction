
#> uhc:pre_game/menu/load/gamemode/bhc/main
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

clear @s
tag @s remove uhc.menu.main.host
tag @s remove uhc.menu.gamemode
execute unless score @s uhc.menu.gamemode.bhc matches 1.. run scoreboard players set @s uhc.menu.gamemode.bhc 1






function uhc:pre_game/menu/load/background/

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:book[minecraft:item_name=[{"text":"Liste des scénarios","color":"#F3F3F3","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.1 with minecraft:book[minecraft:item_name=[{"text":"Scenarios list","color":"#F3F3F3","italic":false}],minecraft:custom_data={Tags:"bhc_scenario"}]

execute if score @s uhc.menu.gamemode.bhc matches 1 run function uhc:pre_game/menu/load/gamemode/bhc/scenario

execute if score #bhc uhc.gamemode matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.7 with minecraft:crafter[minecraft:item_name=[{"text":"Vérifier les grilles de bingo","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Attention : Les joueurs pourront également les voir.","color":"#CFCFCF"}]],minecraft:custom_data={Tags:"bhc_display_grid"}]
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.7 with minecraft:crafter[minecraft:item_name=[{"text":"Check the bingo grids","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Note: Players will also be able to see them.","color":"#CFCFCF"}]],minecraft:custom_data={Tags:"bhc_display_grid"}]

execute if score #bhc uhc.gamemode matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:red_glazed_terracotta[minecraft:item_name=[{"text":"Bingo UHC : ","color":"#FFFFFF","italic":false},{"text":"Désactivé","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"disable"}]
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Bingo UHC : ","color":"#FFFFFF","italic":false},{"text":"Activé","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"disable"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]

execute if score #bhc uhc.gamemode matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:red_glazed_terracotta[minecraft:item_name=[{"text":"Bingo UHC: ","color":"#FFFFFF","italic":false},{"text":"Disabled","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"disable"}]
execute if score #bhc uhc.gamemode matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Bingo UHC: ","color":"#FFFFFF","italic":false},{"text":"Enabled","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"disable"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Cancel","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
