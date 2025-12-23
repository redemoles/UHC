
#> lobby:mini_games/rjg/pattern/wall_jump/
#
# @within			lobby:mini_games/rjg/pattern/
#
#
# @description		Position du nouveau bloc
#

## Aléatoire de la position du nouveau bloc
# Z
scoreboard players set #new_block lobby.rjg.z 4
# Y
execute if score @s lobby.rjg.block_pick matches 31 run scoreboard players set #new_block lobby.rjg.y -1
# X
execute store result score #new_block lobby.rjg.x run random value 1..4
execute if score #new_block lobby.rjg.x matches 3..4 store result score #new_block lobby.rjg.x run random value -2..-1
execute if score @s lobby.rjg.wall_jump matches 1 store result score #new_block lobby.rjg.x run random value -2..-1
execute if score @s lobby.rjg.wall_jump matches -1 store result score #new_block lobby.rjg.x run random value 1..2
execute if score #temp+2 lobby.rjg.score.inv matches 031.. if score #new_block lobby.rjg.x matches -1..1 run scoreboard players operation #new_block lobby.rjg.x *= #02 uhc.data.numbers
execute if score @s lobby.rjg.block_pick matches 11..12 if score #new_block lobby.rjg.x matches -1..1 run scoreboard players operation #new_block lobby.rjg.x *= #02 uhc.data.numbers

## Vérifie si le bloc est dans la zone prévue pour le joueur
# X
scoreboard players operation #temp lobby.rjg.x = @s lobby.rjg.x
scoreboard players operation #temp lobby.rjg.x += #new_block lobby.rjg.x
execute unless score #temp lobby.rjg.x matches -15..15 run scoreboard players operation #new_block lobby.rjg.x *= #-1 uhc.data.numbers

## Enregistrement de la position du nouveau bloc
execute store result storage rjg:temp new_block.x int 1 run scoreboard players get #new_block lobby.rjg.x
execute store result storage rjg:temp new_block.y int 1 run scoreboard players get #new_block lobby.rjg.y
execute store result storage rjg:temp new_block.z int 1 run scoreboard players get #new_block lobby.rjg.z

scoreboard players operation @s lobby.rjg.x += #new_block lobby.rjg.x
scoreboard players operation @s lobby.rjg.y += #new_block lobby.rjg.y

execute unless score #new_block lobby.rjg.x matches -1 unless score #new_block lobby.rjg.x matches 2 run scoreboard players set #wall_jump lobby.rjg.wall_jump -1
execute unless score #new_block lobby.rjg.x matches -2 unless score #new_block lobby.rjg.x matches 1 run scoreboard players set #wall_jump lobby.rjg.wall_jump 1

execute as @n[type=marker,tag=mgs.jump.marker,distance=0..,predicate=lobby:rjg/id_player,predicate=lobby:rjg/id_block_and_1] at @s run function lobby:mini_games/rjg/pattern/wall_jump/place with storage rjg:temp new_block
execute as @n[type=marker,tag=mgs.jump.marker,distance=0..,predicate=lobby:rjg/id_player,predicate=lobby:rjg/id_block_less_1] at @s run function lobby:mini_games/rjg/marker/kill
