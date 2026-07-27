
#> uhc:translation/menu/load/settings/main_misc
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.7 with minecraft:music_disc_lava_chicken[minecraft:item_name=[{"text":"Divers","color":"#3FE7FF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:jukebox_playable"]},minecraft:custom_data={Tags:"settings_misc"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.7 with minecraft:music_disc_lava_chicken[minecraft:item_name=[{"text":"Miscellaneous","color":"#3FE7FF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:jukebox_playable"]},minecraft:custom_data={Tags:"settings_misc"}]
