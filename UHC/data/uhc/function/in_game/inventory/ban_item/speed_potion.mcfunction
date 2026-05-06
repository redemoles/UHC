
#> uhc:in_game/inventory/ban_item/speed_potion
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Suppression du seau de lait
#

clear @s *[potion_contents={potion:"minecraft:swiftness"}] 1
clear @s *[potion_contents={potion:"minecraft:long_swiftness"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_swiftness"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:swiftness"}] run return run function uhc:in_game/inventory/ban_item/speed_potion
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_swiftness"}] run return run function uhc:in_game/inventory/ban_item/speed_potion
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_swiftness"}] run return run function uhc:in_game/inventory/ban_item/speed_potion
