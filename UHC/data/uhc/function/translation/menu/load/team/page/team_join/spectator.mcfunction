
#> uhc:translation/menu/load/team/page/team_join/spectator
#
# @within			uhc:pre_game/menu/selected/main/player/team/random/91
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as rejoint les ","color":"#3F9FFF","bold":false}, {"text":"Spectateurs","color":"aqua"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"You joined the ","color":"#3F9FFF","bold":false}, {"text":"Spectators","color":"aqua"}]
