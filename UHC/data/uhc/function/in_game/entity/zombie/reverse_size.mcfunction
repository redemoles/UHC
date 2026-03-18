
#> uhc:in_game/entity/zombie/reverse_size
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Inversion des tailles des bébés zombies et zombies normaux
#

tag @s add uhc.checked
execute as @s[nbt={IsBaby:0b}] run attribute @s minecraft:scale base set 0.5
execute as @s[nbt={IsBaby:1b}] run attribute @s minecraft:scale base set 2
