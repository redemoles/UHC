
#> uhc:in_game/player/effect/strength
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Custom effet force
#

# Speed Strength Compatibilité
execute if score #effect_compatibility_speed_strength uhc.data.setup matches 0 if entity @s[tag=!uhc.effect.strength] run effect clear @s minecraft:speed

# Nerf
execute if entity @s[predicate=!uhc:effect/strength] run tag @s remove uhc.effect.strength
execute if score #effect_nerf_strength uhc.data.setup matches 1 if entity @s[predicate=!uhc:effect/strength] run return run attribute @s minecraft:attack_damage modifier remove uhc.effect.strength

# Nerf
execute if entity @s[predicate=uhc:effect/strength] run tag @s add uhc.effect.strength
execute if score #effect_nerf_strength uhc.data.setup matches 1 if entity @s[predicate=uhc:effect/strength_1] run return run attribute @s minecraft:attack_damage modifier add uhc.effect.strength -1.0 add_value
execute if score #effect_nerf_strength uhc.data.setup matches 1 if entity @s[predicate=uhc:effect/strength_2] run return run attribute @s minecraft:attack_damage modifier add uhc.effect.strength -2.0 add_value
execute if score #effect_nerf_strength uhc.data.setup matches 1 if entity @s[predicate=uhc:effect/strength_3] run return run attribute @s minecraft:attack_damage modifier add uhc.effect.strength -3.0 add_value
