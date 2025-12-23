
#> uhc:start/countdown/title
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Text
#

execute unless score #bhc bhc.scenario matches 02.. run title @a title [{"text":"Bingo","color":"#B73FFF","bold":false},{"text":" UHC","color":"#FFE73F","bold":false}]
execute if score #bhc bhc.scenario matches 00 as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Classique ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 00 as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Classic ","color":"#FFFFFF","bold":false}]

execute if score #bhc bhc.scenario matches 01 as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Ruée Vers l'Or ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 01 as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Gold Rush ","color":"#FFFFFF","bold":false}]

execute if score #bhc bhc.scenario matches 02 run title @a title [{"text":"Bingo","color":"#CF6F3F","bold":false},{"text":" UHC","color":"#FFE73F","bold":false}]
execute if score #bhc bhc.scenario matches 02 as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Ère Viking ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 02 as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Viking Era ","color":"#FFFFFF","bold":false}]

execute if score #bhc bhc.scenario matches 91 run title @a title [{"text":"Bingo","color":"#CFCFCF","bold":false},{"text":" UHC","color":"#FFE73F","bold":false}]
execute if score #bhc bhc.scenario matches 91 as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Chill Mode ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 91 as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Chill Mode ","color":"#FFFFFF","bold":false}]

execute if score #bhc bhc.scenario matches 99 run title @a title [{"text":"Bingo","color":"#B73FFF","bold":false},{"text":" UHC Run","color":"#FFE73F","bold":false}]
execute if score #bhc bhc.scenario matches 99 as @a[scores={uhc.player.lang=061801}] run title @s subtitle [{"text":" Démarrage en cours ! ","color":"#FFFFFF","bold":false}]
execute if score #bhc bhc.scenario matches 99 as @a[scores={uhc.player.lang=051407}] run title @s subtitle [{"text":" Start in progress! ","color":"#FFFFFF","bold":false}]
