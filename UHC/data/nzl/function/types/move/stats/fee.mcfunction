
#> nzl:types/move/stats/fee
#
# @within			nzl:types/move/stats/
#
#
# @description		Effets à appliquer sur les joueurs types fee
#

## TALENT


## BONUS
scoreboard players add @s nzl.stats.attack_special 1
scoreboard players add @s[scores={nzl.type.level=2..}] nzl.stats.attack_special 1
execute if score #day nzl.data matches ..-1 run scoreboard players add @s nzl.stats.attack_special 1
execute if score #day nzl.data matches ..-1 run scoreboard players add @s[scores={nzl.type.level=3}] nzl.stats.attack_special 1

## MALUS
execute if score #day nzl.data matches 0.. run scoreboard players add @s nzl.stats.attack 2
execute if score #day nzl.data matches 0.. run scoreboard players add @s nzl.stats.speed 1

## ATTAQUE
execute if entity @n[type=marker,predicate=uhc:id/team,scores={nzl.attack.length.01=1..}] run function nzl:types/move/attack/fee
