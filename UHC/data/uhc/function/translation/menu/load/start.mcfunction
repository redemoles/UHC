
#> uhc:translation/menu/load/start
#
# @within			uhc:pre_game/menu/load/main/start/menu
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:nether_star[minecraft:item_name=[{"text":"Démarrage","color":"#FFE73F","italic":false,"bold":true}],minecraft:custom_data={Tags:"start"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.14 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:nether_star[minecraft:item_name=[{"text":"Start","color":"#FFE73F","italic":false,"bold":true}],minecraft:custom_data={Tags:"start"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.14 with minecraft:barrier[minecraft:item_name=[{"text":"Close","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
