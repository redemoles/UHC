
#> uhc:translation/menu/load/team/page/team_join/17-32/31
#
# @within			uhc:pre_game/menu/selected/main/player/team/chosen/17-32/31
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as rejoint l'","color":"#3FE7FF","bold":false},{"text":"♦ Équipe Gris f.","color":"dark_gray","bold":false}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"You joined the ","color":"#3FE7FF","bold":false},{"text":"♦ D. Gray Team","color":"dark_gray","bold":false}]
