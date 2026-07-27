
#> uhc:pre_game/menu/selected/settings/border/shrink/main
#
# @within			uhc:pre_game/menu/selected/settings/host
# 
#
# @description		Redirection
#

execute if score @s uhc.menu.settings.border matches 11..20 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/preset_menu
execute if score @s uhc.menu.settings.border matches 21..30 unless score #shrink_dynamic uhc.data.setup matches 1 unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/preset_menu
execute if score @s uhc.menu.settings.border matches 31..40 unless score #shrink_dynamic uhc.data.setup matches 1..2 unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/preset_menu
execute if score @s uhc.menu.settings.border matches 41..50 unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/preset_menu
execute unless score @s uhc.menu.settings.border matches 11..20 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/shrink/preset_menu/shrink_1
execute unless score @s uhc.menu.settings.border matches 21..30 unless score #shrink_dynamic uhc.data.setup matches 1 unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/shrink/preset_menu/shrink_2
execute unless score @s uhc.menu.settings.border matches 31..40 unless score #shrink_dynamic uhc.data.setup matches 1..2 unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/shrink/preset_menu/shrink_3
execute unless score @s uhc.menu.settings.border matches 41..50 unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/shrink/preset_menu/shrink_height

execute if score @s uhc.menu.settings.border matches 11..40 unless items entity @s[tag=uhc.host] inventory.10 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selected/settings/border/shrink/apply_change/size_start
execute if score @s uhc.menu.settings.border matches 11..40 unless items entity @s[tag=uhc.host] inventory.11 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selected/settings/border/shrink/apply_change/size_end
execute if score @s uhc.menu.settings.border matches 11..40 unless items entity @s[tag=uhc.host] inventory.12 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selected/settings/border/shrink/apply_change/start_timer
execute if score @s uhc.menu.settings.border matches 11..40 unless items entity @s[tag=uhc.host] inventory.13 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selected/settings/border/shrink/apply_change/duration
execute if score @s uhc.menu.settings.border matches 11..40 unless items entity @s[tag=uhc.host] inventory.16 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selected/settings/border/shrink/apply_change/dynamic

execute if score @s uhc.menu.settings.border matches 41..50 unless items entity @s[tag=uhc.host] inventory.10 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selected/settings/border/shrink/apply_change/height_max
execute if score @s uhc.menu.settings.border matches 41..50 unless items entity @s[tag=uhc.host] inventory.11 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selected/settings/border/shrink/apply_change/height_min
execute if score @s uhc.menu.settings.border matches 41..50 unless items entity @s[tag=uhc.host] inventory.12 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selected/settings/border/shrink/apply_change/height_timer

execute if score @s uhc.menu.settings.border matches 11.. unless items entity @s[tag=uhc.host] inventory.19 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/preset_menu
execute if score @s uhc.menu.settings.border matches 11.. unless items entity @s[tag=!uhc.host] inventory.24 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/preset_menu

execute if score @s[tag=uhc.host] uhc.menu.settings matches 3..9 unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/selected/settings/1_remove_10
execute if score @s[tag=uhc.host] uhc.menu.settings matches 2..9 unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/selected/settings/2_remove_1
execute if score @s[tag=uhc.host] uhc.menu.settings matches 2..9 unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/selected/settings/3_add_1
execute if score @s[tag=uhc.host] uhc.menu.settings matches 3..9 unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/selected/settings/4_add_10

execute if score @s[tag=uhc.host] uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s[tag=!uhc.host] uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/menu
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
