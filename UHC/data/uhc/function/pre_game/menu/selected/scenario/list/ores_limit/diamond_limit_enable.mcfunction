
#> uhc:pre_game/menu/selection/scenario/list/ores_limit/diamond_limit_enable
#
# @within			uhc:pre_game/menu/selection/scenario/list/
#
#
# @description		Activation/Désactivation Diamond Limit
#


scoreboard players add #diamond_limit uhc.scenario 1
execute if score #diamond_limit uhc.scenario matches 2 run scoreboard players set #diamond_limit uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"diamond_limit","chat":"Diamond Limit"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario

execute if score #diamond_limit uhc.scenario matches 0 run scoreboard players remove #ores_limit uhc.scenario 1
execute if score #diamond_limit uhc.scenario matches 1 run scoreboard players add #ores_limit uhc.scenario 1

execute if score #diamond_limit uhc.scenario matches 0 run scoreboard players set @s uhc.menu.scenario.ores_limit 1
execute if score #diamond_limit uhc.scenario matches 1 run scoreboard players set @s uhc.menu.scenario.ores_limit 12

function uhc:pre_game/menu/load/scenario/ores_limit
