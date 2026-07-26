
#> uhc:pre_game/menu/load/scenario/blood_diamond
#
# @within			uhc:pre_game/menu/selected/scenario/pages/*
#
#
# @description		Menu Blood Diamond
#

clear @s
execute unless score @s uhc.menu.scenario.blood_diamond matches 1.. run scoreboard players set @s uhc.menu.scenario.blood_diamond 1








function uhc:pre_game/menu/load/background/

function uhc:translation/menu/load/scenario/blood_diamond_main with storage uhc:scenario blood_diamond
execute if score #blood_diamond uhc.scenario matches 1 run function uhc:translation/menu/load/scenario/blood_diamond_tier_1 with storage uhc:scenario blood_diamond
execute if score #blood_diamond uhc.scenario matches 1 run function uhc:translation/menu/load/scenario/blood_diamond_tier_2 with storage uhc:scenario blood_diamond

execute if score #blood_diamond uhc.scenario matches 1 if score @s uhc.menu.scenario.blood_diamond matches 13.. run item replace entity @s inventory.20 with minecraft:purple_concrete[minecraft:item_name=[{"text":"-5","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"-5"}]
execute if score #blood_diamond uhc.scenario matches 1 if score @s uhc.menu.scenario.blood_diamond matches 03.. run item replace entity @s inventory.21 with minecraft:magenta_concrete[minecraft:item_name=[{"text":"-1","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"-1"}]
execute if score #blood_diamond uhc.scenario matches 1 if score @s uhc.menu.scenario.blood_diamond matches 03.. run item replace entity @s inventory.23 with minecraft:light_blue_concrete[minecraft:item_name=[{"text":"+1","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"+1"}]
execute if score #blood_diamond uhc.scenario matches 1 if score @s uhc.menu.scenario.blood_diamond matches 13.. run item replace entity @s inventory.24 with minecraft:cyan_concrete[minecraft:item_name=[{"text":"+5","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"+5"}]

function uhc:translation/menu/load/close
