
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
tellraw @p[scores={nzl.type.player=06,uhc.player.lang=061801},predicate=uhc:id_team] [{"text":"\nAttaque activée.","color":"#3F9FFF","bold":true},{"text":"\nDurée : ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.length.06"},"color":"#FF3F3F","bold":false},{"text":" secondes.\n","color":"#7FBFFF","bold":false}]
tellraw @p[scores={nzl.type.player=06,uhc.player.lang=051407},predicate=uhc:id_team] [{"text":"\nAttack activated.","color":"#3F9FFF","bold":true},{"text":"\nDuration: ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.length.06"},"color":"#FF3F3F","bold":false},{"text":" seconds.\n","color":"#7FBFFF","bold":false}]
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 0.5 1 0.5
scoreboard players set @s nzl.attack.cooldown.06 300
scoreboard players operation @s nzl.attack.cooldown.06 *= #20 uhc.data.numbers

scoreboard players operation @s nzl.attack.length > @s nzl.attack.length.06
scoreboard players operation @s nzl.attack.cooldown > @s nzl.attack.cooldown.06

# Instantanée
execute at @p[scores={nzl.type.player=06},predicate=uhc:id_team] run effect give @a[predicate=uhc:id_team,distance=..50] instant_health 1 0 true
execute at @p[scores={nzl.type.player=06},predicate=uhc:id_team] run effect give @a[predicate=uhc:id_team,distance=..50] absorption 30 1 true
execute at @p[scores={nzl.type.player=06},predicate=uhc:id_team] as @a[predicate=uhc:id_team,distance=..50] run damage @s 2
effect give @p[scores={nzl.type.player=06},predicate=uhc:id_team] regeneration infinite 0 true
