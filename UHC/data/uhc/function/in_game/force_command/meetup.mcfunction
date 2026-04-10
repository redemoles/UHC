
#> uhc:in_game/force_command/meetup
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Commandes in-game en tick
#

scoreboard players set @a uhc.meetup.activate 2
execute in minecraft:overworld run worldborder set 301
execute in minecraft:the_nether run worldborder set 301
execute in minecraft:the_end run worldborder set 301

execute in minecraft:overworld run function uhc:in_game/tp/spawn/border_size/main
execute as @a in minecraft:overworld run function uhc:in_game/tp/spawn/default

