
#> uhc:pre_game/menu/selection/settings/border/shrink/host
#
# @within			uhc:pre_game/menu/selection/settings/host
# 
#
# @description		Redirection
#

execute if score @s uhc.menu.settings.border matches 11..20 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/preset_menu
execute if score @s uhc.menu.settings.border matches 21..30 unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/preset_menu
execute if score @s uhc.menu.settings.border matches 31..40 unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/preset_menu
execute unless score @s uhc.menu.settings.border matches 11..20 unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/shrink_1/preset_menu
execute unless score @s uhc.menu.settings.border matches 21..30 unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/shrink_2/preset_menu
execute unless score @s uhc.menu.settings.border matches 31..40 unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/shrink_3/preset_menu

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selection/settings/border/shrink/apply_change/size_start
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selection/settings/border/shrink/apply_change/size_end
execute unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selection/settings/border/shrink/apply_change/start_timer
execute unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selection/settings/border/shrink/apply_change/duration
execute unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/selection/settings/border/shrink/apply_change/dynamic

execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/load/settings/1_remove_10
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/settings/2_remove_1
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/settings/3_add_1
execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/load/settings/4_add_10

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
