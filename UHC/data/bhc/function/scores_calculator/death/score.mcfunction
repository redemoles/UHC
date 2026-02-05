
#> bhc:scores_calculator/death/score
#
# @within			bhc:tick
# @within			bhc:scores_calculator/endgame/detect
#
# @description		Détection aucun joueur dans une équipe
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

## Minutes de jeu (équipes)
scoreboard players operation @s bhc.death.score.inv = @s bhc.death.tie_break.score.inv
scoreboard players operation @s bhc.death.score.inv /= #100 uhc.data.numbers
scoreboard players operation @s bhc.death.score.inv /= #1200 uhc.data.numbers

## Bonus
# Vies non utilisées
scoreboard players operation @s bhc.team.livescount *= #10 uhc.data.numbers
scoreboard players operation @s bhc.death.score.inv += @s bhc.team.livescount
scoreboard players operation @s bhc.team.livescount /= #10 uhc.data.numbers

# Ironman
scoreboard players operation @s bhc.death.score.inv += @s bhc.ironman.score.inv

# Dernière équipe en vie
execute if score #game_progress uhc.game_progress matches 2.. unless score #bhc bhc.scenario matches 91 if score @s bhc.death.tie_break.rank.number matches 1 run scoreboard players add @s bhc.death.score.inv 1000

# Règle en cas d'égalité
scoreboard players operation @s bhc.death.score.inv *= #100 uhc.data.numbers
scoreboard players operation @s bhc.death.score.inv += @s bhc.death.tie_break.rank.score

## Minutes de jeu (joueurs)
scoreboard players operation @a[scores={uhc.player.lives=1..},predicate=uhc:id/team] bhc.death.score.inv = @s bhc.death.score.inv
