
#> uhc:pre_game/timer/tick
#
# @within			uhc:tick
#
#
# @description		Commandes pre-game en tick
#

## Chargement du lobby
execute if score #loaded lobby.structure.data matches 0 in uhc:lobby run function lobby:lobby_map/

## Mini-jeux de lobby
execute if score #lobby lobby.structure.data matches 10..19 in uhc:lobby positioned 0 64 0 run function lobby:mini_games/tick

## Joueurs
execute as @a run function uhc:pre_game/timer/tick_player

## Random team reveal
execute if score #random_team_tick uhc.data.setup matches 0.. if score #random_team uhc.data.setup matches 1 run function uhc:pre_game/player_and_team/random_team/1_group/reveal/progressive
execute if score #random_team_tick uhc.data.setup matches 0.. if score #random_team uhc.data.setup matches 2 run function uhc:pre_game/player_and_team/random_team/2_groups/reveal/progressive

## Kill item au sol
execute as @e[type=minecraft:item,tag=!lobby.item.checked] run function uhc:pre_game/timer/tick_item
execute as @e[type=minecraft:arrow,tag=!uhc.checked] run function uhc:in_game/entity/arrow/basic
execute as @e[type=minecraft:experience_orb] run kill @s
