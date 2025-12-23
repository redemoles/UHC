
#> bhc:scenario/02/target/death/cycle_reset
#
# @within			bhc:scores_calculator/kills/player_dead
#
#
# @description		Reconnexion d'un joueur 
#

# Id
scoreboard players operation @s bhc.targeted.id = @e[type=marker,tag=UHC,distance=0..,predicate=uhc:id_team] bhc.targeted.id
scoreboard players operation @s bhc.targeter.id = @e[type=marker,tag=UHC,distance=0..,predicate=uhc:id_team] bhc.targeter.id
scoreboard players operation @s bhc.target.known = @e[type=marker,tag=UHC,distance=0..,predicate=uhc:id_team] bhc.target.known

# Cycle en cours
execute if entity @s[tag=uhc.player,predicate=bhc:bhc_2/cycle_check] run return fail
scoreboard players operation @s bhc.target.cycle = #cycle bhc.target.cycle
