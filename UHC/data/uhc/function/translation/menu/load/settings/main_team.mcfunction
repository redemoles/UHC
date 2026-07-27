
#> uhc:translation/menu/load/settings/main_team
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:white_banner[minecraft:item_name=[{"text":"Paramètres d'équipe","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Réglage d'avant partie uniquement.","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"settings_team"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.1 with minecraft:white_banner[minecraft:item_name=[{"text":"Team settings","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Pre-game settings only.","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"settings_team"}]
