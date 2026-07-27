
#> uhc:translation/menu/load/team/page/team_join/01-16/06
#
# @within			uhc:pre_game/menu/selected/main/player/team/chosen/01-16/06
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as rejoint l'","color":"#3FE7FF","bold":false},{"text":"Équipe Vert c.","color":"green","bold":false}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"You joined the ","color":"#3FE7FF","bold":false},{"text":"Lime Team","color":"green","bold":false}]
