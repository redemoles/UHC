
#> uhc:in_game/scenario/trade_uhc/
#
# @within			uhc:in_game/timer/players
#
#
# @description		
#

execute store result score #random uhc.scenario.cut_clean.random run random value 1..100

execute if score @s uhc.player.mined.temp.copper matches 1.. if score #random uhc.scenario.cut_clean.random matches 1..70 at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score @s uhc.player.mined.temp.copper_deepslate matches 1.. if score #random uhc.scenario.cut_clean.random matches 1..70 at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score @s uhc.player.mined.temp.iron matches 1.. if score #random uhc.scenario.cut_clean.random matches 1..70 at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1}
execute if score @s uhc.player.mined.temp.iron_deepslate matches 1.. if score #random uhc.scenario.cut_clean.random matches 1..70 at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1}
