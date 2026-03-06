
#> uhc:pre_game/menu/selection/settings/border/shrink/player
#
# @within			uhc:pre_game/menu/selection/settings/player
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

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
