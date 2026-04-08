
#> lobby:mini_games/br/
#
# @within			lobby:mini_games/
#
#
# @description		Fonction générale des Backrooms
#

scoreboard players set @s lobby.br.timer 0
tag @s add mgs.backroom
effect give @s minecraft:darkness infinite 0 true
effect give @s minecraft:invisibility infinite 0 true
effect clear @s minecraft:night_vision
