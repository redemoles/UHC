
#> lobby:mini_games/rjg/hotbar/root
#
# @within			uhc:pre_game/timer/tick_player
#
#
# @description		Hotbar pour Jump
#

execute if entity @s[tag=mgs.jump.race] run function lobby:mini_games/rjg/hotbar/race
execute if entity @s[tag=mgs.jump.infinite] run function uhc:translation/hotbar/lobby_rjg_infinite
execute if entity @s[tag=mgs.jump.speedrun] run function lobby:mini_games/rjg/hotbar/speedrun
