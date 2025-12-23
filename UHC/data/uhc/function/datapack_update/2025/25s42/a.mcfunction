
#> uhc:datapack_update/2025/25s42/a
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s42a
#

execute if score #game_progress uhc.game_progress matches 1.. in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run scoreboard players operation @s bhc.kills.damage_dealt.inv *= #100 uhc.data.numbers

scoreboard players set #update uhc.data.update 25421

tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 25s42a","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 25s42a","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.","color":"#FFFFFF"}]
