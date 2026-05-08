
#> uhc:pre_game/menu/load/settings/misc/health_display/menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

item replace entity @s[scores={uhc.menu.settings.misc=1..10,uhc.player.lang=061801}] inventory.11 with minecraft:book[minecraft:item_name=[{"text":"Affichage des points de vie","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_health_display"}]
item replace entity @s[scores={uhc.menu.settings.misc=11..,uhc.player.lang=061801}] inventory.2 with minecraft:book[minecraft:item_name=[{"text":"Affichage des points de vie","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_health_display"}]

item replace entity @s[scores={uhc.menu.settings.misc=1..10,uhc.player.lang=051407}] inventory.11 with minecraft:book[minecraft:item_name=[{"text":"Health Points display","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_health_display"}]
item replace entity @s[scores={uhc.menu.settings.misc=11..,uhc.player.lang=051407}] inventory.2 with minecraft:book[minecraft:item_name=[{"text":"Health Points display","color":"#3FE73F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_misc_health_display"}]

execute if score @s uhc.menu.settings.misc matches 21..30 run function uhc:pre_game/menu/load/settings/misc/health_display/hp_tab
execute if score @s uhc.menu.settings.misc matches 21..30 run function uhc:pre_game/menu/load/settings/misc/health_display/hp_name
execute if score @s uhc.menu.settings.misc matches 21..30 run function uhc:pre_game/menu/load/settings/misc/health_display/hp_chat
