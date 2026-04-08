
#> uhc:player_status/attributes_and_effects/lobby/mini_games/tc/launching_game/end
#
# @within			lobby:mini_games/tc/timer/start
#
#
# @description		Démarrage d'un mini-jeu
#

attribute @s minecraft:jump_strength modifier remove uhc.waiting_start
attribute @s minecraft:movement_speed modifier remove uhc.waiting_start
effect clear @s minecraft:blindness
effect clear @s minecraft:invisibility

attribute @s minecraft:fall_damage_multiplier modifier remove uhc.lobby
