
#> bhc:scenario/02/target/death/cycle_reset
#
# @within			bhc:scores_calculator/kills/player_dead
#
#
# @description		Détection nouveau kill 
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players operation @a[tag=uhc.player,predicate=uhc:id_team] bhc.targeted.id = @s bhc.targeted.id
scoreboard players operation @a[tag=uhc.player,predicate=uhc:id_team] bhc.targeter.id = @s bhc.targeter.id
