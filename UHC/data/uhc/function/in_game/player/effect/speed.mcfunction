
#> uhc:in_game/player/effect/speed
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Custom effet vitesse
#

# Suppression
execute if score #effect_speed uhc.data.setup matches 0 run function uhc:translation/in_game/player_effect
execute if score #effect_speed uhc.data.setup matches 0 run return run effect clear @s minecraft:speed

# Speed Strength Compatibilité
execute if score #effect_compatibility_speed_strength uhc.data.setup matches 0 if entity @s[tag=!uhc.effect.speed] run effect clear @s minecraft:strength

# Fin nerf
execute if entity @s[predicate=!uhc:effect/speed] run tag @s remove uhc.effect.speed
execute if score #effect_speed uhc.data.setup matches 1 if entity @s[predicate=!uhc:effect/speed] run return run attribute @s minecraft:movement_speed modifier remove uhc.effect.speed

# Nerf
execute if entity @s[predicate=uhc:effect/speed] run tag @s add uhc.effect.speed
execute if score #effect_speed uhc.data.setup matches 1 if entity @s[predicate=uhc:effect/speed_1] run return run attribute @s minecraft:movement_speed modifier add uhc.effect.speed -0.083 add_multiplied_total
execute if score #effect_speed uhc.data.setup matches 1 if entity @s[predicate=uhc:effect/speed_2] run return run attribute @s minecraft:movement_speed modifier add uhc.effect.speed -0.143 add_multiplied_total
execute if score #effect_speed uhc.data.setup matches 1 if entity @s[predicate=uhc:effect/speed_3] run return run attribute @s minecraft:movement_speed modifier add uhc.effect.speed -0.188 add_multiplied_total
execute if score #effect_speed uhc.data.setup matches 1 if entity @s[predicate=uhc:effect/speed_4] run return run attribute @s minecraft:movement_speed modifier add uhc.effect.speed -0.222 add_multiplied_total
