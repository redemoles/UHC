
#> uhc:start/game_team/main
#
# @within			uhc:start/setup_players
#
#
# @description		Fonction de configuration de la partie
#

## Id Joueurs
execute as @a[tag=uhc.player] run function uhc:start/game_team/id_player

## Équipes
# Summon markers d'équipes
summon marker 0 1 0 {Tags:["uhc.inactive"]}
summon marker 0 1 0 {Tags:["uhc.inactive"]}
summon marker 0 1 0 {Tags:["uhc.inactive"]}
summon marker 0 1 0 {Tags:["uhc.inactive"]}
# 4 → 8
execute as @e[type=minecraft:marker,tag=uhc.inactive,distance=0..] run summon marker 0 1 0 {Tags:["uhc.inactive"]}
# 8 → 16
execute as @e[type=minecraft:marker,tag=uhc.inactive,distance=0..] run summon marker 0 1 0 {Tags:["uhc.inactive"]}
# 16 → 32
execute as @e[type=minecraft:marker,tag=uhc.inactive,distance=0..] run summon marker 0 1 0 {Tags:["uhc.inactive"]}

# Id markers
scoreboard players set #team uhc.id.team 0
scoreboard players set #team uhc.data.temp 0
execute store result score #temp uhc.id.team.inverted if entity @e[type=minecraft:marker,tag=uhc.inactive,distance=0..]
execute as @e[type=minecraft:marker,tag=uhc.inactive,distance=0..] run function uhc:start/game_team/marker/id
scoreboard players operation #team uhc.data.temp.inv = #team uhc.data.temp
scoreboard players operation #team uhc.scenario.ironman = #team uhc.data.temp
scoreboard players set #team uhc.id.team 0

# Taille des équipes pour cette partie
scoreboard players set #team_size uhc.data.temp 1
scoreboard players operation #team_size uhc.data.temp > @e[type=minecraft:marker,tag=UHC,distance=0..] uhc.player.lives

## Téléportation
# Points d'apparition par équipe
scoreboard players set #spawn uhc.id.spawn 0
tag @a[tag=uhc.player] add uhc.id.spawn.temp
execute if entity @p[tag=uhc.id.spawn.temp] run function uhc:in_game/tp/spawn/randomizer/primary
execute in minecraft:overworld run function uhc:in_game/tp/spawn/border_size/main
execute unless score #start_in_sky uhc.data.setup matches 1 in minecraft:overworld as @a[tag=uhc.player] run function uhc:in_game/tp/spawn/default
# Points d'apparition dans le ciel
execute if score #start_in_sky uhc.data.setup matches 1 in minecraft:overworld run function uhc:in_game/tp/spawn/start_in_the_sky
execute if score #start_in_sky uhc.data.setup matches 1 as @a[tag=uhc.player] run function uhc:in_game/tp/spawn/point/macro_set
