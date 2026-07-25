
#> bhc:in_game/scores_calculator/death/tie_break/score
#
# @within			bhc:in_game/scores_calculator/death/update
# 
#
# @description		Détection joueur dans une équipe
#

# Vérifie si un joueur dans l'équipe est en vie
scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute unless entity @p[scores={uhc.player.lives=1..},predicate=uhc:id/team] run return fail

# Temps de jeu de l'équipe
scoreboard players operation @s bhc.death.tie_break.score.inv = #tick bhc.data.temp
scoreboard players operation @s bhc.death.tie_break.score.inv *= #100 uhc.data.numbers
execute if score #bhc bhc.scenario matches 91..98 if score #game_progress uhc.game_progress matches 2.. run return run scoreboard players operation @s bhc.death.tie_break.score.inv += @s bhc.chill_mode.tie_break.rank
scoreboard players operation @s bhc.death.tie_break.score.inv += @s uhc.id.team.inverted
