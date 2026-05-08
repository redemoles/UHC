
#> uhc:in_game/inventory/ban_item/potion/speed
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Suppression des potions de vitesse
#

scoreboard players set #temp uhc.data.temp 0
execute if items entity @s container.* *[potion_contents={potion:"minecraft:swiftness"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_swiftness"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_swiftness"}] run scoreboard players set #temp uhc.data.temp 1
execute if score #temp uhc.data.temp matches 0 run return fail
clear @s *[potion_contents={potion:"minecraft:swiftness"}] 1
clear @s *[potion_contents={potion:"minecraft:long_swiftness"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_swiftness"}] 1
function uhc:in_game/inventory/ban_item/potion/speed
