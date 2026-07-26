
#> uhc:pre_game/menu/selected/settings/misc/host
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_live_start_in_sky"}] run function uhc:pre_game/menu/selected/settings/misc/start_in_the_sky
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_misc_health_display"}] run function uhc:pre_game/menu/selected/settings/misc/health_display/preset_menu
execute unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_misc_team_stuff"}] run function uhc:pre_game/menu/selected/settings/misc/team_stuff/preset_menu
execute unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_misc_river"}] run function uhc:pre_game/menu/selected/settings/misc/river_solid
