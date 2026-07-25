
#> bhc:in_game/scenario/02/bingo_stepb/player_reward/column
#
# @within			bhc:in_game/scenario/02/bingo_stepb/player_reward/case
#
#
# @description		Récompenses et points individuel
#

## Récompenses
give @s minecraft:diamond 3
experience add @s 1 levels

## Score personnel
scoreboard players add @s bhc.stepb.score.personal 2
