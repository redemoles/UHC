
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
function uhc:player_status/attributes_and_effects/uhc/playing
scoreboard players set @s uhc.effect.resistance -1
scoreboard players set @s uhc.timer.respawn 0
tag @s remove uhc.start.temp
