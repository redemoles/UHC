
#> uhc:in_game/scenario/ores_limit/tick
#
# @within			uhc:in_game/player/misc/ore_mined/main
#
#
# @description		Limites de minerais
#

# Don du minerai
execute if score #diamond_limit uhc.scenario matches 1 unless score #blood_diamond uhc.scenario matches 1 if score #trade_uhc uhc.scenario matches 0 if score @s uhc.player.mined.diamond <= #diamond_limit uhc.scenario.ores_limit.setup if entity @s[predicate=uhc:ore_mined/diamond] run function uhc:in_game/player/misc/ore_mined/diamond_main
execute if score #diamond_limit uhc.scenario matches 1 unless score #blood_diamond uhc.scenario matches 1 if score #trade_uhc uhc.scenario matches 1 if score @s uhc.player.mined.diamond <= #diamond_limit uhc.scenario.ores_limit.setup if entity @s[predicate=uhc:ore_mined/diamond] run function uhc:in_game/player/misc/ore_mined/emerald_main
execute if score #gold_limit uhc.scenario matches 1 if score @s uhc.player.mined.gold <= #gold_limit uhc.scenario.ores_limit.setup if entity @s[predicate=uhc:ore_mined/gold] run function uhc:in_game/player/misc/ore_mined/raw_gold_main

# Limite atteinte
execute if score #diamond_limit uhc.scenario matches 1 if score @s uhc.player.mined.diamond >= #diamond_limit uhc.scenario.ores_limit.setup if entity @s[predicate=uhc:ore_mined/diamond] run function uhc:translation/in_game/scenario/ores_limit_diamond
execute if score #gold_limit uhc.scenario matches 1 if score @s uhc.player.mined.gold >= #gold_limit uhc.scenario.ores_limit.setup if entity @s[predicate=uhc:ore_mined/gold] run function uhc:translation/in_game/scenario/ores_limit_gold
