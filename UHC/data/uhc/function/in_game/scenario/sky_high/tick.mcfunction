
#> uhc:in_game/scenario/sky_high/tick
#
# @within			uhc:in_game/player/tick
#
#
# @description		Test si le joueur a cumulé 30 secondes sous la couche autorisée
#

execute unless score @s uhc.player.data.check matches 1 run function uhc:in_game/player/data/main
$execute if score @s uhc.player.y matches $(height).. run function uhc:in_game/scenario/sky_high/stop
$execute if score @s uhc.player.y matches ..$(height) run function uhc:in_game/scenario/sky_high/damage
