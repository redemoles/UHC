
#> uhc:in_game/scenario/go_to_hell/damage
#
# @within			uhc:in_game/scenario/go_to_hell/tick
#
#
# @description		Perte de vie pour tous les joueurs ayant passé 30 secondes hors du Nether
#

scoreboard players add @s uhc.scenario.go_to_hell.tick 1
execute unless score @s uhc.scenario.go_to_hell.tick matches 600.. run return fail

scoreboard players set @s uhc.scenario.go_to_hell.tick 0
execute if score #damage_type uhc.scenario.go_to_hell.settings matches 1 run scoreboard players set @s uhc.scenario.go_to_hell.damage 1
execute if score #damage_type uhc.scenario.go_to_hell.settings matches 2.. run scoreboard players add @s uhc.scenario.go_to_hell.damage 1

function uhc:translation/in_game/scenario/go_to_hell

execute store result storage uhc:go_to_hell damage int 1 run scoreboard players get @s uhc.scenario.go_to_hell.damage
function uhc:in_game/scenario/go_to_hell/damage_1 with storage uhc:go_to_hell
