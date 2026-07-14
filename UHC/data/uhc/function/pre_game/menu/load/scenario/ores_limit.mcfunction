
#> uhc:pre_game/menu/load/scenario/ores_limit
#
# @within			uhc:pre_game/menu/selection/scenario/pages/*
#
#
# @description		Menu Ores Limit
#

clear @s
execute unless score @s uhc.menu.scenario.ores_limit matches 1.. if score #ores_limit uhc.scenario matches 0 run scoreboard players set @s uhc.menu.scenario.ores_limit 1
execute unless score @s uhc.menu.scenario.ores_limit matches 1.. if score #ores_limit uhc.scenario matches 1.. run scoreboard players set @s uhc.menu.scenario.ores_limit 12







function uhc:pre_game/menu/load/background/

function uhc:translation/menu/load/scenario/ores_limit with storage uhc:scenario ores_limit

execute if score @s uhc.menu.scenario.ores_limit matches 11.. run item replace entity @s inventory.20 with minecraft:purple_concrete[minecraft:item_name=[{"text":"-5","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"-5"}]
execute if score @s uhc.menu.scenario.ores_limit matches 11.. run item replace entity @s inventory.21 with minecraft:magenta_concrete[minecraft:item_name=[{"text":"-1","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"-1"}]
execute if score @s uhc.menu.scenario.ores_limit matches 11.. run item replace entity @s inventory.23 with minecraft:light_blue_concrete[minecraft:item_name=[{"text":"+1","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"+1"}]
execute if score @s uhc.menu.scenario.ores_limit matches 11.. run item replace entity @s inventory.24 with minecraft:cyan_concrete[minecraft:item_name=[{"text":"+5","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"+5"}]

function uhc:translation/menu/load/close
