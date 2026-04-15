
#> lobby:mini_games/tc/mini_games/ctb/start/
#
# @within			lobby:mini_games/tc/timer/start/
#
#
# @description		Démarrage du mini-jeu Capture The Block
#

# Timer pre-start
execute if score #timer_start_tick lobby.tc.data matches 300 run scoreboard players set #timer_start_tick lobby.tc.data 250

execute if score #timer_start_tick lobby.tc.data matches 250 as @a[tag=mgs.tc.player] run title @s title [{"text":"Capture The Blocks","color":"#FFE73F"}]
execute if score #timer_start_tick lobby.tc.data matches 250 as @a[tag=mgs.tc.player] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2 0.5

execute if score #timer_start_tick lobby.tc.data matches 220 as @a[tag=mgs.tc.player] run title @s title [{"text":"Capture The Blocks","color":"#FFE73F"}]
execute if score #timer_start_tick lobby.tc.data matches 220 if score #random_ctb_pick lobby.tc.data matches 1 as @a[tag=mgs.tc.player] run title @s subtitle [{"text":"Map: Copper Box","color":"#FFFFFF"}]
execute if score #timer_start_tick lobby.tc.data matches 220 if score #random_ctb_pick lobby.tc.data matches 2 as @a[tag=mgs.tc.player] run title @s subtitle [{"text":"Map: Lavarena","color":"#FFFFFF"}]
execute if score #timer_start_tick lobby.tc.data matches 220 as @a[tag=mgs.tc.player] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2 0.5

execute if score #timer_start_tick lobby.tc.data matches 131..190 run function uhc:translation/lobby/tc_ctb_start_title_1
execute if score #timer_start_tick lobby.tc.data matches 190 as @a[tag=mgs.tc.player] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2 0.5

execute if score #timer_start_tick lobby.tc.data matches 91..130 run function uhc:translation/lobby/tc_ctb_start_title_2
execute if score #timer_start_tick lobby.tc.data matches 130 as @a[tag=mgs.tc.player] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2 0.5

execute if score #timer_start_tick lobby.tc.data matches 90 as @a[tag=mgs.tc.player] run title @s title [{"text":"Capture The Blocks","color":"#FFE73F"}]
execute if score #timer_start_tick lobby.tc.data matches 90 run function uhc:translation/lobby/tc_2m40_start
execute if score #timer_start_tick lobby.tc.data matches 90 as @a[tag=mgs.tc.player] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2 0.5

execute if score #timer_start_tick lobby.tc.data matches 00 run scoreboard players set #timer_game_min lobby.tc.data 2
execute if score #timer_start_tick lobby.tc.data matches 00 run scoreboard players set #timer_game_sec lobby.tc.data 40
execute if score #timer_start_tick lobby.tc.data matches 00 run scoreboard players set #timer_game lobby.tc.data 160

execute if score #timer_start_tick lobby.tc.data matches 250 if score #random_ctb_pick lobby.tc.data matches 1 run function uhc:translation/lobby/tc_ctb_start_map_copper_box
execute if score #timer_start_tick lobby.tc.data matches 250 if score #random_ctb_pick lobby.tc.data matches 2 run function uhc:translation/lobby/tc_ctb_start_map_lavarena

execute if score #timer_start_tick lobby.tc.data matches 250 as @a[tag=mgs.tc.player,tag=!mgs.tc.spec] run give @s minecraft:arrow 16

execute if score #timer_start_tick lobby.tc.data matches 00 as @a[tag=mgs.tc.player,tag=!mgs.tc.spec] run effect clear @s
execute if score #timer_start_tick lobby.tc.data matches 00 as @a[tag=mgs.tc.player,tag=!mgs.tc.spec] run attribute @s minecraft:attack_damage modifier remove uhc.lobby
execute if score #timer_start_tick lobby.tc.data matches 00 in uhc:lobby run gamerule minecraft:pvp true
