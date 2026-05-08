
#> uhc:in_game/inventory/ban_item/potion/fire_resistance
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Suppression des potions de niveau 2
#

scoreboard players set #temp uhc.data.temp 0
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_harming"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_healing"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_leaping"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_poison"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_regeneration"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_slowness"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_strength"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_swiftness"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_turtle_master"}] run scoreboard players set #temp uhc.data.temp 1
execute if score #temp uhc.data.temp matches 0 run return fail

execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_harming"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:harming"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_healing"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:healing"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_leaping"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:leaping"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_poison"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:poison"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_regeneration"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:regeneration"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_slowness"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:slowness"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_strength"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:strength"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_swiftness"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:swiftness"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:strong_turtle_master"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:turtle_master"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_harming"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_healing"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_leaping"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_poison"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_regeneration"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_slowness"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_strength"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_swiftness"}] 1
clear @s *[potion_contents={potion:"minecraft:strong_turtle_master"}] 1
function uhc:in_game/inventory/ban_item/potion/level_2
