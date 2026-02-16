
#> nzl:types/move/stats/eau
#
# @within			nzl:types/move/stats/
#
#
# @description		Effets à appliquer sur les joueurs types eau
#

## TALENT - Surf
execute if entity @s[predicate=uhc:in_water] run scoreboard players add @s nzl.stats.attack 2

## BONUS
effect give @s minecraft:conduit_power infinite 0 true
effect give @s[scores={nzl.type.level=2}] minecraft:dolphins_grace infinite 0 true
effect give @s[scores={nzl.type.level=3}] minecraft:dolphins_grace infinite 1 true

## MALUS
scoreboard players remove @s nzl.stats.speed 1

## ATTAQUE
execute if entity @n[type=minecraft:marker,predicate=uhc:id/team,scores={nzl.attack.length.01=1..}] run function nzl:types/move/attack/eau
