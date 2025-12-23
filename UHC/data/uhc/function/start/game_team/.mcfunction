
#> uhc:start/game_team/
#
# @within			uhc:start/setup_players
#
#
# @description		Fonction de configuration de la partie
#

## Téléportation
# Points d'apparition par équipe
scoreboard players set @a[tag=uhc.player] uhc.id.spawn 0
tag @a[tag=uhc.player] add uhc.id.spawn
function uhc:in_game/tp/spawn/randomizer/primary
execute in minecraft:overworld run function uhc:in_game/tp/spawn/border_size/
execute unless score #start_in_sky uhc.data.setup matches 1 in minecraft:overworld as @a[tag=uhc.player] run function uhc:in_game/tp/spawn/default with storage uhc:temp respawn_location

# Points d'apparition dans le ciel
execute if score #start_in_sky uhc.data.setup matches 1 in minecraft:overworld run function uhc:in_game/tp/spawn/start_in_the_sky

## Équipes
# Summon markers d'équipes
summon marker 0 1 0 {Tags:["temp","UHC"]}
summon marker 0 1 0 {Tags:["temp","UHC"]}
summon marker 0 1 0 {Tags:["temp","UHC"]}
summon marker 0 1 0 {Tags:["temp","UHC"]}
# 4 → 8
execute as @e[type=marker,tag=UHC,distance=0..] run summon marker 0 1 0 {Tags:["temp","UHC"]}
# 8 → 16
execute as @e[type=marker,tag=UHC,distance=0..] run summon marker 0 1 0 {Tags:["temp","UHC"]}
# 16 → 32
execute as @e[type=marker,tag=UHC,distance=0..] run summon marker 0 1 0 {Tags:["temp","UHC"]}

# Id markers
scoreboard players set #team uhc.id.team 0
scoreboard players set #team uhc.data.temp 0
execute as @e[type=marker,tag=temp,distance=0..] run function uhc:start/game_team/id_marker
scoreboard players operation #team uhc.data.temp.inv = #team uhc.data.temp
scoreboard players operation #team uhc.scenario.ironman = #team uhc.data.temp
scoreboard players set #team uhc.id.team 0

# Taille des équipes
scoreboard players set #team_size uhc.data.temp 1
scoreboard players operation #team_size uhc.data.temp > @e[type=marker,tag=UHC,distance=0..] uhc.player.lives

# Id markers inversé (pour Bingo UHC)
scoreboard players operation #temp uhc.id.team.inverted = #team uhc.data.temp
execute as @e[type=marker,tag=UHC,distance=0..] run function uhc:start/game_team/id_marker_inverted

# Id joueur
execute as @a[tag=uhc.player] run function uhc:start/game_team/id_player
