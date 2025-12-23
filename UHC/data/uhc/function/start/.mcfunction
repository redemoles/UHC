
#> uhc:start/
#
# @within			uhc:pre_game/menu/selection/start
#
#
# @description		Fonction de configuration de la partie
#

execute if score #tick_start uhc.data.temp matches 0.. run return fail
scoreboard players set #game_progress uhc.game_progress 1
scoreboard players set #tick_start uhc.data.temp 3

## Auto-set de la partie
execute unless score #minutes uhc.data.temp matches 0.. run scoreboard players set #tick uhc.data.temp 0
execute unless score #minutes uhc.data.temp matches 0.. run scoreboard players set #seconds uhc.data.temp 0

## Mini-jeux lobby
execute as @a[tag=mgs.backroom] run function uhc:pre_game/menu/load/tp/center
execute as @a[tag=mgs.jump.solo] run function lobby:mini_games/rjg/player/out
execute if entity @p[tag=mgs.tc.player] run function lobby:mini_games/tc/stop/
execute as @a run function uhc:pre_game/player_and_team/reset_tags
execute as @a run function uhc:pre_game/player_and_team/reset_effects

## Random team
execute if score #random_team_start uhc.data.setup matches 1 if score #random_team uhc.data.setup matches 1 run function uhc:pre_game/player_and_team/random_team/1_group/
execute if score #random_team_start uhc.data.setup matches 1 if score #random_team uhc.data.setup matches 1 if score #anonyme_team uhc.data.setup matches 0 run function uhc:pre_game/player_and_team/random_team/1_group/reveal/instant
execute if score #random_team_start uhc.data.setup matches 1 if score #random_team uhc.data.setup matches 2 run function uhc:pre_game/player_and_team/random_team/2_groups/
execute if score #random_team_start uhc.data.setup matches 1 if score #random_team uhc.data.setup matches 2 if score #anonyme_team uhc.data.setup matches 0 run function uhc:pre_game/player_and_team/random_team/2_groups/reveal/instant
