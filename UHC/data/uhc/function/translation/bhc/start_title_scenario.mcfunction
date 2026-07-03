
#> uhc:translation/bhc/start_title_scenario
#
# @within			uhc:start/countdown/text_bhc
#
#
#
#

## FRA - Français / French
execute if score #bhc bhc.scenario matches 00 as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Classique ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 01 as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Ruée Vers l'Or ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 02 as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Ère Viking ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 51 as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Inversion ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 91..98 as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Chill Mode ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 99 as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Démarrage en cours ! ","color":"#FFFFFF","bold":false}]

## ENG - English
execute if score #bhc bhc.scenario matches 00 as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Classic ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 01 as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Gold Rush ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 02 as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Viking Era ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 51 as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Inverted ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 91..98 as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Chill Mode ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 99 as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Start in progress! ","color":"#FFFFFF","bold":false}]
