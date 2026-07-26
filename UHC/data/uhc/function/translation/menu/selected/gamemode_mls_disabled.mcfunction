
#> uhc:translation/menu/selected/gamemode_mls_disabled
#
# @within			uhc:pre_game/menu/selected/gamemode/bhc/grids_check/xx/enable
#
#
#
#

## FRA - Français / French
execute as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Moles","color":"#E73F3F"},{"text":" désactivé","color":"#FF3F3F"}]

## ENG - English
execute as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Moles","color":"#E73F3F"},{"text":" disabled","color":"#FF3F3F"}]
