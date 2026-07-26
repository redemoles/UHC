
#> uhc:in_game/inventory/ban_item/flint_and_steel
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Suppression du briquet
#

clear @s minecraft:flint_and_steel 1
give @s minecraft:iron_ingot 1
give @s minecraft:flint 1
execute if items entity @s container.* minecraft:flint_and_steel run function uhc:in_game/inventory/ban_item/milk_bucket
