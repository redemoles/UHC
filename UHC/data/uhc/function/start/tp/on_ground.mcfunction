
#> uhc:start/tp/main
#
# @within			uhc:start/countdown/start
#
#
# @description		Lancement de la partie
#

scoreboard players add #team uhc.id.team 1
execute as @n[type=minecraft:marker,distance=0..,predicate=uhc:id/team] unless entity @s[tag=UHC] run return run function uhc:start/tp/on_ground

## Téléportation
# Message à tous
execute as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run function uhc:translation/start_teleportation_team
# Téléportation et message à l'équipe
execute in minecraft:overworld as @a[predicate=uhc:id/team] run function uhc:in_game/tp/spawn/default

## Cooldown prochaine téléportation
execute if entity @p[tag=uhc.player,distance=0..] run scoreboard players set #tick_start uhc.data.temp 92
