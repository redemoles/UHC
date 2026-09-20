
#> uhc:in_game/entity/item/second
#
# @within			uhc:in_game/timer/second
#
#
# @description		Clear d'items au sol
#

scoreboard players add @s uhc.timer.entities 1
execute if score @s uhc.timer.entities matches 16.. run kill @s
