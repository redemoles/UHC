
#> uhc:datapack_update/2025/25s50/c
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s50c
#

scoreboard objectives add uhc.player.damage_dealt.pvp dummy [{"text":"Kills ","color":"#FFFFFF"},{"text":">","color":"#00C3DF","bold":true},{"text":" [Dégâts émis]*10","color":"#FFFFFF"}]
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run scoreboard players operation @s uhc.player.damage_dealt.pvp = @s uhc.player.damage_dealt
execute as @a run scoreboard players operation @s uhc.player.damage_dealt.pvp = @s uhc.player.damage_dealt

scoreboard objectives remove uhc.player.damage_dealt
scoreboard objectives add uhc.player.damage_dealt minecraft.custom:minecraft.damage_dealt
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run scoreboard players set @s uhc.player.damage_dealt 0
scoreboard players set @a uhc.player.damage_dealt 0

scoreboard objectives add uhc.player.damage_dealt.temp minecraft.custom:minecraft.damage_dealt

scoreboard objectives add bhc.chill_mode.tie_break.score dummy
scoreboard objectives add bhc.chill_mode.tie_break.rank dummy

scoreboard players operation #shrink_1_time_left uhc.data.temp = #shrink_1 uhc.data.temp
scoreboard players operation #shrink_2_time_left uhc.data.temp = #shrink_2 uhc.data.temp
scoreboard players operation #shrink_3_time_left uhc.data.temp = #shrink_3 uhc.data.temp

scoreboard players operation #shrink_1_time_left uhc.data.setup = #shrink_1 uhc.data.setup
scoreboard players operation #shrink_2_time_left uhc.data.setup = #shrink_2 uhc.data.setup
scoreboard players operation #shrink_3_time_left uhc.data.setup = #shrink_3 uhc.data.setup

scoreboard players set #update uhc.data.update 25503
