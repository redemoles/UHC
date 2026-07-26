
#> uhc:in_game/inventory/ban_item/lava_bucket
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Suppression du seau de lave
#

clear @s minecraft:lava_bucket 1
give @s minecraft:bucket
execute if items entity @s container.* minecraft:lava_bucket run function uhc:in_game/inventory/ban_item/milk_bucket
