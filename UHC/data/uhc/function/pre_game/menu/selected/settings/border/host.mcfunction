
#> uhc:pre_game/menu/selected/settings/border/host
#
# @within			uhc:pre_game/menu/selected/settings/host
# 
#
# @description		Redirection
#

execute if score @s uhc.menu.settings.border matches ..10 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/shrink/preset_menu/shrink_1
execute if score @s uhc.menu.settings.border matches ..10 unless score #shrink_dynamic uhc.data.setup matches 1 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/shrink/preset_menu/shrink_2
execute if score @s uhc.menu.settings.border matches ..10 unless score #shrink_dynamic uhc.data.setup matches 1..2 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/shrink/preset_menu/shrink_3
execute if score @s uhc.menu.settings.border matches ..10 unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/shrink/preset_menu/shrink_height

execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/selected/settings/1_remove_10
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/selected/settings/2_remove_1
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/selected/settings/3_add_1
execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/selected/settings/4_add_10
