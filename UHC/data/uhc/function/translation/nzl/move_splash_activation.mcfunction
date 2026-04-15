
#> uhc:translation/nzl/move_splash_activation
#
# @within			nzl:types/move/attack_activation/---
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nTrempette utilisée. Rien ne se passe.\n","color":"#3F9FFF","bold":true}]

execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nSplash used. Nothing happens.","color":"#3F9FFF","bold":true}]
