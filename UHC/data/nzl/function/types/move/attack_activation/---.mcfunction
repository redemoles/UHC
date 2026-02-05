
#> nzl:types/move/attack_activation/---
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque disponible
tellraw @p[scores={nzl.type.player=99,nzl.attack.no_flood=0,uhc.player.lang=061801},predicate=uhc:id/team] [{"text":"\nTrempette utilisée. Rien ne se passe.\n","color":"#3F9FFF","bold":true}]
tellraw @p[scores={nzl.type.player=99,nzl.attack.no_flood=0,uhc.player.lang=051407},predicate=uhc:id/team] [{"text":"\nSplash used. Nothing happens.","color":"#3F9FFF","bold":true},{"text":"\nDuration: ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.length.01"},"color":"#FF3F3F","bold":false},{"text":" seconds.\n","color":"#7FBFFF","bold":false}]
playsound minecraft:entity.player.splash master @a ~ ~-1 ~ 0.2 1 0.0
particle minecraft:splash ~-0.1 ~ ~-0.1 0.2 0.2 0.2 0 10 normal
