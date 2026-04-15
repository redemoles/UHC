
#> nzl:types/move/attack_available/combat
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque déjà active
scoreboard players operation #seconds nzl.attack.cooldown.02 = @s nzl.attack.cooldown.02
scoreboard players operation #seconds nzl.attack.cooldown.02 /= #20 uhc.data.numbers
execute if score @s nzl.attack.cooldown.02 matches 1.. run data modify storage nzl:temp move.type set value "02"
execute if score @s nzl.attack.cooldown.02 matches 1.. as @p[scores={nzl.type.player=02,nzl.attack.no_flood=0},predicate=uhc:id/team] run function uhc:translation/nzl/move_cooldown with storage nzl:temp move

# Si attaque disponible
execute unless score @s nzl.attack.cooldown.02 matches 1.. run function nzl:types/move/attack_activation/combat
