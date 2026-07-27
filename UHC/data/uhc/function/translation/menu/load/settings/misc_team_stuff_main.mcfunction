
#> uhc:translation/menu/load/settings/misc_team_stuff_main
#
# @within			uhc:pre_game/menu/load/settings/misc/team_stuff
#
#
# @description		Menu
#

## FRA - Français / French
execute if score @s uhc.menu.settings.misc matches 01..10 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:compass[minecraft:item_name=[{"text":"Interactions d'équipe","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_team_stuff"}]
execute if score @s uhc.menu.settings.misc matches 11.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.3 with minecraft:compass[minecraft:item_name=[{"text":"Interactions d'équipe","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_team_stuff"}]

## ENG - English
execute if score @s uhc.menu.settings.misc matches 01..10 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:compass[minecraft:item_name=[{"text":"Team interactions","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_team_stuff"}]
execute if score @s uhc.menu.settings.misc matches 11.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.3 with minecraft:compass[minecraft:item_name=[{"text":"Team interactions","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_team_stuff"}]
