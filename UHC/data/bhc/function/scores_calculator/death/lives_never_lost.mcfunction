
#> bhc:scores_calculator/death/lives_never_lost
#
# @within			bhc:scores_calculator/death/score
#
#
# @description		Détection aucun joueur dans une équipe
#

execute store result score #count bhc.data.temp if entity @a[scores={uhc.player.lives=4..},predicate=uhc:id/team]
scoreboard players operation @s bhc.team.livescount += #count bhc.data.temp

execute store result score #count bhc.data.temp if entity @a[scores={uhc.player.lives=3..},predicate=uhc:id/team]
scoreboard players operation @s bhc.team.livescount += #count bhc.data.temp

execute store result score #count bhc.data.temp if entity @a[scores={uhc.player.lives=2..},predicate=uhc:id/team]
scoreboard players operation @s bhc.team.livescount += #count bhc.data.temp
