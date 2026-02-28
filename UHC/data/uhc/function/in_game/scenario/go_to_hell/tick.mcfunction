
#> uhc:in_game/scenario/go_to_hell/tick
#
# @within			uhc:in_game/player/tick
#
#
# @description		Test si le joueur a cumulé 30 secondes hors du Nether
#

execute if entity @s[predicate=uhc:dimension/the_nether] run function uhc:in_game/scenario/go_to_hell/stop
execute if entity @s[predicate=!uhc:dimension/the_nether] run function uhc:in_game/scenario/go_to_hell/damage
