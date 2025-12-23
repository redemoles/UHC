
#> bhc:test/bhc_2/target_list/
#
# @within			
#
#
# @description		Simulation d'une partie
#

tag @s add uhc.temp
execute in uhc:lobby run function bhc:test/bhc_2/target_list/list

scoreboard players enable @s bhc.test.target_kill
