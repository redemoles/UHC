
#> lobby:mini_games/rjg/hotbar/
#
# @within			uhc:pre_game/timer/tick_player
#
#
# @description		Hotbar pour Jump
#

execute if entity @s[tag=mgs.jump.battle] run function lobby:mini_games/rjg/hotbar/battle
execute if entity @s[tag=mgs.jump.infinite] run function lobby:mini_games/rjg/hotbar/infinite
execute if entity @s[tag=mgs.jump.solo] run function lobby:mini_games/rjg/hotbar/solo
