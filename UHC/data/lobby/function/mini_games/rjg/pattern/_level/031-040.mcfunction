
#> lobby:mini_games/rjg/pattern/_level/031-040
#
# @within			lobby:mini_games/rjg/player/new_block
#
#
# @description		Prévoir la génération d'un nouveau bloc
#

execute store result score #random_pattern lobby.rjg.block_pick run random value 1..10
execute if score @s lobby.rjg.block_pick matches 31 run return run scoreboard players set #pattern lobby.rjg.block_pick 01

execute if score #random_pattern lobby.rjg.block_pick matches ..4 run return run scoreboard players set #pattern lobby.rjg.block_pick 01
execute if score #random_pattern lobby.rjg.block_pick matches 5..6 run return run scoreboard players set #pattern lobby.rjg.block_pick 11
execute if score #random_pattern lobby.rjg.block_pick matches 7.. unless score @s lobby.rjg.block_pick matches 31 run return run scoreboard players set #pattern lobby.rjg.block_pick 31
