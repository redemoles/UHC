
#> bhc:scenario/02/target/death/killer/new_adv/column
#
# @within			bhc:scenario/02/target/death/killer/new_adv/column_2
#
#
# @description		Nouvelle case pour l'assassin 
#

scoreboard players set #temp_column_enabled bhc.data 0
data modify storage bhc:temp new_adv.column set value {}

# Si x nombre de colonne sauf si la case de cette colonne est réalisée
$execute if score #column bhc.data matches 1.. unless score @s bhc.bingo_2b_$(line)_1 matches 0.. run data modify storage bhc:temp new_adv.column.number append value 1
$execute if score #column bhc.data matches 2.. unless score @s bhc.bingo_2b_$(line)_2 matches 0.. run data modify storage bhc:temp new_adv.column.number append value 2
$execute if score #column bhc.data matches 3.. unless score @s bhc.bingo_2b_$(line)_3 matches 0.. run data modify storage bhc:temp new_adv.column.number append value 3
$execute if score #column bhc.data matches 4.. unless score @s bhc.bingo_2b_$(line)_4 matches 0.. run data modify storage bhc:temp new_adv.column.number append value 4
$execute if score #column bhc.data matches 5.. unless score @s bhc.bingo_2b_$(line)_5 matches 0.. run data modify storage bhc:temp new_adv.column.number append value 5
$execute if score #column bhc.data matches 6.. unless score @s bhc.bingo_2b_$(line)_6 matches 0.. run data modify storage bhc:temp new_adv.column.number append value 6
$execute if score #column bhc.data matches 7.. unless score @s bhc.bingo_2b_$(line)_7 matches 0.. run data modify storage bhc:temp new_adv.column.number append value 7
$execute if score #column bhc.data matches 8.. unless score @s bhc.bingo_2b_$(line)_8 matches 0.. run data modify storage bhc:temp new_adv.column.number append value 8
$execute if score #column bhc.data matches 9.. unless score @s bhc.bingo_2b_$(line)_9 matches 0.. run data modify storage bhc:temp new_adv.column.number append value 9

$execute if score #column bhc.data matches 1.. unless score @s bhc.bingo_2b_$(line)_1 matches 0.. run scoreboard players add #temp_column_enabled bhc.data 1
$execute if score #column bhc.data matches 2.. unless score @s bhc.bingo_2b_$(line)_2 matches 0.. run scoreboard players add #temp_column_enabled bhc.data 1
$execute if score #column bhc.data matches 3.. unless score @s bhc.bingo_2b_$(line)_3 matches 0.. run scoreboard players add #temp_column_enabled bhc.data 1
$execute if score #column bhc.data matches 4.. unless score @s bhc.bingo_2b_$(line)_4 matches 0.. run scoreboard players add #temp_column_enabled bhc.data 1
$execute if score #column bhc.data matches 5.. unless score @s bhc.bingo_2b_$(line)_5 matches 0.. run scoreboard players add #temp_column_enabled bhc.data 1
$execute if score #column bhc.data matches 6.. unless score @s bhc.bingo_2b_$(line)_6 matches 0.. run scoreboard players add #temp_column_enabled bhc.data 1
$execute if score #column bhc.data matches 7.. unless score @s bhc.bingo_2b_$(line)_7 matches 0.. run scoreboard players add #temp_column_enabled bhc.data 1
$execute if score #column bhc.data matches 8.. unless score @s bhc.bingo_2b_$(line)_8 matches 0.. run scoreboard players add #temp_column_enabled bhc.data 1
$execute if score #column bhc.data matches 9.. unless score @s bhc.bingo_2b_$(line)_9 matches 0.. run scoreboard players add #temp_column_enabled bhc.data 1

data modify storage bhc:temp new_adv.column.enabled set value 0
execute store result storage bhc:temp new_adv.column.enabled int 1 run scoreboard players get #temp_column_enabled bhc.data

function bhc:scenario/02/target/death/killer/new_adv/column_1 with storage bhc:temp new_adv.column
