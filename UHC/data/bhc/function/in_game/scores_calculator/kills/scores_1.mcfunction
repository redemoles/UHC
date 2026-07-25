
#> bhc:in_game/scores_calculator/kills/scores_1
#
# @within			bhc:in_game/scores_calculator/kills/player_killer
#
#
# @description		Attribution des scores 
#

scoreboard players operation @s bhc.kills.score.inv /= #10m uhc.data.numbers
scoreboard players operation @s bhc.kills.score.inv *= #10m uhc.data.numbers
scoreboard players operation @s bhc.kills.score.inv += @s bhc.kills.damage_dealt.inv
execute if score @s bhc.kills.damage_dealt.inv matches ..100 run scoreboard players operation @s bhc.kills.score.inv += @s bhc.death.rank.score.inv
