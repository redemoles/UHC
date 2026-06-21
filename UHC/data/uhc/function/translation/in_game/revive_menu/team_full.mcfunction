
#> uhc:translation/in_game/revive_menu/team_full
#
# @within			uhc:in_game/player/spec/revive/new_player/menu/selection/team/id/*
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Équipe complète","color":"#FF3F3F"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Team full","color":"#FF3F3F"}]
