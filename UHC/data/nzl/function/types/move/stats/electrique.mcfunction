
#> nzl:types/move/stats/eau
#
# @within			nzl:types/move/stats/
#
#
# @description		Effets à appliquer sur les joueurs types eau
#

## TALENT - Statik


## BONUS
scoreboard players add @s[tag=nzl.eau.target] nzl.stats.attack 2
scoreboard players add @s nzl.stats.speed 1
scoreboard players add @s[scores={nzl.type.level=3}] nzl.stats.speed 1

## MALUS
scoreboard players remove @s nzl.stats.attack 2
scoreboard players remove @s[y=50,dy=-128] nzl.stats.mining_speed 2

## ATTAQUE
execute if entity @n[type=minecraft:marker,predicate=uhc:id/team,scores={nzl.attack.length.01=1..}] run function nzl:types/move/attack/eau
