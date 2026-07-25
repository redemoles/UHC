
#> bhc:in_game/scenario/02/target/death/cycle_update_team
#
# @within			bhc:in_game/scenario/02/target/death/main
#
#
# @description		Rectification des cibles 
#

execute if score @s bhc.targeted.id matches 1 run scoreboard players operation @s bhc.targeted.id = @n[type=minecraft:marker,tag=UHC,distance=0..,tag=bhc.temp] bhc.targeted.id
scoreboard players remove @s bhc.targeted.id 1
execute unless score @s bhc.targeter.id matches 1 run scoreboard players remove @s bhc.targeter.id 1
