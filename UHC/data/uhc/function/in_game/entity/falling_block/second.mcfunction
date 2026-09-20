
#> uhc:in_game/entity/falling_block/second
#
# @within			uhc:in_game/timer/second
#
#
# @description		Clear des falling blocks
#

scoreboard players add @s uhc.timer.entities 1
execute if score @s uhc.timer.entities matches 3.. run kill @s
