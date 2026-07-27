
#> uhc:translation/menu/load/team/page/team_join/092_group_a
#
# @within			uhc:pre_game/menu/selected/main/player/team/chosen/92
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as rejoint les ","color":"#3FE7FF","bold":false},{"text":"Joueurs (Groupe A)","color":"#3F57FF","bold":false}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"You joined the ","color":"#3FE7FF","bold":false},{"text":"Players (Group A)","color":"#3F57FF","bold":false}]
