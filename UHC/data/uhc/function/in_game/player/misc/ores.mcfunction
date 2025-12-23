
#> uhc:in_game/player/misc/ores
#
# @within			uhc:in_game/timer/players
#
#
# @description		Function executed every second
#

execute if score #blood_cycle uhc.scenario matches 1 run function uhc:in_game/scenario/blood_cycle/
execute if score #trade_uhc uhc.scenario matches 1 run function uhc:in_game/scenario/trade_uhc/

execute if score @s uhc.player.mined.temp.coal_deepslate matches 1 run scoreboard players add @s uhc.player.mined.coal 1
execute if score @s uhc.player.mined.temp.copper_deepslate matches 1 run scoreboard players add @s uhc.player.mined.copper 1
execute if score @s uhc.player.mined.temp.iron_deepslate matches 1 run scoreboard players add @s uhc.player.mined.iron 1
execute if score @s uhc.player.mined.temp.gold_deepslate matches 1 run scoreboard players add @s uhc.player.mined.gold 1
execute if score @s uhc.player.mined.temp.lapis_deepslate matches 1 run scoreboard players add @s uhc.player.mined.lapis 1
execute if score @s uhc.player.mined.temp.redstone_deepslate matches 1 run scoreboard players add @s uhc.player.mined.redstone 1
execute if score @s uhc.player.mined.temp.diamond_deepslate matches 1 run scoreboard players add @s uhc.player.mined.diamond 1
execute if score @s uhc.player.mined.temp.raw_copper_block matches 1 run scoreboard players add @s uhc.player.mined.copper 9
execute if score @s uhc.player.mined.temp.raw_iron_block matches 1 run scoreboard players add @s uhc.player.mined.iron 9
execute if score @s uhc.player.mined.temp.raw_gold_block matches 1 run scoreboard players add @s uhc.player.mined.gold 9

scoreboard players reset @s uhc.player.mined.temp.coal
scoreboard players reset @s uhc.player.mined.temp.coal_deepslate
scoreboard players reset @s uhc.player.mined.temp.copper
scoreboard players reset @s uhc.player.mined.temp.copper_deepslate
scoreboard players reset @s uhc.player.mined.temp.iron
scoreboard players reset @s uhc.player.mined.temp.iron_deepslate
scoreboard players reset @s uhc.player.mined.temp.gold
scoreboard players reset @s uhc.player.mined.temp.gold_deepslate
scoreboard players reset @s uhc.player.mined.temp.lapis
scoreboard players reset @s uhc.player.mined.temp.lapis_deepslate
scoreboard players reset @s uhc.player.mined.temp.redstone
scoreboard players reset @s uhc.player.mined.temp.redstone_deepslate
scoreboard players reset @s uhc.player.mined.temp.diamond
scoreboard players reset @s uhc.player.mined.temp.diamond_deepslate
scoreboard players reset @s uhc.player.mined.temp.raw_copper_block
scoreboard players reset @s uhc.player.mined.temp.raw_iron_block
scoreboard players reset @s uhc.player.mined.temp.raw_gold_block
