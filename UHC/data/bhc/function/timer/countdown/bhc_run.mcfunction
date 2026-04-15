
#> bhc:timer/countdown/bhc_run
#
# @within			uhc:in_game/timer/hotbar/text_tellraw
#
#
# @description		Fonction activé pour chaque minutes
#

execute if score #shrink_1_time_left uhc.data.temp matches 5 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score #shrink_1_time_left uhc.data.temp matches 0..5 run function uhc:translation/bhc/99_bhc_run/teleportation
execute if score #shrink_1_time_left uhc.data.temp matches 0 as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 0.5 1 0.5
