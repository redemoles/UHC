
#> uhc:in_game/scenario/go_to_hell/damage
#
# @within			uhc:in_game/scenario/go_to_hell/tick
#
#
# @description		Perte de vie pour tous les joueurs ayant passé 30 secondes sous la couche 150
#

scoreboard players set @s uhc.scenario.go_to_hell.tick 0
execute if score #damage_type uhc.scenario.go_to_hell.settings matches 2 run scoreboard players set @s uhc.scenario.go_to_hell.damage 0
