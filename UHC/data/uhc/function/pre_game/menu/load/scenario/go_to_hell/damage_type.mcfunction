
#> uhc:pre_game/menu/load/scenario/go_to_hell/damage_type
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Type de dégât Go To Hell
#


scoreboard players add #damage_type uhc.scenario.go_to_hell.settings 1
execute if score #damage_type uhc.scenario.go_to_hell.settings matches 4.. run scoreboard players set #damage_type uhc.scenario.go_to_hell.settings 1
