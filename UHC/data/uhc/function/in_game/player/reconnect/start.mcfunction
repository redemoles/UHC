
#> uhc:in_game/player/reconnect/start
#
# @within			uhc:in_game/player/reconnect/
#
#
# @description		Donne les effets / gamemode aux specs
#

gamemode survival @s
effect clear @s
effect give @s minecraft:instant_health 1 9 true
attribute @s minecraft:jump_strength base set 0.42
scoreboard players set @s uhc.effect.resistance -1
scoreboard players set @s uhc.timer.respawn 0
