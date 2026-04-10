
#> uhc:start/game_ffa/main
#
# @within			uhc:start/setup_players
#
#
# @description		Fonction de configuration de la partie
#

## Id Joueurs + Summon d'un marker par joueur
execute as @a[tag=uhc.player] run function uhc:start/game_ffa/id_player

## Équipes
# Id Markers
scoreboard players set #team uhc.id.team 0
execute as @e[type=minecraft:marker,tag=uhc.inactive] run function uhc:start/game_ffa/marker/id
scoreboard players set #team uhc.id.team 0

# Nombre d'équipes en jeu
scoreboard players set #team_size uhc.data.temp 1
scoreboard players operation #team uhc.data.temp = #player uhc.data.temp
scoreboard players operation #team uhc.data.temp.inv = #player uhc.data.temp

## Téléportation
# Points d'apparition par joueur
execute in minecraft:overworld run spreadplayers 0 0 240 960 false @a[tag=uhc.player]
scoreboard players set @a[tag=uhc.player] uhc.player.tp 1
execute as @a[tag=uhc.player] run function uhc:in_game/player/data/pos_only
execute in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function uhc:in_game/tp/spawn/randomizer/ffa

# Points d'apparition dans le ciel
execute if score #start_in_sky uhc.data.setup matches 1 in minecraft:overworld run function uhc:in_game/tp/spawn/start_in_the_sky
execute if score #start_in_sky uhc.data.setup matches 1 as @a[tag=uhc.player] run function uhc:in_game/tp/spawn/point/macro_set
