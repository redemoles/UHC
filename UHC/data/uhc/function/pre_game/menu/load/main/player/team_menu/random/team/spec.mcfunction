
#> uhc:pre_game/menu/load/main/player/team_menu/random/team/spec
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if entity @s[tag=!uhc.spec,scores={uhc.player.lang=061801}] run item replace entity @s inventory.14 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectateurs","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"}]
execute if entity @s[tag=uhc.spec,scores={uhc.player.lang=061801}] run item replace entity @s inventory.14 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectateurs","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]],minecraft:enchantment_glint_override=true]

execute if entity @s[tag=!uhc.spec,scores={uhc.player.lang=051407}] run item replace entity @s inventory.14 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectators","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"}]
execute if entity @s[tag=uhc.spec,scores={uhc.player.lang=051407}] run item replace entity @s inventory.14 with minecraft:wither_skeleton_skull[minecraft:item_name=[{"text":"Spectators","color":"#BFBFBF","italic":false}],minecraft:custom_data={Tags:"spectator"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]],minecraft:enchantment_glint_override=true]
