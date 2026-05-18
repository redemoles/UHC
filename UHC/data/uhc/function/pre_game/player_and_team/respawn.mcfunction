
#> uhc:pre_game/player_and_team/respawn
#
# @within			uhc:pre_game/timer/tick
#
#
# @description		Respawn
#

# Timer respawn
scoreboard players set @s uhc.player.death.temp 0

# Téléportation au centre du lobby
execute if score #lobby lobby.structure.data matches 00..09 run tp @s 0 65 0 0 0
execute if score #lobby lobby.structure.data matches 10..19 run tp @s 0 65 0 0 0

# Effets
function uhc:player_status/attributes_and_effects/lobby/default
