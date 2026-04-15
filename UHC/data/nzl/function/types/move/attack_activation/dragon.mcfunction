
#> nzl:types/move/attack_activation/dragon
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque disponible
scoreboard players set #seconds nzl.attack.length.03 30
scoreboard players operation @s nzl.attack.length.03 = #seconds nzl.attack.length.03
scoreboard players operation @s nzl.attack.length.03 *= #20 uhc.data.numbers
data modify storage nzl:temp move.type set value "03"
execute as @p[scores={nzl.type.player=03},predicate=uhc:id/team] run function uhc:translation/nzl/move_attack_activation with storage nzl:temp move.type
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 0.5 1 0.5
scoreboard players set @s nzl.attack.cooldown.03 300
scoreboard players operation @s nzl.attack.cooldown.03 *= #20 uhc.data.numbers

scoreboard players operation @s nzl.attack.length > @s nzl.attack.length.03
scoreboard players operation @s nzl.attack.cooldown > @s nzl.attack.cooldown.03
