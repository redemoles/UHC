
#> uhc:in_game/player/spec/revive/main
#
# @within			uhc:in_game/player/tick
#
#
# @description		Resurrection d'un spectateur
#

tag @s remove revive
tag @s remove uhc.revive
execute if entity @s[tag=uhc.player] run return run function uhc:in_game/player/spec/revive/cancel

## Joueur intégrant la partie
#execute if entity @s[tag=!uhc.player.dead] run return run function uhc:in_game/player/spec/revive/new_player
scoreboard players set @s[scores={uhc.id.team=99}] uhc.id.team 0

## Équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players add #player uhc.data.temp 1
scoreboard players add #player uhc.data.temp.inv 1
execute if entity @s[tag=uhc.player.dead] in uhc:lobby as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run function uhc:in_game/player/spec/revive/team

## Téléportation
execute in minecraft:overworld run function uhc:in_game/tp/spawn/border_size/main
execute in minecraft:overworld run function uhc:in_game/tp/spawn/default with storage uhc:temp respawn_location
scoreboard players set @s uhc.timer.respawn 32

## Attributes et effets
gamemode survival @s
effect clear @s
function uhc:player_status/attributes_and_effects/uhc/playing

## Basiques
# Ajout Joueur
execute if entity @s[tag=uhc.player.dead] run scoreboard players set @s uhc.player.lives 1
execute if entity @s[tag=!uhc.player.dead] run scoreboard players operation @s uhc.player.lives = #lives uhc.data.temp
scoreboard players set @s uhc.player.death.temp 0
# Retrait Spectateur
tag @s remove uhc.spec
tag @s add uhc.player
tag @s remove uhc.player.dead
scoreboard players reset @s uhc.spec.tp
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
