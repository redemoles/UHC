
#> uhc:player_status/attributes_and_effects/respawning/scenario
#
# @within			uhc:player_status/attributes_and_effects/respawning/end
#
#
# @description		Donne les effets / gamemode aux specs
#

execute if score #no_fall uhc.scenario matches 1 run attribute @s minecraft:fall_damage_multiplier modifier add uhc.no_fall -1.0 add_multiplied_total
execute if score #hastey_boys uhc.scenario matches 1 run attribute @s minecraft:mining_efficiency modifier add uhc.hastey_boys 10 add_value
