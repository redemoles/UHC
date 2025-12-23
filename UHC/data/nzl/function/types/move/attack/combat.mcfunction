
#> nzl:types/move/attack/combat
#
# @within			nzl:types/move/stats/combat
#
#
# @description		Dynamo-poing
#

scoreboard players add @s nzl.stats.attack 4

scoreboard players add @s[scores={nzl.type.level=1..2}] nzl.stats.speed 1
scoreboard players add @s[scores={nzl.type.level=3}] nzl.stats.speed 2
