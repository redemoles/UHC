
#> nzl:timer/second
#
# @within			uhc:in_game/timer/second
#
#
# @description		Function toutes les secondes
#

scoreboard players add #second_base_10 nzl.data 1
execute if score #second_base_10 nzl.data matches 10 run scoreboard players set #second_base_10 nzl.data 0

scoreboard players add #second_base_20 nzl.data 1
execute if score #second_base_20 nzl.data matches 20 run scoreboard players set #second_base_20 nzl.data 0

execute if score * uhc.player.kills matches 1.. run scoreboard objectives setdisplay sidebar uhc.player.kills
execute unless entity @p[scores={nzl.type.player=99}] run scoreboard objectives setdisplay sidebar uhc.player.kills
execute if entity @p[scores={nzl.type.player=99}] if score #second_base_20 nzl.data matches 0..9 run scoreboard objectives setdisplay sidebar nzl.type.display

scoreboard players set #nbr_marker nzl.type.display 0
execute store result score #nbr_marker nzl.type.display if entity @e[type=marker,tag=nzl.type]
