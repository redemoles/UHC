
#> uhc:in_game/inventory/ban_item/potion/fire_resistance
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Suppression des potions de résistance au feu
#

scoreboard players set #temp uhc.data.temp 0
execute if items entity @s container.* *[potion_contents={potion:"minecraft:fire_resistance"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_fire_resistance"}] run scoreboard players set #temp uhc.data.temp 1

execute if score #temp uhc.data.temp matches 0 run return fail
clear @s *[potion_contents={potion:"minecraft:fire_resistance"}] 1
clear @s *[potion_contents={potion:"minecraft:long_fire_resistance"}] 1

function uhc:in_game/inventory/ban_item/potion/fire_resistance
