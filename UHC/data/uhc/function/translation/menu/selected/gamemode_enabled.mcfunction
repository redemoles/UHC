
#> uhc:translation/menu/selected/gamemode_enabled
#
# @within			uhc:pre_game/menu/selected/gamemode/bhc/grids_check/xx/enable
#
#
#
#

## FRA - Français / French
$execute as @a[scores={uhc.player.lang=061801}] run tellraw @s [$(fra),{"text":" activé","color":"#3FE7FF"}]

## ENG - English
$execute as @a[scores={uhc.player.lang=051407}] run tellraw @s [$(eng),{"text":" enabled","color":"#3FE7FF"}]
