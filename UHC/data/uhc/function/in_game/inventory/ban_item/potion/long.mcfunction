
#> uhc:in_game/inventory/ban_item/potion/fire_resistance
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Suppression des potions de niveau 2
#

scoreboard players set #temp uhc.data.temp 0
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_fire_resistance"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_invisibility"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_leaping"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_night_vision"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_poison"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_regeneration"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_slow_falling"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_slowness"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_strength"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_swiftness"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_turtle_master"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_water_breathing"}] run scoreboard players set #temp uhc.data.temp 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_weakness"}] run scoreboard players set #temp uhc.data.temp 1
execute if score #temp uhc.data.temp matches 0 run return fail

execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_fire_resistance"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:fire_resistance"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_invisibility"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:invisibility"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_leaping"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:leaping"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_night_vision"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:night_vision"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_poison"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:poison"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_regeneration"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:regeneration"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_slow_falling"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:slow_falling"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_slowness"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:slowness"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_strength"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:strength"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_swiftness"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:swiftness"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_turtle_master"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:turtle_master"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_water_breathing"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:water_breathing"}] 1
execute if items entity @s container.* *[potion_contents={potion:"minecraft:long_weakness"}] run give @s minecraft:potion[potion_contents={potion:"minecraft:weakness"}] 1
clear @s *[potion_contents={potion:"minecraft:long_fire_resistance"}] 1
clear @s *[potion_contents={potion:"minecraft:long_invisibility"}] 1
clear @s *[potion_contents={potion:"minecraft:long_leaping"}] 1
clear @s *[potion_contents={potion:"minecraft:long_night_vision"}] 1
clear @s *[potion_contents={potion:"minecraft:long_poison"}] 1
clear @s *[potion_contents={potion:"minecraft:long_regeneration"}] 1
clear @s *[potion_contents={potion:"minecraft:long_slow_falling"}] 1
clear @s *[potion_contents={potion:"minecraft:long_slowness"}] 1
clear @s *[potion_contents={potion:"minecraft:long_strength"}] 1
clear @s *[potion_contents={potion:"minecraft:long_swiftness"}] 1
clear @s *[potion_contents={potion:"minecraft:long_turtle_master"}] 1
clear @s *[potion_contents={potion:"minecraft:long_water_breathing"}] 1
clear @s *[potion_contents={potion:"minecraft:long_weakness"}] 1
function uhc:in_game/inventory/ban_item/potion/level_2
