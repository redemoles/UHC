
#> uhc:in_game/entity/spider/reverse_size
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Inversion des tailles des araignées empoisonnées et normales
#

tag @s add uhc.checked
execute as @s[type=minecraft:spider] run attribute @s minecraft:scale base set 0.625
execute as @s[type=minecraft:cave_spider] run attribute @s minecraft:scale base set 1.75
