
#> lobby:mini_games/rjg/tick
#
# @within			lobby:mini_games/tick
#
#
# @description		Tick
#

# Timer
execute unless entity @s[tag=mgs.jump.infinite] run function lobby:mini_games/rjg/player/timer/ms

execute if entity @s[tag=mgs.jump.infinite] at @s run function lobby:mini_games/rjg/player/
