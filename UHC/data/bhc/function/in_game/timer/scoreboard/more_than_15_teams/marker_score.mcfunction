
#> bhc:in_game/timer/scoreboard/more_than_15_teams/marker_score
#
# @within			bhc:in_game/timer/scoreboard/marker_name
#
#
# @description		Scoreboard si plus de 15 équipes en jeu
#

$scoreboard players reset $(sb) bhc.stepa.score.sb1
$scoreboard players reset $(sb) bhc.stepa.score.sb2

$scoreboard players reset $(sb) bhc.stepa.rank.score.sb1
$scoreboard players reset $(sb) bhc.stepa.rank.score.sb2

$scoreboard players reset $(sb) bhc.stepb.score.sb1
$scoreboard players reset $(sb) bhc.stepb.score.sb2

$scoreboard players reset $(sb) bhc.bingo.score.sb1
$scoreboard players reset $(sb) bhc.bingo.score.sb2

$scoreboard players reset $(sb) bhc.total.score.sb1
$scoreboard players reset $(sb) bhc.total.score.sb2

$scoreboard players operation $(sb) bhc.stepa.rank.number = @s bhc.stepa.rank.number
$scoreboard players operation $(sb) bhc.stepb.rank.number = @s bhc.stepb.rank.number
$scoreboard players operation $(sb) bhc.total.rank.number = @s bhc.total.rank.number

$execute if score $(sb) bhc.stepa.rank.number <= #team/2 bhc.data run scoreboard players operation $(sb) bhc.stepa.score.sb1 = $(sb) bhc.stepa.score
$execute if score $(sb) bhc.stepa.rank.number > #team/2 bhc.data run scoreboard players operation $(sb) bhc.stepa.score.sb2 = $(sb) bhc.stepa.score

$execute if score $(sb) bhc.stepa.rank.number <= #team/2 bhc.data run scoreboard players operation $(sb) bhc.stepa.rank.score.sb1 = $(sb) bhc.stepa.rank.score
$execute if score $(sb) bhc.stepa.rank.number > #team/2 bhc.data run scoreboard players operation $(sb) bhc.stepa.rank.score.sb2 = $(sb) bhc.stepa.rank.score

$execute if score $(sb) bhc.stepb.rank.number <= #team/2 bhc.data run scoreboard players operation $(sb) bhc.stepb.score.sb1 = $(sb) bhc.stepb.score
$execute if score $(sb) bhc.stepb.rank.number > #team/2 bhc.data run scoreboard players operation $(sb) bhc.stepb.score.sb2 = $(sb) bhc.stepb.score

$execute if score $(sb) bhc.stepb.rank.number <= #team/2 bhc.data run scoreboard players operation $(sb) bhc.bingo.score.sb1 = $(sb) bhc.bingo.score
$execute if score $(sb) bhc.stepb.rank.number > #team/2 bhc.data run scoreboard players operation $(sb) bhc.bingo.score.sb2 = $(sb) bhc.bingo.score

$execute if score $(sb) bhc.total.rank.number <= #team/2 bhc.data run scoreboard players operation $(sb) bhc.total.score.sb1 = $(sb) bhc.total.score
$execute if score $(sb) bhc.total.rank.number > #team/2 bhc.data run scoreboard players operation $(sb) bhc.total.score.sb2 = $(sb) bhc.total.score
