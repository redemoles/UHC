
#> bhc:timer/scoreboard/marker_score
#
# @within			bhc:timer/scoreboard/marker_name
#
#
# @description		Boucle d'affichage des noms d'équipe
#

$scoreboard players operation $(sb) bhc.stepa.rank.score = @s bhc.stepa.rank.score.inv
scoreboard players operation #temp bhc.stepa.score = @s bhc.stepa.score.inv
scoreboard players operation #temp bhc.stepa.score /= #1m uhc.data.numbers
$scoreboard players operation $(sb) bhc.stepa.score = #temp bhc.stepa.score

$scoreboard players operation $(sb) bhc.stepb.rank.score = @s bhc.stepb.rank.score.inv
scoreboard players operation #temp bhc.stepb.score = @s bhc.stepb.score.inv
scoreboard players operation #temp bhc.stepb.score /= #1m uhc.data.numbers
$scoreboard players operation $(sb) bhc.stepb.score = #temp bhc.stepb.score

$scoreboard players operation $(sb) bhc.kills.rank.score = @s bhc.kills.rank.score.inv
scoreboard players operation #temp bhc.kills.score = @s bhc.kills.score.inv
scoreboard players operation #temp bhc.kills.score /= #10m uhc.data.numbers
$scoreboard players operation $(sb) bhc.kills.score = #temp bhc.kills.score

$scoreboard players operation $(sb) bhc.death.rank.score = @s bhc.death.rank.score.inv
scoreboard players operation #temp bhc.death.score = @s bhc.death.score.inv
scoreboard players operation #temp bhc.death.score /= #100 uhc.data.numbers
$scoreboard players operation $(sb) bhc.death.score = #temp bhc.death.score

scoreboard players operation #temp bhc.bingo.score = @s bhc.bingo.score.inv
scoreboard players operation #temp bhc.bingo.score /= #100 uhc.data.numbers
$scoreboard players operation $(sb) bhc.bingo.score = #temp bhc.bingo.score

$scoreboard players operation $(sb) bhc.total.score = @s bhc.total.score.inv

scoreboard players operation #temp bhc.ironman.timer = @s bhc.ironman.timer.inv
scoreboard players operation #temp bhc.ironman.timer /= #1200 uhc.data.numbers
$scoreboard players operation $(sb) bhc.ironman.timer = #temp bhc.ironman.timer

scoreboard players operation #temp bhc.kills.damage_dealt = @s bhc.kills.damage_dealt.inv
scoreboard players operation #temp bhc.kills.damage_dealt /= #100 uhc.data.numbers
$scoreboard players operation $(sb) bhc.kills.damage_dealt = #temp bhc.kills.damage_dealt
