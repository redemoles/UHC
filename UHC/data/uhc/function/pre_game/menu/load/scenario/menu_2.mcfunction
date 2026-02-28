
#> uhc:pre_game/menu/load/scenario/menu_2
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Redirection
#

data modify storage uhc:temp scenario.sky_high_timer set from storage uhc:scenario sky_high.timer
data modify storage uhc:temp scenario.sky_high_height set from storage uhc:scenario sky_high.height

execute as @s[scores={uhc.player.lang=061801}] run function uhc:pre_game/menu/load/scenario/menu_2_1fra with storage uhc:temp scenario
execute as @s[scores={uhc.player.lang=051407}] run function uhc:pre_game/menu/load/scenario/menu_2_2eng with storage uhc:temp scenario
