
#> uhc:in_game/inventory/ban_item/potion/healing
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Suppression des potions de vie
#

scoreboard players set #temp uhc.data.temp 0
execute if items entity @s container.* *[potion_contents={potion:"minecraft:healing"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_healing"}] run scoreboard players set #temp uhc.data.temp 1

execute if score #temp uhc.data.temp matches 0 run return fail
clear @s *[potion_contents={potion:"minecraft:healing"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_healing"}] 1

function uhc:in_game/inventory/ban_item/potion/healing
