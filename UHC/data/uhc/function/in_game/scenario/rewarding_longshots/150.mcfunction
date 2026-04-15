
#> uhc:in_game/scenario/rewarding_longshots/150
#
# @within			advancement #uhc:rewarding_longshots_150
#
#
# @description		Joueur touché à + de 150 blocs
#

execute unless score #rewarding_longshots uhc.scenario matches 1 run return fail
advancement revoke @s only uhc:rewarding_longshots_150

function uhc:translation/in_game/scenario/rewarding_longshots_150
give @s minecraft:iron_ingot 2
give @s minecraft:gold_ingot 3
give @s minecraft:diamond 5
