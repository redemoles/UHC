
#> uhc:pre_game/menu/load/settings/inventory/menu
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

function uhc:translation/menu/load/settings/inventory_menu

# Page 1
execute if score @s uhc.menu.settings.inventory matches 01..10 in uhc:lobby run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_armor/macro_set
execute if score @s uhc.menu.settings.inventory matches 01..10 run function uhc:translation/menu/load/settings/inventory_rewards_item_armor with storage uhc:settings menu

# Page 2
execute if score @s uhc.menu.settings.inventory matches 11..20 in uhc:lobby run function uhc:pre_game/menu/load/settings/inventory/enchantments_main/macro_set
execute if score @s uhc.menu.settings.inventory matches 11..20 run function uhc:translation/menu/load/settings/inventory_enchantments_diamond_protection with storage uhc:settings menu
execute if score @s uhc.menu.settings.inventory matches 11..20 run function uhc:translation/menu/load/settings/inventory_enchantments_diamond_sharpness with storage uhc:settings menu
execute if score @s uhc.menu.settings.inventory matches 11..20 run function uhc:translation/menu/load/settings/inventory_enchantments_iron_protection with storage uhc:settings menu
execute if score @s uhc.menu.settings.inventory matches 11..20 run function uhc:translation/menu/load/settings/inventory_enchantments_iron_sharpness with storage uhc:settings menu
execute if score @s uhc.menu.settings.inventory matches 11..20 run function uhc:translation/menu/load/settings/inventory_enchantments_axes_sharpness with storage uhc:settings menu
execute if score @s uhc.menu.settings.inventory matches 11..20 run function uhc:translation/menu/load/settings/inventory_enchantments_bow_power with storage uhc:settings menu

# Page 3
execute if score @s uhc.menu.settings.inventory matches 21..30 in uhc:lobby run function uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/macro_set
execute if score @s uhc.menu.settings.inventory matches 21..30 run function uhc:translation/menu/load/settings/inventory_enchantments_fire_flame
execute if score @s uhc.menu.settings.inventory matches 21..30 run function uhc:translation/menu/load/settings/inventory_enchantments_depth_strider with storage uhc:settings menu
execute if score @s uhc.menu.settings.inventory matches 21..30 run function uhc:translation/menu/load/settings/inventory_enchantments_lunge with storage uhc:settings menu

# Page 4
execute if score @s uhc.menu.settings.inventory matches 31..40 in uhc:lobby run function uhc:pre_game/menu/load/settings/inventory/items_authorization/macro_set
execute if score @s uhc.menu.settings.inventory matches 31..40 run function uhc:translation/menu/load/settings/inventory_items_authorization_cobweb with storage uhc:settings menu
execute if score @s uhc.menu.settings.inventory matches 31..40 run function uhc:translation/menu/load/settings/inventory_items_authorization_flint_and_steel
execute if score @s uhc.menu.settings.inventory matches 31..40 run function uhc:translation/menu/load/settings/inventory_items_authorization_lava_bucket
execute if score @s uhc.menu.settings.inventory matches 31..40 run function uhc:translation/menu/load/settings/inventory_items_authorization_diamond_armor with storage uhc:settings menu
execute if score @s uhc.menu.settings.inventory matches 31..40 run function uhc:translation/menu/load/settings/inventory_items_authorization_netherite_armor with storage uhc:settings menu
