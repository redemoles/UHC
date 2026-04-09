
#> uhc:pre_game/menu/load/settings/pvp/team_stuff/tracker_allies/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #tracker_allies uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=21..30,uhc.player.lang=061801}] inventory.11 with minecraft:red_concrete[minecraft:item_name=[{"text":"Traqueur d'équipe","color":"#FF3F3F","italic":false}],minecraft:lore=[{"text":"Tenir une boussole en main permet de traquer ses alliés.","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_pvp_tracker_allies"}]
execute if score #tracker_allies uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=21..30,uhc.player.lang=061801}] inventory.11 with minecraft:compass[minecraft:item_name=[{"text":"Traqueur d'équipe","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Tenir une boussole en main permet de traquer ses alliés.","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_pvp_tracker_allies"}]

execute if score #tracker_allies uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=21..30,uhc.player.lang=051407}] inventory.11 with minecraft:red_concrete[minecraft:item_name=[{"text":"Team tracker","color":"#FF3F3F","italic":false}],minecraft:lore=[{"text":"Holding a compass in your hand allows you to track your allies.","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_pvp_tracker_allies"}]
execute if score #tracker_allies uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=21..30,uhc.player.lang=051407}] inventory.11 with minecraft:compass[minecraft:item_name=[{"text":"Team tracker","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Holding a compass in your hand allows you to track your allies.","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_pvp_tracker_allies"}]
