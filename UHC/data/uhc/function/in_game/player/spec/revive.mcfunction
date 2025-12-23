
#> uhc:in_game/player/spec/revive
#
# @within			uhc:in_game/timer/players
#
#
# @description		Resurrection d'un spectateur
#

tag @s remove uhc.revive
execute if entity @s[tag=uhc.player] run return fail

scoreboard players set @s[scores={uhc.id.team=99}] uhc.id.team 0
scoreboard players set @s uhc.player.lives 1
scoreboard players set @s uhc.player.death 0

tag @s remove uhc.spec
tag @s add uhc.player
tag @s remove uhc.player.dead
tag @s remove uhc.scenario.sound_paranoia.on

scoreboard players reset @s uhc.spec.tp
scoreboard players reset @s uhc.spec_info.all
scoreboard players reset @s uhc.spec_info.none
scoreboard players reset @s uhc.spec_info.pve
scoreboard players reset @s uhc.spec_info.pvp
scoreboard players reset @s uhc.spec_info.blood_diamond

tag @s remove uhc.spec_info.blood_diamond
tag @s remove uhc.spec_info.pve
tag @s remove uhc.spec_info.pvp

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players add #player uhc.data.temp 1
scoreboard players add #player uhc.data.temp.inv 1
execute as @e[type=marker,predicate=uhc:id_team] run function uhc:in_game/player/spec/revive_team

gamemode survival @s
effect clear @s

tp @s 0 200 0
scoreboard players set @s uhc.player.tp 1

execute if score #version_pvp uhc.data.setup matches 1 run attribute @s minecraft:attack_knockback base set 0.55
execute if score #version_pvp uhc.data.setup matches 1 run attribute @s minecraft:attack_speed base set 1024

execute if score #no_fall uhc.scenario matches 1 run attribute @s minecraft:fall_damage_multiplier base set 0.0
