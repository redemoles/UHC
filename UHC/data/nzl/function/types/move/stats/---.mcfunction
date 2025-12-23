
#> nzl:types/move/stats/---
#
# @within			nzl:types/move/stats/
#
#
# @description		Effets à appliquer sur les joueurs types acier
#

## BONUS
scoreboard players add @s[scores={nzl.type.level=1}] nzl.stats.defense 1
scoreboard players add @s[scores={nzl.type.level=2..}] nzl.stats.defense 2
scoreboard players add @s[scores={nzl.type.level=3}] nzl.stats.attack 1

## MALUS
scoreboard players remove @s[scores={nzl.type.level=1}] nzl.stats.speed 1
scoreboard players remove @s[scores={nzl.type.level=2..}] nzl.stats.speed 2
