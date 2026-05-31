
#> uhc:in_game/tp/spawn/point/tp
#
# @within			uhc:in_game/tp/spawn/default
#
#
# @description		Téléportation au point d'apparition d'équipe
#

$forceload add $(x) $(z)
$execute positioned $(x) 300 $(z) run tp @s ~ ~ ~ 0.0 0.0
