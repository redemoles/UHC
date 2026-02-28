
#> uhc:in_game/scenario/sky_high/tick
#
# @within			uhc:in_game/player/tick
#
#
# @description		Test si le joueur a cumulé 30 secondes sous la couche 150
#

$execute if entity @s[y=$(height),dy=240] run function uhc:in_game/scenario/sky_high/stop
$execute if entity @s[y=$(height),dy=-320] run function uhc:in_game/scenario/sky_high/damage
