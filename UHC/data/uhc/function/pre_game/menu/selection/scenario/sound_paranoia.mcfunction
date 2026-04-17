
#> uhc:pre_game/menu/selection/scenario/sound_paranoia
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Blood Cycle
#


scoreboard players add #sound_paranoia uhc.scenario 1
execute if score #sound_paranoia uhc.scenario matches 2 run scoreboard players set #sound_paranoia uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"sound_paranoia","chat":"Sound Paranoia"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario
