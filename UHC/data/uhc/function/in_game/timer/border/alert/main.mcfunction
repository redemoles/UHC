
#> uhc:in_game/timer/border/alert/main
#
# @within			uhc:in_game/timer/second
#
#
# @description		Alerte sonore au joueur si trop proche de la border
#

## Alertes sonores
# Border en cours de réduction
scoreboard players operation #border_alert_1 uhc.data.temp = #border_size uhc.data.temp
scoreboard players operation #border_alert_2 uhc.data.temp = #border_size uhc.data.temp
scoreboard players operation #border_alert_3 uhc.data.temp = #border_size uhc.data.temp
scoreboard players remove #border_alert_1 uhc.data.temp 36
scoreboard players remove #border_alert_2 uhc.data.temp 24
scoreboard players remove #border_alert_3 uhc.data.temp 8
scoreboard players remove #shrink_dynamic_length_second uhc.data.temp 1

execute if score #shrink_1_time_left uhc.data.temp matches ..0 unless score #shrink_dynamic uhc.data.temp matches 1 unless score #shrink_1_timer_end uhc.data.temp matches ..0 as @a[tag=uhc.player] at @s run function uhc:in_game/timer/border/alert/sound
execute if score #shrink_2_time_left uhc.data.temp matches ..0 unless score #shrink_dynamic uhc.data.temp matches 2 unless score #shrink_2_timer_end uhc.data.temp matches ..0 as @a[tag=uhc.player] at @s run function uhc:in_game/timer/border/alert/sound
execute if score #shrink_3_time_left uhc.data.temp matches ..0 unless score #shrink_dynamic uhc.data.temp matches 3 unless score #shrink_3_timer_end uhc.data.temp matches ..0 as @a[tag=uhc.player] at @s run function uhc:in_game/timer/border/alert/sound
execute if score #shrink_1_time_left uhc.data.temp matches ..0 if score #shrink_dynamic uhc.data.temp matches 1 unless score #shrink_dynamic_length_second uhc.data.temp matches ..0 as @a[tag=uhc.player] at @s run function uhc:in_game/timer/border/alert/sound
execute if score #shrink_2_time_left uhc.data.temp matches ..0 if score #shrink_dynamic uhc.data.temp matches 2 unless score #shrink_dynamic_length_second uhc.data.temp matches ..0 as @a[tag=uhc.player] at @s run function uhc:in_game/timer/border/alert/sound
execute if score #shrink_3_time_left uhc.data.temp matches ..0 if score #shrink_dynamic uhc.data.temp matches 3 unless score #shrink_dynamic_length_second uhc.data.temp matches ..0 as @a[tag=uhc.player] at @s run function uhc:in_game/timer/border/alert/sound
