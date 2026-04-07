
#> lobby:mini_games/tc/player_attribute/default
#
# @within			lobby:mini_games/tc/waiting/when_left
#
#
# @description		Joueur détecté voulant quitter la chambre ou la liste d'attente
#

attribute @s minecraft:attack_damage modifier remove uhc.waiting_respawn
attribute @s minecraft:attack_damage modifier add uhc.lobby -1.0 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier remove uhc.lobby
attribute @s minecraft:jump_strength modifier remove uhc.waiting_start
attribute @s minecraft:jump_strength modifier remove uhc.waiting_respawn
attribute @s minecraft:max_health modifier remove lobby.tc.os_pve
attribute @s minecraft:movement_speed modifier remove uhc.waiting_respawn
effect give @s minecraft:instant_health 1 9 true
effect give @s minecraft:saturation infinite 0 true
effect give @s minecraft:fire_resistance infinite 0 true
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:instant_health infinite 1 true
