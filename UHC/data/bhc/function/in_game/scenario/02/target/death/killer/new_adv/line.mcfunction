
#> bhc:in_game/scenario/02/target/death/killer/new_adv/line
#
# @within			bhc:in_game/scenario/02/target/death/killer/is_targeter
#
#
# @description		Nouvelle case pour l'assassin 
#

scoreboard players set #temp_line_enabled bhc.data 0
data modify storage bhc:temp new_adv.line set value {}

# Si x nombre de ligne sauf si la ligne est complétée
execute if score #line bhc.data matches 1.. unless score @s bhc.line_1 = #line bhc.data run data modify storage bhc:temp new_adv.line.number append value 1
execute if score #line bhc.data matches 2.. unless score @s bhc.line_2 = #line bhc.data run data modify storage bhc:temp new_adv.line.number append value 2
execute if score #line bhc.data matches 3.. unless score @s bhc.line_3 = #line bhc.data run data modify storage bhc:temp new_adv.line.number append value 3
execute if score #line bhc.data matches 4.. unless score @s bhc.line_4 = #line bhc.data run data modify storage bhc:temp new_adv.line.number append value 4
execute if score #line bhc.data matches 5.. unless score @s bhc.line_5 = #line bhc.data run data modify storage bhc:temp new_adv.line.number append value 5
execute if score #line bhc.data matches 6.. unless score @s bhc.line_6 = #line bhc.data run data modify storage bhc:temp new_adv.line.number append value 6
execute if score #line bhc.data matches 7.. unless score @s bhc.line_7 = #line bhc.data run data modify storage bhc:temp new_adv.line.number append value 7
execute if score #line bhc.data matches 8.. unless score @s bhc.line_8 = #line bhc.data run data modify storage bhc:temp new_adv.line.number append value 8
execute if score #line bhc.data matches 9.. unless score @s bhc.line_9 = #line bhc.data run data modify storage bhc:temp new_adv.line.number append value 9

execute if score #line bhc.data matches 1.. unless score @s bhc.line_1 = #line bhc.data run scoreboard players add #temp_line_enabled bhc.data 1
execute if score #line bhc.data matches 2.. unless score @s bhc.line_2 = #line bhc.data run scoreboard players add #temp_line_enabled bhc.data 1
execute if score #line bhc.data matches 3.. unless score @s bhc.line_3 = #line bhc.data run scoreboard players add #temp_line_enabled bhc.data 1
execute if score #line bhc.data matches 4.. unless score @s bhc.line_4 = #line bhc.data run scoreboard players add #temp_line_enabled bhc.data 1
execute if score #line bhc.data matches 5.. unless score @s bhc.line_5 = #line bhc.data run scoreboard players add #temp_line_enabled bhc.data 1
execute if score #line bhc.data matches 6.. unless score @s bhc.line_6 = #line bhc.data run scoreboard players add #temp_line_enabled bhc.data 1
execute if score #line bhc.data matches 7.. unless score @s bhc.line_7 = #line bhc.data run scoreboard players add #temp_line_enabled bhc.data 1
execute if score #line bhc.data matches 8.. unless score @s bhc.line_8 = #line bhc.data run scoreboard players add #temp_line_enabled bhc.data 1
execute if score #line bhc.data matches 9.. unless score @s bhc.line_9 = #line bhc.data run scoreboard players add #temp_line_enabled bhc.data 1

data modify storage bhc:temp new_adv.line.enabled set value 0
execute store result storage bhc:temp new_adv.line.enabled int 1 run scoreboard players get #temp_line_enabled bhc.data

function bhc:in_game/scenario/02/target/death/killer/new_adv/line_1 with storage bhc:temp new_adv.line
