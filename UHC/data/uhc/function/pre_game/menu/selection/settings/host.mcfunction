
#> uhc:pre_game/menu/selection/settings/host
#
# @within			uhc:pre_game/menu/detector/menu
# 
#
# @description		Redirection
#

execute if score @s uhc.menu.settings.pvp matches 11..20 run return run function uhc:pre_game/menu/selection/settings/pvp_fight_stuff/host
execute if score @s uhc.menu.settings.pvp matches 21..30 run return run function uhc:pre_game/menu/selection/settings/pvp_team_stuff/host
execute if score @s uhc.menu.settings.pvp matches 31..40 run return run function uhc:pre_game/menu/selection/settings/pvp_potion/host
execute if score @s uhc.menu.settings.pvp matches 41..50 run return run function uhc:pre_game/menu/selection/settings/pvp_no_clean/host

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_lives"}] run return run function uhc:pre_game/menu/load/settings/lives/preset_menu
execute if score #lives uhc.data.setup matches 2.. if score @s uhc.menu.settings.lives matches 1.. unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_live_1"}] run function uhc:pre_game/menu/load/settings/lives/live_1/preset_menu
execute if score #lives uhc.data.setup matches 3.. if score @s uhc.menu.settings.lives matches 1.. unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_live_2"}] run function uhc:pre_game/menu/load/settings/lives/live_2/preset_menu
execute if score @s uhc.menu.settings.lives matches 1.. unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"settings_live_start_in_sky"}] run function uhc:pre_game/menu/load/settings/lives/start_in_sky/apply_change

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_pve"}] run return run function uhc:pre_game/menu/load/settings/pve/preset_menu
execute if score @s uhc.menu.settings.pve matches 1.. unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_hp_tab"}] run return run function uhc:pre_game/menu/load/settings/pve/hp_tab/preset_menu
execute if score @s uhc.menu.settings.pve matches 1.. unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_hp_name"}] run return run function uhc:pre_game/menu/load/settings/pve/hp_name/preset_menu
execute if score @s uhc.menu.settings.pve matches 1.. unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_hp_chat"}] run return run function uhc:pre_game/menu/load/settings/pve/hp_chat/preset_menu
execute if score @s uhc.menu.settings.pve matches 1.. unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_absorption"}] run return run function uhc:pre_game/menu/load/settings/pve/absorption/preset_menu

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_pvp"}] run return run function uhc:pre_game/menu/load/settings/pvp/preset_menu
execute if score @s uhc.menu.settings.pvp matches 1.. unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_pvp_version"}] run function uhc:pre_game/menu/load/settings/pvp/version/apply_change
execute if score @s uhc.menu.settings.pvp matches 1.. unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/preset_menu
execute if score @s uhc.menu.settings.pvp matches 1.. unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_pvp_potion"}] run function uhc:pre_game/menu/load/settings/pvp/potion/preset_menu
execute if score @s uhc.menu.settings.pvp matches 1.. unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_pvp_team_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/team_stuff/preset_menu
execute if score @s uhc.menu.settings.pvp matches 2 unless items entity @s inventory.22 *[minecraft:custom_data={Tags:"settings_pvp_no_clean"}] run function uhc:pre_game/menu/load/settings/pvp/no_clean/preset_menu
execute if score @s uhc.menu.settings.pvp matches 1.. unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"settings_pvp_no_clean"}] run function uhc:pre_game/menu/load/settings/pvp/no_clean/preset_menu

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/preset_menu
execute if score @s uhc.menu.settings.border matches 1.. unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_border_0"}] run function uhc:pre_game/menu/load/settings/border/border_0/apply_change
execute if score @s uhc.menu.settings.border matches 1.. unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_border_1"}] run function uhc:pre_game/menu/load/settings/border/border_1/apply_change
execute if score @s uhc.menu.settings.border matches 1.. unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_border_2"}] run function uhc:pre_game/menu/load/settings/border/border_2/apply_change
execute if score @s uhc.menu.settings.border matches 1.. unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"settings_dynamic"}] run function uhc:pre_game/menu/load/settings/border/dynamic/apply_change

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"settings_inventory"}] run return run function uhc:pre_game/menu/load/settings/inventory/preset_menu
execute if score @s uhc.menu.settings.inventory matches 01..10 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_item_starter"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_starter/
execute if score @s uhc.menu.settings.inventory matches 01..10 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_inventory_item_ironman"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_ironman/
execute if score @s uhc.menu.settings.inventory matches 01..10 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_inventory_item_notch_totem"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_notch_totem/
execute if score @s uhc.menu.settings.inventory matches 01..10 unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_inventory_item_additional"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_additional/
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_protection"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/iron_protection/apply_change
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_protection"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/diamond_protection/apply_change
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_sharpness"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/iron_sharpness/apply_change
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_sharpness"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/diamond_sharpness/apply_change
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_axes_sharpness"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/axes_sharpness/apply_change
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.15 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_bow_power"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/bow_power/apply_change
execute if score @s uhc.menu.settings.inventory matches 21..30 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_fire_flame"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/fire_flame/apply_change
execute if score @s uhc.menu.settings.inventory matches 21..30 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_depth_strider"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/depth_strider/apply_change
execute if score @s uhc.menu.settings.inventory matches 31..40 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_items_cobweb"}] run function uhc:pre_game/menu/load/settings/inventory/items_authorization/cobweb/apply_change
execute if score @s uhc.menu.settings.inventory matches 01.. unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"settings_inventory_pages"}] run function uhc:pre_game/menu/load/settings/inventory/pages/preset_menu

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.6 *[minecraft:custom_data={Tags:"settings_team"}] run return run function uhc:pre_game/menu/load/settings/team/preset_menu
execute if score @s uhc.menu.settings.team matches 1.. unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"team_size"}] run return run function uhc:pre_game/menu/load/settings/team/team_size/preset_menu
execute if score @s uhc.menu.settings.team matches 1.. unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"team_format"}] run return run function uhc:pre_game/menu/load/settings/team/team_format
execute if score #random_team uhc.data.setup matches 1.. if score @s uhc.menu.settings.team matches 1.. unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"pots_number"}] run return run function uhc:pre_game/menu/load/settings/team/pots_number
execute if score #random_team uhc.data.setup matches 1.. if score @s uhc.menu.settings.team matches 1.. unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"random_team_instant"}] run return run function uhc:pre_game/menu/load/settings/team/random_now_instant
execute if score @s uhc.menu.settings.team matches 1.. unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"team_anonyme"}] run return run function uhc:pre_game/menu/load/settings/team/anonyme_team

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.7 *[minecraft:custom_data={Tags:"settings_misc"}] run return run function uhc:pre_game/menu/load/settings/misc/preset_menu
execute if score @s uhc.menu.settings.misc matches 1.. unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_misc_river"}] run function uhc:pre_game/menu/load/settings/misc/river/apply_change

execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/load/settings/1_remove_10
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/settings/2_remove_1
execute if score @s uhc.menu.settings matches 2..9 unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/settings/3_add_1
execute if score @s uhc.menu.settings matches 3..9 unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/load/settings/4_add_10

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
