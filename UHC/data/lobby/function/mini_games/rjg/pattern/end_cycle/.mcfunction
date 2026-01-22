
#> lobby:mini_games/rjg/pattern/end_cycle/
#
# @within			lobby:mini_games/rjg/pattern/
#
#
# @description		Position du nouveau bloc
#

## Aléatoire de la position du nouveau bloc
# Z
execute store result score #new_block lobby.rjg.z run random value 1..6
execute if score #new_block lobby.rjg.z matches 1..2 run scoreboard players set #new_block lobby.rjg.z 3
execute if score #new_block lobby.rjg.z matches 6 run scoreboard players set #new_block lobby.rjg.z 4
execute if score @s lobby.rjg.y matches 3.. run scoreboard players set #new_block lobby.rjg.z 7
# Z → 2b
execute if score #new_block lobby.rjg.z matches 3 store result score #new_block lobby.rjg.x run random value 2..3
execute if score #new_block lobby.rjg.z matches 3 if score #new_block lobby.rjg.x matches 2 run scoreboard players set #new_block lobby.rjg.x -3
execute if score #new_block lobby.rjg.z matches 3 store result score #new_block lobby.rjg.y run random value 0..1
# Z → 3b
execute if score #new_block lobby.rjg.z matches 4 store result score #new_block lobby.rjg.x run random value -2..2
execute if score #new_block lobby.rjg.z matches 4 if score #new_block lobby.rjg.x matches -1..1 store result score #new_block lobby.rjg.y run random value 0..1
# Z → 4b
execute if score #new_block lobby.rjg.z matches 5 store result score #new_block lobby.rjg.x run random value -1..1
# Z → 7b
execute if score #new_block lobby.rjg.z matches 7 run scoreboard players set #new_block lobby.rjg.y -5
execute if score #new_block lobby.rjg.z matches 7 store result score #new_block lobby.rjg.x run random value -1..1

# Wall Jump
execute unless score @s lobby.rjg.y matches 3.. unless score @s lobby.rjg.wall_jump matches 0 run scoreboard players set #new_block lobby.rjg.z 4
execute unless score @s lobby.rjg.y matches 3.. unless score @s lobby.rjg.wall_jump matches 0 run scoreboard players set #new_block lobby.rjg.y 0
execute unless score @s lobby.rjg.y matches 3.. if score @s lobby.rjg.wall_jump matches 01 store result score #new_block lobby.rjg.x run random value -1..0
execute unless score @s lobby.rjg.y matches 3.. if score @s lobby.rjg.wall_jump matches -1 store result score #new_block lobby.rjg.x run random value 00..1

## Vérifie si le bloc est dans la zone prévue pour le joueur
# X
scoreboard players operation #temp lobby.rjg.x = @s lobby.rjg.x
scoreboard players operation #temp lobby.rjg.x += #new_block lobby.rjg.x
execute unless score #temp lobby.rjg.x matches -15..15 run scoreboard players operation #new_block lobby.rjg.x *= #-1 uhc.data.numbers
execute unless score #temp lobby.rjg.x matches -15..15 unless score @s lobby.rjg.wall_jump matches 0 run scoreboard players set #new_block lobby.rjg.x 0

## Enregistrement de la position du nouveau bloc
execute store result storage rjg:temp new_block.x int 1 run scoreboard players get #new_block lobby.rjg.x
execute store result storage rjg:temp new_block.y int 1 run scoreboard players get #new_block lobby.rjg.y
execute store result storage rjg:temp new_block.z int 1 run scoreboard players get #new_block lobby.rjg.z

scoreboard players operation @s lobby.rjg.x += #new_block lobby.rjg.x
scoreboard players operation @s lobby.rjg.y += #new_block lobby.rjg.y

execute as @n[type=marker,tag=mgs.jump.marker,distance=0..,predicate=lobby:rjg/id_player,predicate=lobby:rjg/id_block_and_1] at @s run function lobby:mini_games/rjg/pattern/end_cycle/place with storage rjg:temp new_block
execute as @n[type=marker,tag=mgs.jump.marker,distance=0..,predicate=lobby:rjg/id_player,predicate=lobby:rjg/id_block_less_1] at @s run function lobby:mini_games/rjg/marker/kill

scoreboard players add @s lobby.rjg.full_cycle 1
