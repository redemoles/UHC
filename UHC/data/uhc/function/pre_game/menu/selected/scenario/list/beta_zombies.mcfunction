
#> uhc:pre_game/menu/selected/scenario/list/beta_zombies
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Activation/Désactivation Beta Zombies
#


scoreboard players add #beta_zombies uhc.scenario 1
execute if score #beta_zombies uhc.scenario matches 2 run scoreboard players set #beta_zombies uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"beta_zombies","chat":"Beta Zombies"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
