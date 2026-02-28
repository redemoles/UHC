
#> uhc:datapack_update/2026/26_2/3
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.2.3
#

scoreboard objectives add uhc.team.size dummy
execute if score #game_progress uhc.game_progress matches 1 in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run scoreboard players operation @s uhc.team.size = @s uhc.player.lives

scoreboard players set #reset uhc.data.update 2
execute if score #game_progress uhc.game_progress matches 1 run scoreboard players set #warning uhc.data.update 2

data modify storage uhc:scenario blood_diamond set from storage uhc:temp blood_diamond

scoreboard players set #update uhc.data.update 26023
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.2.3","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.\n","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.2.3","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.\n","color":"#FFFFFF"}]
