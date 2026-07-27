
#> uhc:translation/menu/load/world_generation
#
# @within			uhc:pre_game/menu/load/world_generation/disable
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.7 with minecraft:barrier[minecraft:item_name=[{"text":"Annuler","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"cancel"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.7 with minecraft:barrier[minecraft:item_name=[{"text":"Cancel","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"cancel"}]
