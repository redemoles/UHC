
#> uhc:pre_game/menu/selection/settings/host
#
# @within			uhc:pre_game/menu/detector/host
# 
#
# @description		Redirection
#

execute if score @s uhc.menu.settings.pvp matches 11..20 run return run function uhc:pre_game/menu/selection/settings/pvp_fight_stuff/host
execute if score @s uhc.menu.settings.pvp matches 21..30 run return run function uhc:pre_game/menu/selection/settings/pvp_team_stuff/host
execute if score @s uhc.menu.settings.pvp matches 31..40 run return run function uhc:pre_game/menu/selection/settings/pvp_potion/host
execute if score @s uhc.menu.settings.pvp matches 41..50 run return run function uhc:pre_game/menu/selection/settings/pvp_no_clean/host

execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.1 *[minecraft:custom_data={Tags:"settings_lives"}] run return run function uhc:pre_game/menu/load/settings/lives/
execute if score #lives uhc.data.setup matches 2.. unless items entity @s[scores={uhc.menu.settings.lives=1..}] inventory.10 *[minecraft:custom_data={Tags:"settings_live_1"}] run function uhc:pre_game/menu/load/settings/lives/live_1/
execute if score #lives uhc.data.setup matches 3.. unless items entity @s[scores={uhc.menu.settings.lives=1..}] inventory.11 *[minecraft:custom_data={Tags:"settings_live_2"}] run function uhc:pre_game/menu/load/settings/lives/live_2/
execute unless items entity @s[scores={uhc.menu.settings.lives=1..}] inventory.16 *[minecraft:custom_data={Tags:"settings_live_start_in_sky"}] run function uhc:pre_game/menu/load/settings/lives/start_in_sky/

execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.2 *[minecraft:custom_data={Tags:"settings_pve"}] run return run function uhc:pre_game/menu/load/settings/pve/
execute unless items entity @s[scores={uhc.menu.settings.pve=1..}] inventory.10 *[minecraft:custom_data={Tags:"settings_hp_tab"}] run return run function uhc:pre_game/menu/load/settings/pve/hp_tab/
execute unless items entity @s[scores={uhc.menu.settings.pve=1..}] inventory.11 *[minecraft:custom_data={Tags:"settings_hp_name"}] run return run function uhc:pre_game/menu/load/settings/pve/hp_name/
execute unless items entity @s[scores={uhc.menu.settings.pve=1..}] inventory.12 *[minecraft:custom_data={Tags:"settings_hp_chat"}] run return run function uhc:pre_game/menu/load/settings/pve/hp_chat/
execute unless items entity @s[scores={uhc.menu.settings.pve=1..}] inventory.13 *[minecraft:custom_data={Tags:"settings_absorption"}] run return run function uhc:pre_game/menu/load/settings/pve/absorption/

execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.3 *[minecraft:custom_data={Tags:"settings_pvp"}] run return run function uhc:pre_game/menu/load/settings/pvp/
execute unless items entity @s[scores={uhc.menu.settings.pvp=1..}] inventory.10 *[minecraft:custom_data={Tags:"settings_pvp_version"}] run function uhc:pre_game/menu/load/settings/pvp/version/
execute unless items entity @s[scores={uhc.menu.settings.pvp=1..}] inventory.11 *[minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/
execute unless items entity @s[scores={uhc.menu.settings.pvp=1..}] inventory.12 *[minecraft:custom_data={Tags:"settings_pvp_potion"}] run function uhc:pre_game/menu/load/settings/pvp/potion/
execute unless items entity @s[scores={uhc.menu.settings.pvp=1..}] inventory.13 *[minecraft:custom_data={Tags:"settings_pvp_team_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/team_stuff/
execute unless items entity @s[scores={uhc.menu.settings.pvp=2}] inventory.22 *[minecraft:custom_data={Tags:"settings_pvp_no_clean"}] run function uhc:pre_game/menu/load/settings/pvp/no_clean/
execute unless items entity @s[scores={uhc.menu.settings.pvp=1..}] inventory.14 *[minecraft:custom_data={Tags:"settings_pvp_no_clean"}] run function uhc:pre_game/menu/load/settings/pvp/no_clean/

execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.4 *[minecraft:custom_data={Tags:"settings_border"}] run return run function uhc:pre_game/menu/load/settings/border/
execute unless items entity @s[scores={uhc.menu.settings.border=1..}] inventory.10 *[minecraft:custom_data={Tags:"settings_border_0"}] run function uhc:pre_game/menu/load/settings/border/border_0/
execute unless items entity @s[scores={uhc.menu.settings.border=1..}] inventory.11 *[minecraft:custom_data={Tags:"settings_border_1"}] run function uhc:pre_game/menu/load/settings/border/border_1/
execute unless items entity @s[scores={uhc.menu.settings.border=1..}] inventory.12 *[minecraft:custom_data={Tags:"settings_border_2"}] run function uhc:pre_game/menu/load/settings/border/border_2/
execute unless items entity @s[scores={uhc.menu.settings.border=1..}] inventory.16 *[minecraft:custom_data={Tags:"settings_dynamic"}] run function uhc:pre_game/menu/load/settings/border/dynamic/

execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.5 *[minecraft:custom_data={Tags:"settings_inventory"}] run return run function uhc:pre_game/menu/load/settings/inventory/
execute unless items entity @s[scores={uhc.menu.settings.inventory=01..10}] inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_item_starter"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_starter/
execute unless items entity @s[scores={uhc.menu.settings.inventory=01..10}] inventory.11 *[minecraft:custom_data={Tags:"settings_inventory_item_ironman"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_ironman/
execute unless items entity @s[scores={uhc.menu.settings.inventory=01..10}] inventory.12 *[minecraft:custom_data={Tags:"settings_inventory_item_notch_totem"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_notch_totem/
execute unless items entity @s[scores={uhc.menu.settings.inventory=01..10}] inventory.13 *[minecraft:custom_data={Tags:"settings_inventory_item_additional"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_additional/
execute unless items entity @s[scores={uhc.menu.settings.inventory=11..20}] inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_protection"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/iron_protection/
execute unless items entity @s[scores={uhc.menu.settings.inventory=11..20}] inventory.11 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_protection"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/diamond_protection/
execute unless items entity @s[scores={uhc.menu.settings.inventory=11..20}] inventory.12 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_sharpness"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/iron_sharpness/
execute unless items entity @s[scores={uhc.menu.settings.inventory=11..20}] inventory.13 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_sharpness"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/diamond_sharpness/
execute unless items entity @s[scores={uhc.menu.settings.inventory=11..20}] inventory.14 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_axes_sharpness"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/axes_sharpness/
execute unless items entity @s[scores={uhc.menu.settings.inventory=11..20}] inventory.15 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_bow_power"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/bow_power/
execute unless items entity @s[scores={uhc.menu.settings.inventory=21..30}] inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_fire_flame"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/fire_flame/
execute unless items entity @s[scores={uhc.menu.settings.inventory=21..30}] inventory.11 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_depth_strider"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/depth_strider/
execute unless items entity @s[scores={uhc.menu.settings.inventory=31..40}] inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_items_cobweb"}] run function uhc:pre_game/menu/load/settings/inventory/items_authorization/cobweb/
execute unless items entity @s[scores={uhc.menu.settings.inventory=1..}] inventory.19 *[minecraft:custom_data={Tags:"settings_inventory_pages"}] run function uhc:pre_game/menu/load/settings/inventory/pages/

execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.6 *[minecraft:custom_data={Tags:"settings_misc"}] run return run function uhc:pre_game/menu/load/settings/misc/
execute unless items entity @s[scores={uhc.menu.settings.misc=1..}] inventory.10 *[minecraft:custom_data={Tags:"settings_misc_river"}] run function uhc:pre_game/menu/load/settings/misc/river/

execute unless items entity @s[scores={uhc.menu.settings=3..9}] inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/load/settings/1_remove_10
execute unless items entity @s[scores={uhc.menu.settings=2..9}] inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/settings/2_remove_1
execute unless items entity @s[scores={uhc.menu.settings=2..9}] inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/settings/3_add_1
execute unless items entity @s[scores={uhc.menu.settings=3..9}] inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/load/settings/4_add_10

execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
