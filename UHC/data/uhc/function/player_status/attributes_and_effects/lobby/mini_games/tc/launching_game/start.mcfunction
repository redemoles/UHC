
#> uhc:player_status/attributes_and_effects/lobby/mini_games/tc/launching_game/start
#
# @within			lobby:mini_games/tc/timer/start
#
#
# @description		Démarrage d'un mini-jeu
#

function uhc:player_status/attributes_and_effects/lobby/default

attribute @s minecraft:jump_strength modifier add uhc.waiting_start -1.0 add_multiplied_total
attribute @s minecraft:movement_speed modifier add uhc.waiting_start -1.0 add_multiplied_total
effect give @s minecraft:blindness infinite 0 true
effect give @s minecraft:invisibility infinite 0 true

effect give @s minecraft:instant_health 1 9 true
