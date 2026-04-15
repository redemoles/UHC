
#> nzl:types/move/attack_activation/psy
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque disponible
scoreboard players set #seconds nzl.attack.length.13 15
scoreboard players operation @s nzl.attack.length.13 = #seconds nzl.attack.length.13
scoreboard players operation @s nzl.attack.length.13 *= #20 uhc.data.numbers
data modify storage nzl:temp move.type set value "13"
execute as @p[scores={nzl.type.player=13},predicate=uhc:id/team] run function uhc:translation/nzl/move_attack_activation with storage nzl:temp move.type
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 0.5 1 0.5
scoreboard players set @s nzl.attack.cooldown.13 300
scoreboard players operation @s nzl.attack.cooldown.13 *= #20 uhc.data.numbers

scoreboard players operation @s nzl.attack.length > @s nzl.attack.length.01
scoreboard players operation @s nzl.attack.cooldown > @s nzl.attack.cooldown.01
