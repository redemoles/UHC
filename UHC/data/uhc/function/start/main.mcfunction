
#> uhc:start/main
#
# @within			uhc:pre_game/menu/selection/start
#
#
# @description		Configuration de la partie
#

execute if score #tick_start uhc.data.temp matches 0.. run return fail
scoreboard players set #game_progress uhc.game_progress 1
scoreboard players set #tick_start uhc.data.temp 3

## Auto-set de la partie
execute unless score #minutes uhc.data.temp matches 0.. run scoreboard players set #tick uhc.data.temp 0
execute unless score #minutes uhc.data.temp matches 0.. run scoreboard players set #seconds uhc.data.temp 0

## Mini-jeux lobby
execute as @a[tag=mgs.backroom] run function uhc:pre_game/menu/selection/tp/center
execute as @a[tag=mgs.jump] run function lobby:mini_games/rjg/player/out
execute if entity @p[tag=mgs.tc.player] run function lobby:mini_games/tc/stop/main
execute as @a run function uhc:pre_game/player_and_team/reset_effects
execute as @a run function uhc:pre_game/player_and_team/reset_tags

## Joueurs
function uhc:start/setup/player/before_tp

## Scenarios
execute if score #enchanting_setup uhc.scenario matches 1 run summon marker 0 100 0 {Tags:["uhc.scenario.enchanting_setup"]}
execute if score #enchanting_setup uhc.scenario matches 1 as @n[type=minecraft:marker,nbt={Tags:["uhc.scenario.enchanting_setup"]}] run function uhc:start/setup/scenario/enchanting_setup/

## Configuration Worldborder
function uhc:start/setup/uhc/border

## Équipes
function uhc:start/setup/team/main

## Génération des rivières
execute if score #river_solid uhc.data.setup matches 0 in minecraft:overworld run function uhc:start/setup/river/vanilla
execute if score #river_solid uhc.data.setup matches 1 in minecraft:overworld run function uhc:start/setup/river/solid

## Hotbar
execute if score #player uhc.data.temp matches ..1 run data modify storage uhc:temp hotbar.player set value ""
execute if score #team uhc.data.temp matches ..1 run data modify storage uhc:temp hotbar.team set value ""
execute if score #player uhc.data.temp matches 2.. run data modify storage uhc:temp hotbar.player set value "s"
execute if score #team uhc.data.temp matches 2.. run data modify storage uhc:temp hotbar.team set value "s"
