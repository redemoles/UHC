
#> uhc:pre_game/menu/selected/settings/misc/team_stuff/main
#
# @within			uhc:pre_game/menu/selected/settings/*
# 
#
# @description		Redirection
#

execute unless items entity @s[tag=uhc.host] inventory.1 *[minecraft:custom_data={Tags:"settings_live_start_in_sky"}] run function uhc:pre_game/menu/selected/settings/misc/start_in_the_sky
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_misc_health_display"}] run function uhc:pre_game/menu/selected/settings/misc/health_display/preset_menu
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_misc_team_stuff"}] run return run function uhc:pre_game/menu/selected/settings/misc/preset_menu
execute unless items entity @s[tag=uhc.host] inventory.4 *[minecraft:custom_data={Tags:"settings_misc_river"}] run function uhc:pre_game/menu/selected/settings/misc/river_solid

execute unless items entity @s[tag=uhc.host] inventory.10 *[minecraft:custom_data={Tags:"settings_misc_friendly_fire"}] run function uhc:pre_game/menu/selected/settings/misc/team_stuff/friendly_fire
execute unless items entity @s[tag=uhc.host] inventory.11 *[minecraft:custom_data={Tags:"settings_misc_tracker_allies"}] run function uhc:pre_game/menu/selected/settings/misc/team_stuff/tracker_allies

execute unless items entity @s[tag=uhc.host] inventory.19 *[minecraft:custom_data={Tags:"settings_misc"}] run return run function uhc:pre_game/menu/selected/settings/misc/preset_menu
execute unless items entity @s[tag=!uhc.host] inventory.24 *[minecraft:custom_data={Tags:"settings_misc"}] run return run function uhc:pre_game/menu/selected/settings/misc/preset_menu

execute if score @s[tag=uhc.host] uhc.menu.settings matches 3..9 unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/load/settings/1_remove_10
execute if score @s[tag=uhc.host] uhc.menu.settings matches 2..9 unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/settings/2_remove_1
execute if score @s[tag=uhc.host] uhc.menu.settings matches 2..9 unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/settings/3_add_1
execute if score @s[tag=uhc.host] uhc.menu.settings matches 3..9 unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/load/settings/4_add_10

execute if score @s[tag=uhc.host] uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s[tag=!uhc.host] uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/menu
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
