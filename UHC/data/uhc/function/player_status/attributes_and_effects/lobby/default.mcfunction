
#> uhc:player_status/attributes_and_effects/lobby/default
#
# @within			lobby:mini_games/tc/waiting/when_left
# @within			uhc:player_status/attributes_and_effects/reset
# @within			uhc:player_status/attributes_and_effects/lobby/mini_games/tc/launching_game/start
# @description		Donne les effets / gamemode aux specs
#

attribute @s minecraft:attack_damage modifier add uhc.lobby -1.0 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier add uhc.lobby -1.0 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier remove uhc.no_fall

attribute @s minecraft:mining_efficiency modifier remove uhc.hastey_boys

effect give @s minecraft:instant_health 1 9 true
effect give @s minecraft:saturation infinite 0 true
effect give @s minecraft:fire_resistance infinite 0 true
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:instant_health infinite 1 true
effect give @s[tag=uhc.night_vision] minecraft:night_vision infinite 0 true

function uhc:player_status/attributes_and_effects/default
