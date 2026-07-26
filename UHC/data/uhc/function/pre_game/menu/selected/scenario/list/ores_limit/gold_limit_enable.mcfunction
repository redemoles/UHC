
#> uhc:pre_game/menu/selected/scenario/list/ores_limit/gold_limit_enable
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Activation/Désactivation Gold Limit
#


scoreboard players add #gold_limit uhc.scenario 1
execute if score #gold_limit uhc.scenario matches 2 run scoreboard players set #gold_limit uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"gold_limit","chat":"Gold Limit"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario

execute if score #gold_limit uhc.scenario matches 0 run scoreboard players remove #ores_limit uhc.scenario 1
execute if score #gold_limit uhc.scenario matches 1 run scoreboard players add #ores_limit uhc.scenario 1

execute if score #gold_limit uhc.scenario matches 0 run scoreboard players set @s uhc.menu.scenario.ores_limit 1
execute if score #gold_limit uhc.scenario matches 1 if score #gold_limit uhc.scenario matches 1 run scoreboard players set @s uhc.menu.scenario.ores_limit 11

function uhc:pre_game/menu/load/scenario/ores_limit
