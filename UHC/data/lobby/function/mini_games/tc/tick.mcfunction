
#> lobby:mini_games/tc/tick
#
# @within			lobby:mini_games/tick
#
#
# @description		Fonction générale de la Trial Chamber
#

# Entrée/Sortie de la salle des spectateurs
execute as @a[tag=!mgs.tc.spec,tag=!mgs.tc.player,scores={uhc.player.x=-22..22,uhc.player.y=49..50,uhc.player.z=-23..22}] run function lobby:mini_games/tc/spectators_room/when_joined
execute as @a[tag=mgs.tc.spec,tag=!mgs.tc.player,scores={uhc.player.x=0,uhc.player.y=49..50,uhc.player.z=-24}] run function lobby:mini_games/tc/spectators_room/when_left

# Entrée/Sortie de la chambre
execute as @a[scores={lobby.tc.player.click_to_join=1}] run function lobby:mini_games/tc/waiting/when_joined
execute as @a[scores={lobby.tc.player.click_to_join=-1}] run function lobby:mini_games/tc/waiting/when_left

# Condition pour lancer un mini-jeu
execute store result score #players_count lobby.tc.data if entity @a[tag=mgs.tc.player]
execute if score #timer_end_tick lobby.tc.data matches 0 if score #timer_start_tick lobby.tc.data matches 0 if score #timer_pre_start_tick lobby.tc.data matches -1 if score #timer_game lobby.tc.data matches -1 if score #players_count lobby.tc.data matches 1.. run scoreboard players set #timer_pre_start_tick lobby.tc.data 201
execute if score #timer_pre_start_tick lobby.tc.data matches 0 if score #players_count lobby.tc.data matches 1.. positioned -23 37 -23 run function lobby:mini_games/tc/timer/map_pick

# Arrêt d'un mini-jeu si personne n'est en jeu
execute unless score #timer_start_tick lobby.tc.data matches 0 if score #players_count lobby.tc.data matches 0 run function lobby:mini_games/tc/timer/end_forced
execute unless score #timer_game lobby.tc.data matches -1 if score #players_count lobby.tc.data matches 0 run function lobby:mini_games/tc/timer/end_forced

# Minuteurs
execute if score #timer_pre_start_tick lobby.tc.data matches 0.. run function lobby:mini_games/tc/timer/pre_start
execute if score #timer_start_tick lobby.tc.data matches 1.. run function lobby:mini_games/tc/timer/start
execute if score #timer_game lobby.tc.data matches 0.. run function lobby:mini_games/tc/timer/playing
execute if score #timer_end_tick lobby.tc.data matches 1.. run function lobby:mini_games/tc/timer/end
