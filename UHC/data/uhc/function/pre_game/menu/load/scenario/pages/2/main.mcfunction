
#> uhc:pre_game/menu/load/scenario/pages/2/main
#
# @within			uhc:pre_game/menu/selection/main/host/main
#
#
# @description		Redirection
#

clear @s
tag @s remove uhc.menu.main.host
scoreboard players set @s uhc.menu.scenario.main 2
scoreboard players set @s uhc.menu.main.player 0
scoreboard players set @s uhc.menu.scenario.restricted_area 0





function uhc:pre_game/menu/load/background/

data modify storage uhc:temp scenario.sky_high_timer set from storage uhc:scenario sky_high.timer
data modify storage uhc:temp scenario.sky_high_height set from storage uhc:scenario sky_high.height
data modify storage uhc:temp scenario.sky_high_ender_pearl_gift set from storage uhc:scenario sky_high.ender_pearl_gift
data modify storage uhc:temp scenario.sky_high_ender_pearl_timer set from storage uhc:scenario sky_high.ender_pearl_timer

execute as @s[scores={uhc.player.lang=061801}] run function uhc:pre_game/menu/load/scenario/pages/2/fra with storage uhc:temp scenario
execute as @s[scores={uhc.player.lang=051407}] run function uhc:pre_game/menu/load/scenario/pages/2/eng with storage uhc:temp scenario
