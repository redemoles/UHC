
#> uhc:pre_game/menu/selection/settings/host
#
# @within			uhc:pre_game/menu/detector/menu
# 
#
# @description		Redirection
#

execute if score @s uhc.menu.settings.pvp matches 11..20 run return run function uhc:pre_game/menu/selection/settings/pvp/fight_stuff/host
execute if score @s uhc.menu.settings.pvp matches 21..30 run return run function uhc:pre_game/menu/selection/settings/pvp/team_stuff/host
execute if score @s uhc.menu.settings.pvp matches 31..40 run return run function uhc:pre_game/menu/selection/settings/pvp/potion/host
execute if score @s uhc.menu.settings.pvp matches 41..50 run return run function uhc:pre_game/menu/selection/settings/pvp/no_clean/host
execute if score @s uhc.menu.settings.border matches 11.. run return run function uhc:pre_game/menu/selection/settings/border/shrink/host

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_lives"}] run return run function uhc:pre_game/menu/load/settings/lives/preset_menu
execute if score @s uhc.menu.settings.lives matches 1.. run function uhc:pre_game/menu/selection/settings/lives/host

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_pve"}] run return run function uhc:pre_game/menu/load/settings/pve/preset_menu
execute if score @s uhc.menu.settings.pve matches 1.. run function uhc:pre_game/menu/selection/settings/pve/host

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_pvp"}] run return run function uhc:pre_game/menu/load/settings/pvp/preset_menu
execute if score @s uhc.menu.settings.pvp matches 1.. run function uhc:pre_game/menu/selection/settings/pvp/host

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/preset_menu
execute if score @s uhc.menu.settings.border matches 1.. run function uhc:pre_game/menu/selection/settings/border/host

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"settings_inventory"}] run return run function uhc:pre_game/menu/load/settings/inventory/preset_menu
execute if score @s uhc.menu.settings.inventory matches 1.. run function uhc:pre_game/menu/selection/settings/inventory/host
execute if score @s uhc.menu.settings.inventory matches 2..5 run return fail

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.6 *[minecraft:custom_data={Tags:"settings_team"}] run return run function uhc:pre_game/menu/load/settings/team/preset_menu
execute if score @s uhc.menu.settings.team matches 1.. run function uhc:pre_game/menu/selection/settings/team/host

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.7 *[minecraft:custom_data={Tags:"settings_misc"}] run return run function uhc:pre_game/menu/load/settings/misc/preset_menu
execute if score @s uhc.menu.settings.misc matches 1.. unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_misc_river"}] run function uhc:pre_game/menu/load/settings/misc/river/apply_change

execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/load/settings/1_remove_10
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/settings/2_remove_1
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/settings/3_add_1
execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/load/settings/4_add_10

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
