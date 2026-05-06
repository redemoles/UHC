
#> uhc:in_game/inventory/ban_item/strength_potion
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Suppression du seau de lait
#

clear @s *[potion_contents={potion:"minecraft:strength"}] 1
clear @s *[potion_contents={potion:"minecraft:long_strength"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_strength"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strength"}] run return run function uhc:in_game/inventory/ban_item/strength_potion
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_strength"}] run return run function uhc:in_game/inventory/ban_item/strength_potion
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_strength"}] run return run function uhc:in_game/inventory/ban_item/strength_potion
