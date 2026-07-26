
#> uhc:pre_game/menu/selected/settings/inventory/host
#
# @within			uhc:pre_game/menu/selected/settings/host
# 
#
# @description		Redirection
#

execute if score @s uhc.menu.settings.inventory matches 01..10 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_item_starter"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_starter/
execute if score @s uhc.menu.settings.inventory matches 01..10 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_inventory_item_ironman"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_ironman/
execute if score @s uhc.menu.settings.inventory matches 01..10 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_inventory_item_notch_totem"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_notch_totem/
execute if score @s uhc.menu.settings.inventory matches 01..10 unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_inventory_item_life_loss"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_life_loss/
execute if score @s uhc.menu.settings.inventory matches 01..10 unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"settings_inventory_item_additional"}] run return run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_additional/
execute if score @s uhc.menu.settings.inventory matches 01..10 unless items entity @s inventory.15 *[minecraft:custom_data={Tags:"settings_inventory_item_armor"}] run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_armor/apply_change
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_protection"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/iron_protection/apply_change
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_protection"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/diamond_protection/apply_change
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_iron_sharpness"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/iron_sharpness/apply_change
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_diamond_sharpness"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/diamond_sharpness/apply_change
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_axes_sharpness"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/axes_sharpness/apply_change
execute if score @s uhc.menu.settings.inventory matches 11..20 unless items entity @s inventory.15 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_bow_power"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/bow_power/apply_change
execute if score @s uhc.menu.settings.inventory matches 21..30 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_fire_flame"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/fire_flame/apply_change
execute if score @s uhc.menu.settings.inventory matches 21..30 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_depth_strider"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/depth_strider/apply_change
execute if score @s uhc.menu.settings.inventory matches 21..30 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_inventory_enchantments_lunge"}] run function uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/lunge/apply_change
execute if score @s uhc.menu.settings.inventory matches 31..40 unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_inventory_items_cobweb"}] run function uhc:pre_game/menu/load/settings/inventory/items_authorization/cobweb/apply_change
execute if score @s uhc.menu.settings.inventory matches 31..40 unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_inventory_items_flint_and_steel"}] run function uhc:pre_game/menu/load/settings/inventory/items_authorization/flint_and_steel/apply_change
execute if score @s uhc.menu.settings.inventory matches 31..40 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_inventory_items_lava_bucket"}] run function uhc:pre_game/menu/load/settings/inventory/items_authorization/lava_bucket/apply_change
execute if score @s uhc.menu.settings.inventory matches 31..40 unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_inventory_items_diamond_armor"}] run function uhc:pre_game/menu/load/settings/inventory/items_authorization/diamond_armor/apply_change
execute if score @s uhc.menu.settings.inventory matches 31..40 unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"settings_inventory_items_netherite_armor"}] run function uhc:pre_game/menu/load/settings/inventory/items_authorization/netherite_armor/apply_change
execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"settings_inventory_pages"}] run function uhc:pre_game/menu/load/settings/inventory/pages/preset_menu
