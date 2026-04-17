
#> uhc:pre_game/menu/load/settings/misc/menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

# Rivières solides
execute if score @s uhc.menu.settings.misc matches 1.. run function uhc:pre_game/menu/load/settings/misc/river_solid

# Affichage des points de vie
execute if score @s uhc.menu.settings.misc matches 1.. run function uhc:pre_game/menu/load/settings/misc/health_display/menu

# Interaction d'équipe
execute if score @s uhc.menu.settings.misc matches 1.. run function uhc:pre_game/menu/load/settings/misc/team_stuff/menu

# Démarrage dans le ciel
execute if score @s uhc.menu.settings.misc matches 1.. run function uhc:pre_game/menu/load/settings/misc/start_in_the_sky

# Retour en arrière
execute if score @s[tag=uhc.host] uhc.menu.settings.misc matches 11.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:music_disc_lava_chicken[minecraft:item_name=[{"text":"Divers","color":"#3FE7FF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:jukebox_playable"]},minecraft:custom_data={Tags:"settings_misc"}]
execute if score @s[tag=uhc.host] uhc.menu.settings.misc matches 11.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:music_disc_lava_chicken[minecraft:item_name=[{"text":"Miscellaneous","color":"#3FE7FF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:jukebox_playable"]},minecraft:custom_data={Tags:"settings_misc"}]

execute if score @s[tag=!uhc.host] uhc.menu.settings.misc matches 11.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.24 with minecraft:music_disc_lava_chicken[minecraft:item_name=[{"text":"Divers","color":"#3FE7FF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:jukebox_playable"]},minecraft:custom_data={Tags:"settings_misc"}]
execute if score @s[tag=!uhc.host] uhc.menu.settings.misc matches 11.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.24 with minecraft:music_disc_lava_chicken[minecraft:item_name=[{"text":"Miscellaneous","color":"#3FE7FF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:jukebox_playable"]},minecraft:custom_data={Tags:"settings_misc"}]
