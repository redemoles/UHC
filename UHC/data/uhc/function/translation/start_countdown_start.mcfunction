
#> uhc:start_countdown_start
#
# @within			uhc:start/countdown/text
#
#
#
#

## FRA - Français / French
execute as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Démarrage en cours ! ","color":"#FFFFFF","bold":false}]
execute as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"\nDémarrage en cours...","color":"#CFCFCF"}]

## ENG - English
execute as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Start in progress! ","color":"#FFFFFF","bold":false}]
execute as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"\nStart in progress...","color":"#CFCFCF"}]
