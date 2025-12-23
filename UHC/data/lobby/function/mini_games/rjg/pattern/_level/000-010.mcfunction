
#> lobby:mini_games/rjg/pattern/_level/000-010
#
# @within			lobby:mini_games/rjg/player/new_block
#
#
# @description		Prévoir la génération d'un nouveau bloc
#

execute store result score #random_pattern lobby.rjg.block_pick run random value 1..10

execute if score #cycle_temp+2 lobby.rjg.score.inv matches 001..005 run return run scoreboard players set #pattern lobby.rjg.block_pick 01
execute if score #cycle_temp+2 lobby.rjg.score.inv matches 006.. if score #random_pattern lobby.rjg.block_pick matches ..8 run return run scoreboard players set #pattern lobby.rjg.block_pick 01
execute if score #cycle_temp+2 lobby.rjg.score.inv matches 006.. if score #random_pattern lobby.rjg.block_pick matches 9.. run return run scoreboard players set #pattern lobby.rjg.block_pick 02
