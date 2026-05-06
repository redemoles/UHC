
#> uhc:in_game/inventory/ban_item/wolf_armor
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Suppression du seau de lait
#

clear @s minecraft:wolf_armor 1
give @s minecraft:armadillo_scute 6
execute if items entity @s container.* minecraft:wolf_armor run function uhc:in_game/inventory/ban_item/wolf_armor
