
#> lobby:mini_games/tc/hotbar/
#
# @within			uhc:pre_game/timer/tick_player
#
#
# @description		Hotbar
#

scoreboard players set #red_hotbar lobby.tc.data 0
execute if score #timer_game_sec lobby.tc.data matches 59 run scoreboard players set #red_hotbar lobby.tc.data 1
execute if score #timer_game lobby.tc.data matches 0..29 run scoreboard players set #red_hotbar lobby.tc.data 1

scoreboard players operation #timer_game_ms lobby.tc.data = #timer_game_tick lobby.tc.data
scoreboard players operation #timer_game_ms lobby.tc.data *= #50 uhc.data.numbers

execute if score #timer_game_sec lobby.tc.data matches 10.. run data modify storage lobby:temp timer.s set value ""
execute if score #timer_game_sec lobby.tc.data matches ..09 run data modify storage lobby:temp timer.s set value "0"

execute if score #timer_game_ms lobby.tc.data matches 0100.. run data modify storage lobby:temp timer.ms set value ""
execute if score #timer_game_ms lobby.tc.data matches 10..99 run data modify storage lobby:temp timer.ms set value "0"
execute if score #timer_game_ms lobby.tc.data matches ..0009 run data modify storage lobby:temp timer.ms set value "00"

execute if score #timer_game lobby.tc.data matches 0.. if score #red_hotbar lobby.tc.data matches 0 run function lobby:mini_games/tc/hotbar/text_gold with storage lobby:temp timer
execute if score #timer_game lobby.tc.data matches 0.. if score #red_hotbar lobby.tc.data matches 1 run function lobby:mini_games/tc/hotbar/text_red with storage lobby:temp timer

# Décompte hors mini-jeu
function uhc:translation/lobby/tc_countdown_next_game
execute if score #timer_start_tick lobby.tc.data matches 1.. run title @s actionbar [{"text":"Démarrage en cours","color":"#FFE73F","bold":true}]
execute if score #timer_end_tick lobby.tc.data matches 1.. run title @s actionbar [{"text":"Fin de jeu","color":"#FF3F3F","bold":true}]
