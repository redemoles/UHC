
#> nzl:types/move/absorption
#
# @within			nzl:types/move/effects
#
#
# @description		Application des effets aux joueurs
#

## ABSORPTION
effect clear @s[scores={nzl.stats.abso=0}] minecraft:resistance
damage @s[scores={nzl.stats.abso=1}] 2
damage @s[scores={nzl.stats.abso=3}] 2

advancement revoke @s only nzl:absorption
