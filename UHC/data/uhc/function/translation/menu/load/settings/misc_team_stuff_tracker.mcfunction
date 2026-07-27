
#> uhc:translation/menu/load/settings/misc_team_stuff_tracker
#
# @within			uhc:pre_game/menu/load/settings/misc/team_stuff
#
#
# @description		Menu
#

## FRA - Français / French
execute if score #tracker_allies uhc.data.setup matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Traqueur d'équipe","color":"#FF3F3F","italic":false}],minecraft:lore=[{"text":"Tenir une boussole en main permet de traquer ses alliés.","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_tracker_allies"}]
execute if score #tracker_allies uhc.data.setup matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:compass[minecraft:item_name=[{"text":"Traqueur d'équipe","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Tenir une boussole en main permet de traquer ses alliés.","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_tracker_allies"}]

## ENG - English
execute if score #tracker_allies uhc.data.setup matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Team tracker","color":"#FF3F3F","italic":false}],minecraft:lore=[{"text":"Holding a compass in your hand allows you to track your allies.","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_tracker_allies"}]
execute if score #tracker_allies uhc.data.setup matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:compass[minecraft:item_name=[{"text":"Team tracker","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Holding a compass in your hand allows you to track your allies.","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_tracker_allies"}]
