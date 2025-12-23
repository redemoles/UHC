
#> uhc:in_game/inventory/ban_item/milk_bucket
#
# @within			uhc:in_game/inventory/ban_item/
#
#
# @description		Suppression du seau de lait
#

clear @s minecraft:milk_bucket 1
give @s minecraft:bucket
execute if items entity @s container.* minecraft:milk_bucket run function uhc:in_game/inventory/ban_item/milk_bucket
