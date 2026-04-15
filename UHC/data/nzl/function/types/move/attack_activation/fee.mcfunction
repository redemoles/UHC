
#> nzl:types/move/attack_activation/fee
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque disponible
scoreboard players set #seconds nzl.attack.length.06 30
scoreboard players operation @s nzl.attack.length.06 = #seconds nzl.attack.length.06
scoreboard players operation @s nzl.attack.length.06 *= #20 uhc.data.numbers
data modify storage nzl:temp move.type set value "06"
execute as @p[scores={nzl.type.player=06},predicate=uhc:id/team] run function uhc:translation/nzl/move_attack_activation with storage nzl:temp move.type
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 0.5 1 0.5
scoreboard players set @s nzl.attack.cooldown.06 300
scoreboard players operation @s nzl.attack.cooldown.06 *= #20 uhc.data.numbers

scoreboard players operation @s nzl.attack.length > @s nzl.attack.length.06
scoreboard players operation @s nzl.attack.cooldown > @s nzl.attack.cooldown.06

# Instantanée
execute at @p[scores={nzl.type.player=06},predicate=uhc:id/team] run effect give @a[predicate=uhc:id/team,distance=..50] instant_health 1 0 true
execute at @p[scores={nzl.type.player=06},predicate=uhc:id/team] run effect give @a[predicate=uhc:id/team,distance=..50] absorption 30 1 true
execute at @p[scores={nzl.type.player=06},predicate=uhc:id/team] as @a[predicate=uhc:id/team,distance=..50] run damage @s 2
effect give @p[scores={nzl.type.player=06},predicate=uhc:id/team] regeneration infinite 0 true
