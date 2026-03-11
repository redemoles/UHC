
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
