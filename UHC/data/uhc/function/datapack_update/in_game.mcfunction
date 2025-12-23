
#> uhc:datapack_update/in_game
#
# @within			uhc:datapack_update/...
#
#
# @description		Report de la mise à jour du datapack
#

execute if score #warning uhc.data.update matches 1.. run tellraw @s[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"\n[","color":"#6F6F6F"},{"text":"UHC","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour disponible !\nElle sera installée à la réinitialisation de la partie.","color":"#FFFFFF"}]
execute if score #warning uhc.data.update matches 1.. run tellraw @s[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"\n[","color":"#6F6F6F"},{"text":"UHC","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update available!\nIt will be installed at game reset.","color":"#FFFFFF"}]

execute if score #warning uhc.data.update matches 2 run tellraw @s[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"\n/!\\","color":"#FF3F3F","underlined":true},{"text":" Cette version du datapack est trop récente et peut causer des problèmes à votre partie.\n","color":"#FF3F3F","underlined":false}]
execute if score #warning uhc.data.update matches 2 run tellraw @s[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"\n/!\\","color":"#FF3F3F","underlined":true},{"text":" This version of the datapack is too recent and may cause problems to your game.\n","color":"#FF3F3F","underlined":false}]
scoreboard players set #warning uhc.data.update 0
