
#> uhc:in_game/scenario/rewarding_longshots/50_100
#
# @within			advancement #uhc:rewarding_longshots_50_100
#
#
# @description		Joueur touché entre 50 et 100 blocs
#

execute unless score #rewarding_longshots uhc.scenario matches 1 run return fail
advancement revoke @s only uhc:rewarding_longshots_50_100

function uhc:translation/in_game/scenario/rewarding_longshots_50_100
give @s minecraft:iron_ingot 1
give @s minecraft:gold_ingot 1

