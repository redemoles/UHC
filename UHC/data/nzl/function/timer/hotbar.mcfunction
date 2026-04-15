
#> nzl:timer/hotbar
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Configuration du timer 
#

execute if score #shrink_1_time_left uhc.data.temp matches 1.. run data modify storage uhc:temp hotbar.border_color set value "#3F9FFF"
execute if score #shrink_1_time_left uhc.data.temp matches ..0 run data modify storage uhc:temp hotbar.border_color set value "#E73F3F"

scoreboard players operation @a nzl.attack.cooldown /= #20 uhc.data.numbers
scoreboard players operation @a nzl.attack.length /= #20 uhc.data.numbers

execute as @a[tag=!uhc.target.targeter_done] run function uhc:translation/hotbar/nzl with storage uhc:temp hotbar
