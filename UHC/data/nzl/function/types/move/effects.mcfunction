
#> nzl:types/move/effects
#
# @within			nzl:timer/tick
#
#
# @description		Application des effets aux joueurs
#

## STATUT GLOWING - FATAL-FOUDRE
execute if score @s nzl.statut.glowing matches 0 run effect clear @s minecraft:glowing
execute if score @s nzl.statut.glowing matches 1 run effect give @s minecraft:glowing infinite 0 true

## STATUT PARALYSIE
execute if score @s nzl.statut.paralysis matches 1.. run scoreboard players remove @s nzl.stats.speed 1
execute if score @s nzl.statut.paralysis matches 1.. run scoreboard players remove @s nzl.statut.paralysis 1

## ABSORPTION
execute if entity @s[advancements={nzl:absorption=true}] run function nzl:types/move/absorption

## ATTAQUE
execute if score @s nzl.stats.attack matches 18 run attribute @s minecraft:attack_damage base set 9
execute if score @s nzl.stats.attack matches 16 run attribute @s minecraft:attack_damage base set 7
execute if score @s nzl.stats.attack matches 14 run attribute @s minecraft:attack_damage base set 5
execute if score @s nzl.stats.attack matches 12 run attribute @s minecraft:attack_damage base set 3
execute if score @s nzl.stats.attack matches 10 run attribute @s minecraft:attack_damage base set 1
execute if score @s nzl.stats.attack matches 08 run attribute @s minecraft:attack_damage base set -1
execute if score @s nzl.stats.attack matches 06 run attribute @s minecraft:attack_damage base set -3
execute if score @s nzl.stats.attack matches 04 run attribute @s minecraft:attack_damage base set -5
execute if score @s nzl.stats.attack matches ..02 run attribute @s minecraft:attack_damage base set -7

## DEFENSE - /!\ uhc.effect.resistance
execute if score @s uhc.effect.resistance matches 0 run effect clear @s minecraft:resistance
execute if score @s nzl.stats.defense matches 18.. run effect give @s minecraft:resistance infinite 3 true
execute if score @s nzl.stats.defense matches 16 run effect give @s minecraft:resistance infinite 2 true
execute if score @s nzl.stats.defense matches 14 run effect give @s minecraft:resistance infinite 1 true
execute if score @s nzl.stats.defense matches 12 run effect give @s minecraft:resistance infinite 0 true

## VITESSE
execute if score @s nzl.stats.speed matches 14.. run attribute @s minecraft:movement_speed base set 0.160
execute if score @s nzl.stats.speed matches 13 run attribute @s minecraft:movement_speed base set 0.145
execute if score @s nzl.stats.speed matches 12 run attribute @s minecraft:movement_speed base set 0.130
execute if score @s nzl.stats.speed matches 11 run attribute @s minecraft:movement_speed base set 0.115
execute if score @s nzl.stats.speed matches 10 run attribute @s minecraft:movement_speed base set 0.1
execute if score @s nzl.stats.speed matches 08 run attribute @s minecraft:movement_speed base set 0.085
execute if score @s nzl.stats.speed matches 06 run attribute @s minecraft:movement_speed base set 0.070
execute if score @s nzl.stats.speed matches 04 run attribute @s minecraft:movement_speed base set 0.055
execute if score @s nzl.stats.speed matches ..02 run attribute @s minecraft:movement_speed base set 0.040

## VITESSE DE MINAGE
execute if score @s nzl.stats.mining_speed matches 10 run effect clear @s minecraft:haste
execute if score @s nzl.stats.mining_speed matches 10 run effect clear @s minecraft:mining_fatigue
execute if score @s nzl.stats.mining_speed matches 18.. run effect give @s minecraft:haste infinite 3 true
execute if score @s nzl.stats.mining_speed matches 16 run effect give @s minecraft:haste infinite 2 true
execute if score @s nzl.stats.mining_speed matches 14 run effect give @s minecraft:haste infinite 1 true
execute if score @s nzl.stats.mining_speed matches 12 run effect give @s minecraft:haste infinite 0 true
execute if score @s nzl.stats.mining_speed matches 08 run effect give @s minecraft:mining_fatigue infinite 0 true
execute if score @s nzl.stats.mining_speed matches 06 run effect give @s minecraft:mining_fatigue infinite 1 true
execute if score @s nzl.stats.mining_speed matches 04 run effect give @s minecraft:mining_fatigue infinite 2 true
execute if score @s nzl.stats.mining_speed matches ..02 run effect give @s minecraft:mining_fatigue infinite 3 true

## VITESSE D'ATTAQUE
execute if score @s nzl.stats.attack_speed matches 1 run attribute @s minecraft:attack_speed base set 4.8
execute if score @s nzl.stats.attack_speed matches 0 run attribute @s minecraft:attack_speed base set 4

## RESISTANCE AU KNOCKBACK
execute if score @s nzl.stats.knockback_resistance matches 0 run attribute @s minecraft:knockback_resistance base set 0

## PRECISION
execute unless score @s nzl.stats.accuracy matches -1 run effect clear @s minecraft:darkness
execute if score @s nzl.stats.accuracy matches -1 run effect give @s minecraft:darkness infinite 0 true

## TROUILLE
execute unless score @s nzl.stats.flinch matches -1 run effect clear @s minecraft:blindness
execute if score @s nzl.stats.flinch matches -1 run effect give @s minecraft:blindness infinite 0 true

## POISON
execute unless score @s nzl.stats.poison matches -1 run effect clear @s minecraft:poison
execute if score @s nzl.stats.poison matches -1 run effect give @s minecraft:poison 3 0 true
execute if entity @s[tag=nzl.type.01] run effect clear @s minecraft:poison
