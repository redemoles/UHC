
#> uhc:in_game/entity/item/second
#
# @within			uhc:in_game/timer/second
#
#
# @description		Clear d'items au sol
#

scoreboard players add @s uhc.timer.entities 1
kill @s[scores={uhc.timer.entities=150..}]
