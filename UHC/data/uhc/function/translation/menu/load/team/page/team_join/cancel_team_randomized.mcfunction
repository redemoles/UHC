
#> uhc:translation/menu/load/team/page/team_join/cancel_team_randomized
#
# @within			uhc:pre_game/menu/selected/main/player/team/*
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu ne peux pas quitter ton équipe car elles ont déjà été générées.","color":"#FF3F3F","bold":false}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"You can't leave your team because they've already been generated.","color":"#FF3F3F","bold":false}]
