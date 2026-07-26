
#> uhc:start/setup/team/main
#
# @within			uhc:start/main
#
#
# @description		Fonction de configuration de la partie
#

scoreboard players operation #anonyme_team uhc.data.temp = #anonyme_team uhc.data.setup

## Mettre les joueurs dans leurs équipes
execute as @a[tag=uhc.player] run function uhc:in_game/player/misc/team_join/main
execute as @a[tag=uhc.player] run function #plugin:in_game/player/team_join
# Random Team en 2 pots
execute as @a[scores={uhc.id.team=101..}] run scoreboard players operation @s uhc.id.team %= #100 uhc.data.numbers
execute unless score #biome_paranoia uhc.scenario matches 2 as @a[tag=uhc.player] run function uhc:pre_game/player_and_team/team_join
# Biome Paranoia
scoreboard players set #team uhc.id.team 0
execute if score #biome_paranoia uhc.scenario matches 2 in uhc:lobby run function uhc:start/setup/scenario/biome_paranoia/root
# Bingo UHC
#execute if score #bhc bhc.scenario matches 02 run function bhc:start/team_shuffle/

## Id, Markers, Spawns
# Team Mode
execute if score #ffa uhc.data.setup matches 0 in uhc:lobby run function uhc:start/setup/team/team_mode/main
# FFA Mode
execute if score #ffa uhc.data.setup matches 1.. run function uhc:start/setup/team/ffa_mode/main

## Friendly Fire
execute if score #friendly_fire uhc.data.setup matches 0 run function uhc:in_game/player/pvp/settings/friendly_fire/disable
execute if score #friendly_fire uhc.data.setup matches 1 run function uhc:in_game/player/pvp/settings/friendly_fire/enable
