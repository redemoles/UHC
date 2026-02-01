
#> bhc:scores_calculator/total/equality_rules
#
# @within			bhc:scores_calculator/total/rank
#
#
# @description		Calcul pour départager les équipes aux scores finaux égaux
#

scoreboard players operation @s bhc.stepa.rank.number -= #team bhc.data.temp
scoreboard players operation @s bhc.stepb.rank.number -= #team bhc.data.temp
scoreboard players operation @s bhc.kills.rank.number -= #team bhc.data.temp
scoreboard players operation @s bhc.death.rank.number -= #team bhc.data.temp

scoreboard players remove @s bhc.stepa.rank.number 1
scoreboard players remove @s bhc.stepb.rank.number 1
scoreboard players remove @s bhc.kills.rank.number 1
scoreboard players remove @s bhc.death.rank.number 1

## Calcul des priorités
scoreboard players set @s bhc.total.tie_break.score 100
execute unless score #bhc bhc.scenario matches 91 run scoreboard players add @s[predicate=uhc:id_team_alive] bhc.total.tie_break.score 100
scoreboard players operation @s bhc.total.tie_break.score -= @s bhc.stepa.rank.number
scoreboard players operation @s bhc.total.tie_break.score -= @s bhc.stepb.rank.number
scoreboard players operation @s bhc.total.tie_break.score *= #10k uhc.data.numbers
scoreboard players operation @s bhc.total.tie_break.score += @s bhc.bingo.score.inv
scoreboard players operation @s bhc.total.tie_break.score /= #100 uhc.data.numbers
scoreboard players operation @s bhc.total.tie_break.score *= #100 uhc.data.numbers
scoreboard players operation @s bhc.total.tie_break.score -= @s bhc.death.rank.number

scoreboard players operation @s bhc.stepa.rank.number += #team bhc.data.temp
scoreboard players operation @s bhc.stepb.rank.number += #team bhc.data.temp
scoreboard players operation @s bhc.kills.rank.number += #team bhc.data.temp
scoreboard players operation @s bhc.death.rank.number += #team bhc.data.temp

scoreboard players add @s bhc.stepa.rank.number 1
scoreboard players add @s bhc.stepb.rank.number 1
scoreboard players add @s bhc.kills.rank.number 1
scoreboard players add @s bhc.death.rank.number 1
