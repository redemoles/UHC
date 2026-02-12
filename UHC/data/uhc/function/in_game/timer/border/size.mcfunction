
#> uhc:in_game/timer/border/size
#
# @within			uhc:in_game/timer/border/shrink/
#
#
# @description		Réduction de la bordure du monde
#

$execute if score #shrink_1_time_left uhc.data.temp matches 0 run worldborder set $(border_size) $(border_length)s
$execute if score #shrink_2_time_left uhc.data.temp matches 0 run worldborder set $(border_size) $(border_length)s
$execute if score #shrink_3_time_left uhc.data.temp matches 0 run worldborder set $(border_size) $(border_length)s
$execute if score #shrink_dynamic uhc.data.temp matches 1 if score #shrink_1_time_left uhc.data.temp matches ..0 run worldborder set $(border_size) $(border_length)s
$execute if score #shrink_dynamic uhc.data.temp matches 2 if score #shrink_2_time_left uhc.data.temp matches ..0 run worldborder set $(border_size) $(border_length)s
$execute if score #shrink_dynamic uhc.data.temp matches 3 if score #shrink_3_time_left uhc.data.temp matches ..0 run worldborder set $(border_size) $(border_length)s
$scoreboard players set #shrink_dynamic_length_second uhc.data.temp $(border_length)
execute if score #shrink_2_time_left uhc.data.temp matches 0 run worldborder warning time 30s
