
#> bhc:scores_calculator/death/tie_break/chill_mode/score
#
# @within			bhc:scores_calculator/death/tie_break/chill_mode/
# 
#
# @description		Détection joueur dans une équipe
#

scoreboard players operation @s bhc.chill_mode.tie_break.score = @s uhc.player.damage_dealt.total
scoreboard players operation @s bhc.chill_mode.tie_break.score *= #100 uhc.data.numbers
scoreboard players operation @s bhc.chill_mode.tie_break.score += @s bhc.stepa.rank.score
