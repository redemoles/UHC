
#> nzl:timer/minute
#
# @within			uhc:in_game/timer/minute
#
#
# @description		Function executed every tick
#

execute if score #minutes uhc.data.temp matches 40 as @a[scores={nzl.type.player=99}] run function nzl:types/evolve/1/succes/--- with storage nzl ---_1_chat
execute if score #minutes uhc.data.temp matches 60 as @a[scores={nzl.type.player=99}] run function nzl:types/evolve/2/succes/--- with storage nzl ---_2_chat
execute if score #minutes uhc.data.temp matches 80 as @a[scores={nzl.type.player=99}] run function nzl:types/evolve/3/succes/--- with storage nzl ---_3_chat
scoreboard players add #day nzl.data 1
execute if score #day nzl.data matches 10 run scoreboard players remove #day nzl.data 20
execute if score #minutes uhc.data.temp matches 0 run scoreboard players operation #minutes uhc.data.temp = #day nzl.data
