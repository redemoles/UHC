
#> bhc:in_game/scores_calculator/endgame/max
#
# @within			bhc:in_game/scores_calculator/endgame/message_set
#
#
# @description		Vérification du meilleur score 
#

$scoreboard players operation #max bhc.stepa.score > $(sb) bhc.stepa.score
$scoreboard players operation #max bhc.stepb.score > $(sb) bhc.stepb.score
$scoreboard players operation #max bhc.kills.score > $(sb) bhc.kills.score
$scoreboard players operation #max bhc.death.score > $(sb) bhc.death.score

$scoreboard players operation #max bhc.stepa.rank.score > $(sb) bhc.stepa.rank.score
$scoreboard players operation #max bhc.stepb.rank.score > $(sb) bhc.stepb.rank.score
$scoreboard players operation #max bhc.kills.rank.score > $(sb) bhc.kills.rank.score
$scoreboard players operation #max bhc.death.rank.score > $(sb) bhc.death.rank.score
