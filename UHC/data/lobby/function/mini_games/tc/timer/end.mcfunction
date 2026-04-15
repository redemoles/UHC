
#> lobby:mini_games/tc/timer/end
#
# @within			lobby:mini_games/tc/tick
#
#
# @description		Fin d'un mini-jeu
#

scoreboard players remove #timer_end_tick lobby.tc.data 1
scoreboard players set @a[tag=mgs.tc.player] uhc.timer.respawn 0
scoreboard players set @a[tag=mgs.tc.player] uhc.player.death.temp 0

execute if score #playing_memory_build lobby.tc.data matches 1 run function lobby:mini_games/tc/timer/end_remove_wall
execute if score #playing_puzzle lobby.tc.data matches 1 run function lobby:mini_games/tc/timer/end_remove_wall

# Suppression des équipes
tag @a remove mgs.tc.team.01
tag @a remove mgs.tc.team.02

# Affiche du résultat
execute if score #timer_end_tick lobby.tc.data matches 80 as @a unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run function uhc:translation/lobby/tc_game_end
execute if score #timer_end_tick lobby.tc.data matches 80 as @a run tag @s remove mgs.tc.finished

# Suppression d'effets et d'inventaire
execute if score #timer_end_tick lobby.tc.data matches 80 as @a[tag=mgs.tc.player,tag=!mgs.tc.spec] run clear @s
execute if score #timer_end_tick lobby.tc.data matches 80 as @a[tag=mgs.tc.player] run effect clear @s
execute if score #timer_end_tick lobby.tc.data matches 80 as @a[tag=mgs.tc.player] run function uhc:player_status/attributes_and_effects/lobby/default
