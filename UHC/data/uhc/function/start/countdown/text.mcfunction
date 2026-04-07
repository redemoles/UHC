
#> uhc:start/countdown/title
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Lancement de la partie
#

# Message
execute as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"\nDémarrage en cours...","color":"#CFCFCF"}]
execute as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"\nStart in progress...","color":"#CFCFCF"}]

# Title
title @a reset
execute if score #vanilla uhc.gamemode matches 1 run title @a title [{"text":"UHC","color":"#3FE7FF","bold":false}]
execute if score #bhc uhc.gamemode matches 1 run return run function uhc:start/countdown/text_bhc
execute if score #mls uhc.gamemode matches 1 run title @a title [{"text":"Moles","color":"#E73F3F","bold":false}]
execute if score #nzl uhc.gamemode matches 1 run title @a title [{"text":"Nuzlocke","color":"#3F9FFF","bold":false},{"text":" UHC","color":"#FFE73F","bold":false}]
execute as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Démarrage en cours ! ","color":"#FFFFFF","bold":false}]
execute as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Start in progress! ","color":"#FFFFFF","bold":false}]
