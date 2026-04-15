
#> nzl:types/move/attack_available/sol
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque déjà active
scoreboard players operation #seconds nzl.attack.cooldown.15 = @s nzl.attack.cooldown.15
scoreboard players operation #seconds nzl.attack.cooldown.15 /= #20 uhc.data.numbers
execute if score @s nzl.attack.cooldown.15 matches 1.. run data modify storage nzl:temp move.type set value "15"
execute if score @s nzl.attack.cooldown.15 matches 1.. as @p[scores={nzl.type.player=15,nzl.attack.no_flood=0},predicate=uhc:id/team] run function uhc:translation/nzl/move_cooldown with storage nzl:temp move

# Si attaque disponible
execute unless score @s nzl.attack.cooldown.15 matches 1.. run function nzl:types/move/attack_activation/sol
