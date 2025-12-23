
#> bhc:scenario/02/target/death/team_out
#
# @within			bhc:scenario/02/target/death/
#
#
# @description		Rectification des cibles 
#

execute as @a[predicate=bhc:bhc_2/this_is_targeter] run scoreboard players set @s bhc.target.known 0

# Diminue le numéro de cible/assassin des équipes
tag @s add bhc.temp
execute as @e[type=marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..},tag=!bhc.temp] if score @s bhc.targeted.id >= @n[type=marker,tag=UHC,distance=0..,tag=bhc.temp] bhc.targeter.id run function bhc:scenario/02/target/death/team_out_1
scoreboard players set @s bhc.targeter.id 0
scoreboard players set @s bhc.targeted.id 0
tag @s remove bhc.temp

execute as @e[type=marker,tag=UHC,distance=0..] run function bhc:scenario/02/target/death/cycle_update
