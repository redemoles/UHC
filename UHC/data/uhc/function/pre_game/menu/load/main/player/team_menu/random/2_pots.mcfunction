
#> uhc:pre_game/menu/load/main/player/team_menu/random/2_pots
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

function uhc:pre_game/menu/load/background/

function uhc:pre_game/menu/load/main/player/team_menu/random/spec

execute unless score @s uhc.id.team matches 92 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:white_banner[banner_patterns=[{"pattern":"minecraft:gradient",color:"blue"},{"pattern":"minecraft:gradient_up",color:"blue"}],minecraft:item_name=[{"text":"Groupe A","color":"#3F57FF","italic":false}],minecraft:custom_data={Tags:"team_92"},minecraft:tooltip_display={"hidden_components":["minecraft:banner_patterns"]}]
execute if score @s uhc.id.team matches 92 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:white_banner[banner_patterns=[{"pattern":"minecraft:gradient",color:"blue"},{"pattern":"minecraft:gradient_up",color:"blue"},{"pattern":"minecraft:circle",color:"white"}],minecraft:item_name=[{"text":"Groupe A","color":"#3F57FF","italic":false}],minecraft:custom_data={Tags:"team_92"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:banner_patterns"]},minecraft:enchantment_glint_override=true]

execute unless score @s uhc.id.team matches 92 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:white_banner[banner_patterns=[{"pattern":"minecraft:gradient",color:"blue"},{"pattern":"minecraft:gradient_up",color:"blue"}],minecraft:item_name=[{"text":"Group A","color":"#3F57FF","italic":false}],minecraft:custom_data={Tags:"team_92"},minecraft:tooltip_display={"hidden_components":["minecraft:banner_patterns"]}]
execute if score @s uhc.id.team matches 92 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:white_banner[banner_patterns=[{"pattern":"minecraft:gradient",color:"blue"},{"pattern":"minecraft:gradient_up",color:"blue"},{"pattern":"minecraft:circle",color:"white"}],minecraft:item_name=[{"text":"Group A","color":"#3F57FF","italic":false}],minecraft:custom_data={Tags:"team_92"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:banner_patterns"]},minecraft:enchantment_glint_override=true]

execute unless score @s uhc.id.team matches 192 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.14 with minecraft:white_banner[banner_patterns=[{"pattern":"minecraft:gradient",color:"red"},{"pattern":"minecraft:gradient_up",color:"red"}],minecraft:item_name=[{"text":"Groupe B","color":"#FF573F","italic":false}],minecraft:custom_data={Tags:"team_192"},minecraft:tooltip_display={"hidden_components":["minecraft:banner_patterns"]}]
execute if score @s uhc.id.team matches 192 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.14 with minecraft:white_banner[banner_patterns=[{"pattern":"minecraft:gradient",color:"red"},{"pattern":"minecraft:gradient_up",color:"red"},{"pattern":"minecraft:circle",color:"white"}],minecraft:item_name=[{"text":"Groupe B","color":"#FF573F","italic":false}],minecraft:custom_data={Tags:"team_192"},minecraft:lore=[[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:banner_patterns"]},minecraft:enchantment_glint_override=true]

execute unless score @s uhc.id.team matches 192 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.14 with minecraft:white_banner[banner_patterns=[{"pattern":"minecraft:gradient",color:"red"},{"pattern":"minecraft:gradient_up",color:"red"}],minecraft:item_name=[{"text":"Group B","color":"#FF573F","italic":false}],minecraft:custom_data={Tags:"team_192"},minecraft:tooltip_display={"hidden_components":["minecraft:banner_patterns"]}]
execute if score @s uhc.id.team matches 192 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.14 with minecraft:white_banner[banner_patterns=[{"pattern":"minecraft:gradient",color:"red"},{"pattern":"minecraft:gradient_up",color:"red"},{"pattern":"minecraft:circle",color:"white"}],minecraft:item_name=[{"text":"Group B","color":"#FF573F","italic":false}],minecraft:custom_data={Tags:"team_192"},minecraft:lore=[[{"text":"Selected","color":"#3FE7FF","italic":false}]],minecraft:tooltip_display={"hidden_components":["minecraft:banner_patterns"]},minecraft:enchantment_glint_override=true]
