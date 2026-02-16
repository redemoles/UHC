
#> nzl:types/move/stats/combat
#
# @within			nzl:types/move/stats/
#
#
# @description		Effets à appliquer sur les joueurs types combat
#

## TALENT - Double Pied
scoreboard players add @s nzl.stats.attack_speed 1

## BONUS
scoreboard players add @s[scores={nzl.type.level=2..}] nzl.stats.attack 2
scoreboard players add @s[scores={nzl.type.level=2}] nzl.stats.mining_speed 2
scoreboard players add @s[scores={nzl.type.level=3}] nzl.stats.mining_speed 4

## MALUS
scoreboard players remove @s nzl.stats.attack_special 5

## ATTAQUE
execute if entity @n[type=minecraft:marker,predicate=uhc:id/team,scores={nzl.attack.length.02=1..}] run function nzl:types/move/attack/combat
