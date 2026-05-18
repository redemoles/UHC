
#> uhc:pre_game/timer/tick
#
# @within			uhc:tick
#
#
# @description		Commandes pre-game en tick
#

## Chargement du lobby
execute if score #loaded lobby.structure.data matches 0 run function lobby:lobby_map/

## Mini-jeux de lobby
execute if score #lobby lobby.structure.data matches 10..19 positioned 0 64 0 run function lobby:mini_games/tick

## Joueurs
execute as @a run function uhc:pre_game/timer/tick_player
execute as @e[type=minecraft:player,scores={uhc.player.death.temp=1..},tag=!mgs.tc.player] run function uhc:pre_game/player_and_team/respawn
scoreboard players set @a uhc.player.data.check 0

## Random team progressive reveal
execute if score #random_team_tick uhc.data.setup matches 0.. if score #random_team uhc.data.setup matches 1 run function uhc:pre_game/player_and_team/random_team/1_pot/reveal/progressive
execute if score #random_team_tick uhc.data.setup matches 0.. if score #random_team uhc.data.setup matches 2 run function uhc:pre_game/player_and_team/random_team/2_pots/reveal/progressive

## Kill item au sol
execute as @e[type=minecraft:item,distance=0..,tag=!lobby.checked] run function uhc:pre_game/entity/item
execute as @e[type=minecraft:arrow,distance=0..,tag=!uhc.checked] run function uhc:in_game/entity/arrow/basic
execute as @e[predicate=uhc:entity_in_lobby,distance=0..,tag=!lobby.checked] run function uhc:pre_game/entity/unauthorized
