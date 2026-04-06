
#> uhc:pre_game/menu/load/tp/main
#
# @within			uhc:pre_game/menu/selection/main/host/main
#
#
# @description		Menu
#

clear @s
scoreboard players set @s uhc.menu.main.player 0
tag @s add uhc.menu.tp







function uhc:pre_game/menu/load/background/

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:ender_pearl[minecraft:item_name=[{"text":"Retour au centre","color":"#3F9FCF","italic":false}],minecraft:custom_data={Tags:"tp_center"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.1 with minecraft:ender_pearl[minecraft:item_name=[{"text":"Return to center","color":"#3F9FCF","italic":false}],minecraft:custom_data={Tags:"tp_center"}]

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.2 with minecraft:feather[minecraft:item_name=[{"text":"Jump","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"tp_jump"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:feather[minecraft:item_name=[{"text":"Jump","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"tp_jump"}]

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Close","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
