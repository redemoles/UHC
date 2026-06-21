
#> uhc:translation/menu/load/team/page/spec
#
# @within			uhc:in_game/player/spec/revive/new_player/menu/load/team
#
#
#
#

## FRA - Français / French
execute if score @s[tag=!uhc.spec] uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectateurs","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"}]
execute if score @s[tag=uhc.spec,tag=!uhc.revive.temp] uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectateurs","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]],minecraft:enchantment_glint_override=true]
execute if score @s[tag=uhc.spec,tag=uhc.revive.temp] uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectateurs","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"},minecraft:enchantment_glint_override=true]

## ENG - English
execute if score @s[tag=!uhc.spec] uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectators","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"}]
execute if score @s[tag=uhc.spec,tag=!uhc.revive.temp] uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectators","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]],minecraft:enchantment_glint_override=true]
execute if score @s[tag=uhc.spec,tag=uhc.revive.temp] uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectators","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"},minecraft:enchantment_glint_override=true]
