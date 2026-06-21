
#> uhc:translation/menu/selected/gamemode_no_bingo_generated
#
# @within			uhc:uhc:pre_game/menu/selection/gamemode/bhc/grids_check/xx/enable
#
#
#
#

## FRA - Français / French
execute as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" désactivé","color":"#FF3F3F","bold":false}]

## ENG - English
execute as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" disabled","color":"#FF3F3F","bold":false}]
