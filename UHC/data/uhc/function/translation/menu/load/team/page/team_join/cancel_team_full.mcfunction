
#> uhc:translation/menu/load/team/page/team_join/cancel_team_full
#
# @within			uhc:pre_game/menu/selected/main/player/team/chosen/*
# @within			uhc:in_game/player/spec/revive/new_player/menu/selection/team/id/*
# @within			uhc:in_game/player/spec/revive/new_player/team_joined/player
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Équipe complète","color":"#FF3F3F"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Team full","color":"#FF3F3F"}]
