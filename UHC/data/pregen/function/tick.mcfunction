
#> pregen:tick
#
# @within			#minecraft:tick
#
#
# @description		Fonction tick de prégénération
#

execute if score #overworld_working pregen.world matches 1.. in minecraft:overworld run function pregen:timer with storage uhc:settings pregen
execute if score #the_nether_working pregen.world matches 1.. in minecraft:the_nether run function pregen:timer with storage uhc:settings pregen
execute if score #the_end_working pregen.world matches 1.. in minecraft:the_end run function pregen:timer with storage uhc:settings pregen
