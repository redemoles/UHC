
#> uhc:in_game/tp/spawn/randomizer/ffa
#
# @within			uhc:start/setup/team/ffa_mode/main
#
#
# @description		Coordonnées du point d'apparition du joueur 
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players operation @s uhc.id.spawn.x = @p[predicate=uhc:id/team] uhc.player.x
scoreboard players operation @s uhc.id.spawn.z = @p[predicate=uhc:id/team] uhc.player.z
scoreboard players operation @p[predicate=uhc:id/team] uhc.id.spawn = #team uhc.id.team
scoreboard players operation @s uhc.id.spawn = #team uhc.id.team
