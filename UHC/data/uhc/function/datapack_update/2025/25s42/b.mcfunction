
#> uhc:datapack_update/2025/25s42/b
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s42b
#

scoreboard players set #update uhc.data.update 25422

execute if score #game_progress uhc.game_progress matches 1.. run tellraw @s[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"\n/!\\","color":"#FF3F3F","underlined":true},{"text":" Cette version du datapack n'est pas conçu pour les versions inférieurs à la 1.21.9.\n","color":"#FF3F3F","underlined":false}]
execute if score #game_progress uhc.game_progress matches 1.. run tellraw @s[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"\n/!\\","color":"#FF3F3F","underlined":true},{"text":" This version of the datapack is not recommended for versions below 1.21.9.\n","color":"#FF3F3F","underlined":false}]
