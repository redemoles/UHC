
#> uhc:in_game/player/spec/revive/main
#
# @within			uhc:in_game/player/tick
#
#
# @description		Resurrection d'un spectateur
#

tag @s remove revive
tag @s remove uhc.revive
execute if entity @s[tag=uhc.player] run return run function uhc:translation/in_game/player_spec_revive_cancel_is_playing

## Spec Chat
# Trigger
scoreboard players reset @s uhc.spec.tp
# Spec Info
scoreboard players reset @s uhc.spec_info.all
scoreboard players reset @s uhc.spec_info.none
scoreboard players reset @s uhc.spec_info.pve
scoreboard players reset @s uhc.spec_info.pvp
scoreboard players reset @s uhc.spec_info.blood_diamond
tag @s remove uhc.spec_info.blood_diamond
tag @s remove uhc.spec_info.pve
tag @s remove uhc.spec_info.pvp
# Scénarios
tag @s remove uhc.scenario.sound_paranoia.on

## Joueur intégrant la partie
execute if entity @s[tag=!uhc.player.dead] run return run function uhc:in_game/player/spec/revive/new_player/start_summon_process

## Équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players add #player uhc.data.temp 1
scoreboard players add #player uhc.data.temp.inv 1
execute if entity @s[tag=uhc.player.dead] in uhc:lobby as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run function uhc:in_game/player/spec/revive/team

## Attributes et effets
gamemode survival @s
effect clear @s
function uhc:player_status/attributes_and_effects/uhc/playing
execute if score #minutes uhc.data.temp matches -1 run gamemode adventure
execute if score #minutes uhc.data.temp matches -1 run function uhc:player_status/attributes_and_effects/respawning/start

## Basiques
# Ajout Joueur
execute unless score @s uhc.player.lives matches 1.. run scoreboard players set @s uhc.player.lives 1
scoreboard players set @s uhc.player.death.temp 0
# Retrait Spectateur
tag @s remove uhc.spec
tag @s add uhc.player
tag @s remove uhc.player.dead

## Téléportation
execute in minecraft:overworld run function uhc:in_game/tp/spawn/border_size/main
execute in minecraft:overworld run function uhc:in_game/tp/spawn/default
execute if score #start_in_sky uhc.data.setup matches 1 if score #minutes uhc.data.temp matches -1 in minecraft:overworld run function uhc:in_game/tp/spawn/start_in_the_sky
scoreboard players set @s uhc.timer.respawn 32
execute if score #minutes uhc.data.temp matches -1 run scoreboard players reset @s uhc.timer.respawn
