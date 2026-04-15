
#> uhc:in_game/scenario/rewarding_longshots/30_50
#
# @within			advancement #uhc:rewarding_longshots_30_50
#
#
# @description		Joueur touché entre 30 et 50 blocs
#

execute unless score #rewarding_longshots uhc.scenario matches 1 run return fail
advancement revoke @s only uhc:rewarding_longshots_30_50

function uhc:translation/in_game/scenario/rewarding_longshots_30_50
give @s minecraft:iron_ingot 1
