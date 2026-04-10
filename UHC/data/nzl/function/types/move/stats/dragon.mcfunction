
#> nzl:types/move/stats/combat
#
# @within			nzl:types/move/stats/
#
#
# @description		Effets à appliquer sur les joueurs types combat
#

## TOUCHE PAR FEE
scoreboard players remove @s[scores={nzl.dragon.malus=1..}] nzl.dragon.malus 1
scoreboard players set @s[scores={nzl.type.level=..2},advancements={nzl:dragon_hurted_by_fee=true}] nzl.dragon.malus 80
scoreboard players set @s[scores={nzl.type.level=3},advancements={nzl:dragon_hurted_by_fee=true}] nzl.dragon.malus 40
advancement revoke @s[advancements={nzl:dragon_hurted_by_fee=true}] only nzl:dragon_hurted_by_fee

## TALENT - Début Calme
execute if score #day nzl.data matches 0 run scoreboard players remove @s[scores={nzl.type.level=3}] nzl.stats.attack 2
execute if score #day nzl.data matches 0 run scoreboard players remove @s[scores={nzl.type.level=3}] nzl.stats.speed 1
execute if score #day nzl.data matches 1 if score #seconds uhc.data.temp matches ..29 run scoreboard players remove @s[scores={nzl.type.level=3}] nzl.stats.attack 2
execute if score #day nzl.data matches 1 if score #seconds uhc.data.temp matches ..29 run scoreboard players remove @s[scores={nzl.type.level=3}] nzl.stats.speed 1

## BONUS
scoreboard players add @s[scores={nzl.type.level=3,nzl.dragon.malus=0}] nzl.stats.defense 2
scoreboard players add @s[scores={nzl.type.level=2..,nzl.dragon.malus=0}] nzl.stats.attack_special 2

## MALUS
scoreboard players remove @s[scores={nzl.type.level=..2}] nzl.stats.speed 1

## ATTAQUE
execute if score @s nzl.dragon.malus matches 0 if entity @n[type=minecraft:marker,tag=UHC,predicate=uhc:id/team,scores={nzl.attack.length.03=1..}] run function nzl:types/move/attack/dragon
