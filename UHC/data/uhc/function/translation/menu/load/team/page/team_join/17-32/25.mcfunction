
#> uhc:translation/menu/load/team/page/team_join/17-32/25
#
# @within			uhc:pre_game/menu/selected/main/player/team/chosen/17-32/25
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as rejoint l'","color":"#3FE7FF","bold":false},{"text":"♦ Équipe Rouge c.","color":"red","bold":false}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"You joined the ","color":"#3FE7FF","bold":false},{"text":"♦ L. Red Team","color":"red","bold":false}]
