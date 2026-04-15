
#> nzl:types/move/attack_activation/---
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque disponible
execute as @p[scores={nzl.type.player=99,nzl.attack.no_flood=0},predicate=uhc:id/team] run function uhc:translation/nzl/move_splash_activation
playsound minecraft:entity.player.splash master @a ~ ~-1 ~ 0.2 1 0.0
particle minecraft:splash ~-0.1 ~ ~-0.1 0.2 0.2 0.2 0 10 normal
