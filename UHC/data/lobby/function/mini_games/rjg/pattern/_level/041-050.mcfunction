
#> lobby:mini_games/rjg/pattern/_level/041-050
#
# @within			lobby:mini_games/rjg/player/new_block
#
#
# @description		Prévoir la génération d'un nouveau bloc
#

execute store result score #random_pattern lobby.rjg.block_pick run random value 1..10

execute if score #random_pattern lobby.rjg.block_pick matches 1..6 run return run scoreboard players set #pattern lobby.rjg.block_pick 01

execute if score @s lobby.rjg.block_pick matches 11..12 if score @s lobby.rjg.y matches ..14 if score #random_pattern lobby.rjg.block_pick matches 7.. if score #temp+1 lobby.rjg.score.inv matches 041.. run return run scoreboard players set #pattern lobby.rjg.block_pick 12
execute if score #random_pattern lobby.rjg.block_pick matches 7.. run return run scoreboard players set #pattern lobby.rjg.block_pick 11
