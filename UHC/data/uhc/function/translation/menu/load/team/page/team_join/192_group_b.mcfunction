
#> uhc:translation/menu/load/team/page/team_join/192_group_b
#
# @within			uhc:pre_game/menu/selected/main/player/team/chosen/192
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as rejoint les ","color":"#3FE7FF","bold":false},{"text":"Joueurs (Groupe B)","color":"#FF573F","bold":false}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"You joined the ","color":"#3FE7FF","bold":false},{"text":"Players (Group B)","color":"#FF573F","bold":false}]
