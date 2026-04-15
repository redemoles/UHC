
#> uhc:in_game/scenario/rewarding_longshots/100_150
#
# @within			advancement #uhc:rewarding_longshots_100_150
#
#
# @description		Joueur touché entre 100 et 150 blocs
#

execute unless score #rewarding_longshots uhc.scenario matches 1 run return fail
advancement revoke @s only uhc:rewarding_longshots_100_150

function uhc:translation/in_game/scenario/rewarding_longshots_100_150
give @s minecraft:iron_ingot 1
give @s minecraft:gold_ingot 1
give @s minecraft:diamond 1
