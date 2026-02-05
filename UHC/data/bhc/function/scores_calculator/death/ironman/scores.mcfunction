
#> bhc:scores_calculator/death/ironman/scores
#
# @within			bhc:tick
# @within			
#
# @description		Attribution du timer aux ironmans en jeu
#

# Attribution du timer aux ironmans en jeu
scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute if entity @p[tag=uhc.ironman,predicate=uhc:id/team] run scoreboard players operation @s bhc.ironman.timer.inv = #tick bhc.data.temp
execute if entity @p[tag=uhc.ironman,predicate=uhc:id/team] run scoreboard players operation @a[tag=ironman,predicate=uhc:id/team] bhc.ironman.timer.inv = @s bhc.ironman.timer.inv
