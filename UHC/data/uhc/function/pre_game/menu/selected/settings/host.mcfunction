
#> uhc:pre_game/menu/selected/settings/host
#
# @within			uhc:pre_game/menu/detector/menu
# 
#
# @description		Redirection
#

execute if score @s uhc.menu.settings.misc matches 11..20 run return run function uhc:pre_game/menu/selected/settings/misc/team_stuff/main
execute if score @s uhc.menu.settings.misc matches 21..30 run return run function uhc:pre_game/menu/selected/settings/misc/health_display/main

execute if score @s uhc.menu.settings.pvp matches 11..20 run return run function uhc:pre_game/menu/selected/settings/pvp/fight_stuff
execute if score @s uhc.menu.settings.pvp matches 41..50 run return run function uhc:pre_game/menu/selected/settings/pvp/no_clean
execute if score @s uhc.menu.settings.pvp matches 51..60 run return run function uhc:pre_game/menu/selected/settings/pvp/absorption
execute if score @s uhc.menu.settings.border matches 11.. run return run function uhc:pre_game/menu/selected/settings/border/shrink/main

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_team"}] run return run function uhc:pre_game/menu/selected/settings/team/preset_menu
execute if score @s uhc.menu.settings.team matches 1.. run function uhc:pre_game/menu/selected/settings/team/host

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_lives"}] run return run function uhc:pre_game/menu/selected/settings/pve/preset_menu
execute if score @s uhc.menu.settings.pve matches 1.. run function uhc:pre_game/menu/selected/settings/pve/host

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_pvp"}] run return run function uhc:pre_game/menu/selected/settings/pvp/preset_menu
execute if score @s uhc.menu.settings.pvp matches 1.. run function uhc:pre_game/menu/selected/settings/pvp/host

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/selected/settings/border/preset_menu
execute if score @s uhc.menu.settings.border matches 1.. run function uhc:pre_game/menu/selected/settings/border/host
execute if score @s uhc.menu.settings.border matches 11.. run return fail

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"settings_inventory"}] run return run function uhc:pre_game/menu/selected/settings/inventory/preset_menu
execute if score @s uhc.menu.settings.inventory matches 1.. run function uhc:pre_game/menu/selected/settings/inventory/host
execute if score @s uhc.menu.settings.inventory matches 2..6 run return fail

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.6 *[minecraft:custom_data={Tags:"settings_potion"}] run return run function uhc:pre_game/menu/selected/settings/potion/preset_menu
execute if score @s uhc.menu.settings.potion matches 1.. run function uhc:pre_game/menu/selected/settings/potion/host

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.7 *[minecraft:custom_data={Tags:"settings_misc"}] run return run function uhc:pre_game/menu/selected/settings/misc/preset_menu
execute if score @s uhc.menu.settings.misc matches 1.. run function uhc:pre_game/menu/selected/settings/misc/host

execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/load/settings/1_remove_10
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/settings/2_remove_1
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/settings/3_add_1
execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/load/settings/4_add_10

execute if score @s[tag=uhc.host] uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s[tag=!uhc.host] uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/menu
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
