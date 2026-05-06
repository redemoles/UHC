
#> uhc:in_game/inventory/ban_item/root
#
# @within			advancement #uhc:inventory_changed
#
#
# @description		Suppression d'items interdits
#

## Si la game a pas démarré
execute unless score #tick_start uhc.data.temp matches 0.. run return run advancement revoke @s only uhc:inventory_changed

## Modes de jeu
# Nuzlocke UHC - Items manquants
execute if score #nzl uhc.gamemode matches 1 at @s run function nzl:inventory/missing

## Scenarios
# Enchanting Setup
execute if items entity @s container.* minecraft:enchanting_table if score #enchanting_setup uhc.scenario matches 1 run function uhc:in_game/scenario/enchanting_setup/ban_items

## Items interdits
# Non configurables
execute if items entity @s container.* minecraft:enchanted_golden_apple run function uhc:in_game/inventory/ban_item/compensation with storage uhc:settings item.enchanted_golden_apple
execute if items entity @s container.* minecraft:totem_of_undying run function uhc:in_game/inventory/ban_item/compensation with storage uhc:settings item.totem_of_undying
# Configurables
execute if score #cobweb uhc.data.setup matches 0 if items entity @s container.* minecraft:cobweb run function uhc:in_game/inventory/ban_item/cobweb
execute if score #milk_bucket uhc.data.setup matches 0 if items entity @s container.* minecraft:milk_bucket run function uhc:in_game/inventory/ban_item/milk_bucket
execute if score #wolf_armor uhc.data.setup matches 0 if items entity @s container.* minecraft:wolf_armor run function uhc:in_game/inventory/ban_item/wolf_armor
execute if score #effect_speed uhc.data.setup matches 0 if items entity @s container.* *[potion_contents={potion:"minecraft:swiftness"}] run function uhc:in_game/inventory/ban_item/speed_potion
execute if score #effect_speed uhc.data.setup matches 0 if items entity @s container.* *[potion_contents={potion:"minecraft:long_swiftness"}] run function uhc:in_game/inventory/ban_item/speed_potion
execute if score #effect_speed uhc.data.setup matches 0 if items entity @s container.* *[potion_contents={potion:"minecraft:strong_swiftness"}] run function uhc:in_game/inventory/ban_item/speed_potion
execute if score #effect_strength uhc.data.setup matches 0 if items entity @s container.* *[potion_contents={potion:"minecraft:strength"}] run function uhc:in_game/inventory/ban_item/strength_potion
execute if score #effect_strength uhc.data.setup matches 0 if items entity @s container.* *[potion_contents={potion:"minecraft:long_strength"}] run function uhc:in_game/inventory/ban_item/strength_potion
execute if score #effect_strength uhc.data.setup matches 0 if items entity @s container.* *[potion_contents={potion:"minecraft:strong_strength"}] run function uhc:in_game/inventory/ban_item/strength_potion

## Vérification du nombre de pièces d'armure portée
execute if score #diamond_armor uhc.data.setup matches ..3 run function uhc:in_game/inventory/equipment/diamond_armor

## Vérification d'enchantements
execute if score #diamond_protection uhc.data.setup matches ..3 run function uhc:in_game/inventory/equipment/diamond_protection with storage uhc:settings enchantments.diamond_protection
execute if score #iron_protection uhc.data.setup matches ..3 run function uhc:in_game/inventory/equipment/iron_protection with storage uhc:settings enchantments.iron_protection
execute if score #depth_strider uhc.data.setup matches ..2 run function uhc:in_game/inventory/equipment/depth_strider with storage uhc:settings enchantments.depth_strider

advancement revoke @s only uhc:inventory_changed
