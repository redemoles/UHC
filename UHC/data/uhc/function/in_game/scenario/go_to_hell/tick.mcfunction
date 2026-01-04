
#> uhc:in_game/scenario/go_to_hell/tick
#
# @within			uhc:in_game/player/tick
#
#
# @description		Test si le joueur a cumulé 30 secondes hors du Nether
#

execute if dimension the_nether run scoreboard players set @s uhc.scenario.go_to_hell.tick 0
execute unless dimension the_nether run scoreboard players add @s uhc.scenario.go_to_hell.tick 1
execute if score @s uhc.scenario.go_to_hell.tick matches 600.. run function uhc:in_game/scenario/go_to_hell/damage
