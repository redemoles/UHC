
#> uhc:in_game/player/trigger
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Fonction tick de base en jeu pour chaque joueur
#

## Général
# Night Vision
execute if score @s uhc.night_vision matches 1 run function uhc:in_game/player/effect/night_vision
# Info personnel et des autres équipes
execute if score @s uhc.info.me matches 1 run function uhc:in_game/player/misc/info/me
execute if score @s uhc.info.team matches 1 run function uhc:in_game/player/misc/info/team/list
execute if score @s uhc.info.team.temp matches 1.. run function uhc:in_game/player/misc/info/team/bhc/

## Scénarios
# Ironman
execute if score #player uhc.scenario.ironman matches 0.. if score @s uhc.ironman.list matches 1 run function uhc:in_game/scenario/ironman/list
# Best PvE
execute if score #best_pve uhc.scenario matches 1 if score @s uhc.best_pve.list matches 1 run function uhc:in_game/scenario/best_pve/list

## Spectateur
# Téléportation à un joueur
execute if score @s uhc.spec.tp matches 1.. run function uhc:in_game/player/spec/tp_to_player/main
# Info spec
execute if score @s uhc.spec_info.all matches 1 run function uhc:in_game/player/spec/spec_info_trigger/all
execute if score @s uhc.spec_info.none matches 1 run function uhc:in_game/player/spec/spec_info_trigger/none
execute if score @s uhc.spec_info.blood_diamond matches 1 run function uhc:in_game/player/spec/spec_info_trigger/blood_diamond
execute if score @s uhc.spec_info.pve matches 1 run function uhc:in_game/player/spec/spec_info_trigger/pve
execute if score @s uhc.spec_info.pvp matches 1 run function uhc:in_game/player/spec/spec_info_trigger/pvp
