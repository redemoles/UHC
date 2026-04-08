
#> uhc:in_game/player/spec/main
#
# @within			uhc:in_game/player/tick
#
#
# @description		Donne les effets / gamemode aux specs
#

function uhc:player_status/attributes_and_effects/uhc/playing

gamemode spectator @s
effect give @s minecraft:invisibility infinite 1 true

tag @s add uhc.spec
tag @s remove uhc.player
tag @s remove uhc.player.start_in_the_sky
tag @s[scores={uhc.player.online=1}] add uhc.player.dead
tag @s remove uhc.ironman
tag @s remove uhc.scenario.best_pve
execute if score #sound_paranoia uhc.scenario matches 1 run tag @s add uhc.scenario.sound_paranoia.on
scoreboard players set @s uhc.player.death.temp 2
scoreboard players set @s uhc.timer.respawn 0
scoreboard players set @s uhc.player.online 1

# Trigger
scoreboard players enable @s uhc.spec.tp
scoreboard players enable @s uhc.spec_info.all
scoreboard players enable @s uhc.spec_info.none
scoreboard players enable @s uhc.spec_info.pve
scoreboard players enable @s uhc.spec_info.pvp
execute if score #blood_diamond uhc.scenario matches 1.. run scoreboard players enable @s uhc.spec_info.blood_diamond
function uhc:in_game/player/spec/spec_info_trigger/all
execute if score #bhc bhc.scenario matches 91..98 run tag @s remove uhc.spec_info.pve
