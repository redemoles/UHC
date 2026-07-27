
#> uhc:translation/menu/load/team/page/team_join/17-32/28
#
# @within			uhc:pre_game/menu/selected/main/player/team/chosen/17-32/28
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as rejoint l'","color":"#3FE7FF","bold":false},{"text":"♦ Équipe Rose","color":"light_purple","bold":false}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"You joined the ","color":"#3FE7FF","bold":false},{"text":"♦ Pink Team","color":"light_purple","bold":false}]
