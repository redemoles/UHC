
#> uhc:pre_game/menu/load/main/player/team_menu/random/team/91
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute unless score @s uhc.id.team matches 91 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:white_banner[banner_patterns=[{pattern:"minecraft:gradient",color:"yellow"},{pattern:"minecraft:gradient_up",color:"yellow"}],minecraft:item_name=[{"text":"Joueurs","color":"#FFDF00","italic":false}],minecraft:custom_data={Tags:"team_91"},minecraft:tooltip_display={hidden_components:["banner_patterns"]}]
execute if score @s uhc.id.team matches 91 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:white_banner[banner_patterns=[{pattern:"minecraft:gradient",color:"yellow"},{pattern:"minecraft:gradient_up",color:"yellow"},{pattern:"minecraft:circle",color:"white"}],minecraft:item_name=[{"text":"Joueurs","color":"#FFDF00","italic":false}],minecraft:custom_data={Tags:"team_91"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]],minecraft:tooltip_display={hidden_components:["banner_patterns"]},minecraft:enchantment_glint_override=true]

execute unless score @s uhc.id.team matches 91 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:white_banner[banner_patterns=[{pattern:"minecraft:gradient",color:"yellow"},{pattern:"minecraft:gradient_up",color:"yellow"}],minecraft:item_name=[{"text":"Players","color":"#FFDF00","italic":false}],minecraft:custom_data={Tags:"team_91"},minecraft:tooltip_display={hidden_components:["banner_patterns"]}]
execute if score @s uhc.id.team matches 91 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:white_banner[banner_patterns=[{pattern:"minecraft:gradient",color:"yellow"},{pattern:"minecraft:gradient_up",color:"yellow"},{pattern:"minecraft:circle",color:"white"}],minecraft:item_name=[{"text":"Players","color":"#FFDF00","italic":false}],minecraft:custom_data={Tags:"team_91"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]],minecraft:tooltip_display={hidden_components:["banner_patterns"]},minecraft:enchantment_glint_override=true]
