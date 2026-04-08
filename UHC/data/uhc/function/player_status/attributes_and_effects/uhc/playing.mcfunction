
#> uhc:player_status/attributes_and_effects/uhc/playing
#
# @within			uhc:player_status/attributes_and_effects/default
#
#
# @description		Donne les effets / gamemode aux specs
#

attribute @s minecraft:attack_damage modifier remove uhc.lobby
attribute @s minecraft:fall_damage_multiplier modifier remove uhc.lobby
execute if score #no_fall uhc.scenario matches 0 run attribute @s minecraft:fall_damage_multiplier modifier remove uhc.no_fall
execute if score #no_fall uhc.scenario matches 1 run attribute @s minecraft:fall_damage_multiplier modifier add uhc.no_fall -1.0 add_multiplied_total
execute if score #hastey_boys uhc.scenario matches 0 run attribute @s minecraft:mining_efficiency modifier remove uhc.hastey_boys
execute if score #hastey_boys uhc.scenario matches 1 run attribute @s minecraft:mining_efficiency modifier add uhc.hastey_boys 10 add_value

function uhc:player_status/attributes_and_effects/default
