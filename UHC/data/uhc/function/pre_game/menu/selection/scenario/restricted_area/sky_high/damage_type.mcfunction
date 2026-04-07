
#> uhc:pre_game/menu/selection/scenario/restricted_area/sky_high/damage_type
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Type de dégât Sky High
#


scoreboard players add #damage_type uhc.scenario.sky_high.settings 1
execute if score #damage_type uhc.scenario.sky_high.settings matches 4.. run scoreboard players set #damage_type uhc.scenario.sky_high.settings 1
