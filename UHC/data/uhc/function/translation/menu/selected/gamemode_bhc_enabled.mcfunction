
#> uhc:translation/menu/selected/gamemode_no_bingo_generated
#
# @within			uhc:uhc:pre_game/menu/selection/gamemode/bhc/grids_check/xx/enable
#
#
#
#

## FRA - Français / French
execute as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"Classique","color":"#FFE73F","bold":true},{"text":" activé","color":"#3FE7FF","bold":false}]

## ENG - English
execute as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"Classic","color":"#FFE73F","bold":true},{"text":" enabled","color":"#3FE7FF","bold":false}]
