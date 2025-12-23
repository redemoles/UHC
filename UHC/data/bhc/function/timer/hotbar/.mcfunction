
#> bhc:timer/hotbar/
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Affichage Hotbar 
#

execute unless score #bhc bhc.scenario matches 00 unless score #stepb_enabled bhc.data matches 2 run function bhc:timer/hotbar/classic with storage uhc:temp hotbar

execute if score #bhc bhc.scenario matches 00 run function bhc:timer/hotbar/classic with storage uhc:temp hotbar
execute if score #bhc bhc.scenario matches 01 if score #stepb_enabled bhc.data matches 2 run function bhc:timer/hotbar/01 with storage uhc:temp hotbar
execute if score #bhc bhc.scenario matches 02 if score #stepb_enabled bhc.data matches 2 run function bhc:timer/hotbar/02 with storage uhc:temp hotbar
execute if score #bhc bhc.scenario matches 91 if score #stepb_enabled bhc.data matches 2 run function bhc:timer/hotbar/01 with storage uhc:temp hotbar
