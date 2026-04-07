
#> uhc:pre_game/player_and_team/reset_effects
#
# @within			uhc:pre_game/player_and_team/reconnect/
#
#
# @description		Réinitialisation des effets
#

# Réinitialisation des effets
effect clear
function uhc:in_game/player/attribute/default

execute unless score @s uhc.player.online matches 1 run effect give @s minecraft:absorption 1 0 true
