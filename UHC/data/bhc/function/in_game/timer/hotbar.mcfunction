
#> bhc:in_game/timer/hotbar
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Affichage Hotbar 
#

execute if score #bhc bhc.scenario matches 51 run return run function uhc:translation/hotbar/bhc_inverted with storage uhc:temp hotbar

execute unless score #stepb_enabled bhc.data matches 2 run return run function uhc:translation/hotbar/bhc_general with storage uhc:temp hotbar
execute if score #bhc bhc.scenario matches 00 run return run function uhc:translation/hotbar/bhc_general with storage uhc:temp hotbar
execute if score #bhc bhc.scenario matches 01 run return run function uhc:translation/hotbar/bhc_gold_rush with storage uhc:temp hotbar
execute if score #bhc bhc.scenario matches 02 run return run function uhc:translation/hotbar/bhc_viking_era with storage uhc:temp hotbar
execute if score #bhc bhc.scenario matches 92 run return run function uhc:translation/hotbar/bhc_general with storage uhc:temp hotbar
