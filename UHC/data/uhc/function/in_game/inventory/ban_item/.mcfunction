
#> uhc:in_game/inventory/ban_item/
#
# @within			advancement #uhc:inventory_changed
#
#
# @description		Suppression d'items interdits
#

# Exécution de la function seulement si la game a pas démarré
execute unless score #tick_start uhc.data.temp matches 0.. run return run advancement revoke @s only uhc:inventory_changed

data modify storage uhc:temp Inventory set from entity @s Inventory

# Missing Items Nuzlocke UHC
execute if score #nzl uhc.gamemode matches 1 at @s run function nzl:inventory/missing

# Ban Enchanting Setup
execute if items entity @s container.* minecraft:enchanting_table if score #enchanting_setup uhc.scenario matches 1 run function uhc:in_game/scenario/enchanting_setup/ban_items

# Items cheat
execute if items entity @s container.* minecraft:enchanted_golden_apple run function uhc:in_game/inventory/ban_item/compensation with storage uhc:settings item.enchanted_golden_apple
execute if items entity @s container.* minecraft:totem_of_undying run function uhc:in_game/inventory/ban_item/compensation with storage uhc:settings item.totem_of_undying

# Items configurables
execute if score #cobweb uhc.data.setup matches 0 if items entity @s container.* minecraft:cobweb run function uhc:in_game/inventory/ban_item/cobweb
execute if score #milk_bucket uhc.data.setup matches 0 if items entity @s container.* minecraft:milk_bucket run function uhc:in_game/inventory/ban_item/milk_bucket

advancement revoke @s only uhc:inventory_changed
