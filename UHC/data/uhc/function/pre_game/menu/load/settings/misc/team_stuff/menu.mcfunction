
#> uhc:pre_game/menu/load/settings/misc/team_stuff/menu
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

item replace entity @s[scores={uhc.menu.settings.misc=1..10,uhc.player.lang=061801}] inventory.12 with minecraft:compass[minecraft:item_name=[{"text":"Interactions d'équipe","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_team_stuff"}]
item replace entity @s[scores={uhc.menu.settings.misc=11..,uhc.player.lang=061801}] inventory.3 with minecraft:compass[minecraft:item_name=[{"text":"Interactions d'équipe","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_team_stuff"}]

item replace entity @s[scores={uhc.menu.settings.misc=1..10,uhc.player.lang=051407}] inventory.12 with minecraft:compass[minecraft:item_name=[{"text":"Team interactions","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_team_stuff"}]
item replace entity @s[scores={uhc.menu.settings.misc=11..,uhc.player.lang=051407}] inventory.3 with minecraft:compass[minecraft:item_name=[{"text":"Team interactions","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_team_stuff"}]

execute if score @s uhc.menu.settings.misc matches 11..20 run function uhc:pre_game/menu/load/settings/misc/team_stuff/friendly_fire
execute if score @s uhc.menu.settings.misc matches 11..20 run function uhc:pre_game/menu/load/settings/misc/team_stuff/tracker_allies
