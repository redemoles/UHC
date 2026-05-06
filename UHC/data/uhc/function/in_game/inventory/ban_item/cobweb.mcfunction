
#> uhc:in_game/inventory/ban_item/cobweb
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Suppression du seau de lait
#

clear @s minecraft:cobweb 1
give @s minecraft:string 1
execute if items entity @s container.* minecraft:cobweb run function uhc:in_game/inventory/ban_item/cobweb
