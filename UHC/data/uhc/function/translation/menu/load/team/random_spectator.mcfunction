
#> uhc:translation/menu/load/team/random_spectator
#
# @within			uhc:pre_game/menu/load/main/player/team/random/*
#
#
#
#

## FRA - Français / French
execute if score @s[tag=!uhc.spec] uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectateurs","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"}]
execute if score @s[tag=uhc.spec] uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectateurs","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]],minecraft:enchantment_glint_override=true]

## ENG - English
execute if score @s[tag=!uhc.spec] uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectators","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"}]
execute if score @s[tag=uhc.spec] uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectators","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]],minecraft:enchantment_glint_override=true]
