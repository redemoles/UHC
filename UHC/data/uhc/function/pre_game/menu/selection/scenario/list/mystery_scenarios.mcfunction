
#> uhc:pre_game/menu/selection/scenario/list/mystery_scenarios
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Redirection
#


scoreboard players add #mystery_scenarios uhc.data.setup 1
execute if score #mystery_scenarios uhc.data.setup matches 2 run scoreboard players set #mystery_scenarios uhc.data.setup 0

function uhc:translation/menu/selected/scenario_mystery_scenario
