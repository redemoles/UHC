
#> uhc:in_game/player/spec/revive/new_player/tick
#
# @within			uhc:in_game/player/tick
#
#
# @description		Resurrection d'un spectateur
#

## Téléportation au centre
function uhc:in_game/player/data/pos_only
execute if score @s uhc.player.y matches ..-1 run tp @s 0 65 0 0 0

## Effets bonus
# Night Vision
execute unless score #nzl uhc.gamemode matches 1 run effect give @s[tag=uhc.night_vision] minecraft:night_vision infinite 0 true
execute if entity @s[tag=!uhc.night_vision] run effect clear @s minecraft:night_vision

## Équipe rejointe > Intégration du joueur dans la partie
execute if score @s uhc.menu.revive matches 99 run return run function uhc:in_game/player/spec/revive/new_player/cancel
execute if score @s uhc.menu.revive matches 1.. run function uhc:in_game/player/spec/revive/new_player/team_joined/player
