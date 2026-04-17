
#> uhc:pre_game/menu/selection/settings/misc/health_display/main
#
# @within			uhc:pre_game/menu/selection/settings/*
#
#
# @description		Menu
#

execute unless items entity @s[tag=uhc.host] inventory.1 *[minecraft:custom_data={Tags:"settings_live_start_in_sky"}] run function uhc:pre_game/menu/selection/settings/misc/start_in_the_sky
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_misc_health_display"}] run return run function uhc:pre_game/menu/selection/settings/misc/preset_menu
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_misc_team_stuff"}] run function uhc:pre_game/menu/selection/settings/misc/team_stuff/preset_menu
execute unless items entity @s[tag=uhc.host] inventory.4 *[minecraft:custom_data={Tags:"settings_misc_river"}] run function uhc:pre_game/menu/selection/settings/misc/river_solid

execute unless items entity @s[tag=uhc.host] inventory.10 *[minecraft:custom_data={Tags:"settings_hp_tab"}] run return run function uhc:pre_game/menu/selection/settings/misc/health_display/hp_tab
execute unless items entity @s[tag=uhc.host] inventory.11 *[minecraft:custom_data={Tags:"settings_hp_name"}] run return run function uhc:pre_game/menu/selection/settings/misc/health_display/hp_name
execute unless items entity @s[tag=uhc.host] inventory.12 *[minecraft:custom_data={Tags:"settings_hp_chat"}] run return run function uhc:pre_game/menu/selection/settings/misc/health_display/hp_chat

execute unless items entity @s[tag=uhc.host] inventory.19 *[minecraft:custom_data={Tags:"settings_misc"}] run return run function uhc:pre_game/menu/selection/settings/misc/preset_menu
execute unless items entity @s[tag=!uhc.host] inventory.24 *[minecraft:custom_data={Tags:"settings_misc"}] run return run function uhc:pre_game/menu/selection/settings/misc/preset_menu

execute if score @s[tag=uhc.host] uhc.menu.settings matches 3..9 unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/load/settings/1_remove_10
execute if score @s[tag=uhc.host] uhc.menu.settings matches 2..9 unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/settings/2_remove_1
execute if score @s[tag=uhc.host] uhc.menu.settings matches 2..9 unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/settings/3_add_1
execute if score @s[tag=uhc.host] uhc.menu.settings matches 3..9 unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/load/settings/4_add_10

execute if score @s[tag=uhc.host] uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s[tag=!uhc.host] uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/menu
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
