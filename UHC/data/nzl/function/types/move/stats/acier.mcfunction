
#> nzl:types/move/stats/acier
#
# @within			nzl:types/move/stats/
#
#
# @description		Effets à appliquer sur les joueurs types acier
#

## TALENT


## BONUS
scoreboard players add @s nzl.stats.defense 2
scoreboard players add @s[scores={nzl.type.level=1,uhc.player.y=0..}] nzl.stats.mining_speed 4
scoreboard players add @s[scores={nzl.type.level=2,uhc.player.y=0..}] nzl.stats.mining_speed 6
scoreboard players add @s[scores={nzl.type.level=3,uhc.player.y=0..}] nzl.stats.mining_speed 8

## MALUS
scoreboard players remove @s[scores={nzl.type.level=..2}] nzl.stats.abso 1
scoreboard players remove @s nzl.stats.speed 1

## ATTAQUE
execute if entity @n[type=minecraft:marker,tag=UHC,predicate=uhc:id/team,scores={nzl.attack.length.01=1..}] run function nzl:types/move/attack/acier
