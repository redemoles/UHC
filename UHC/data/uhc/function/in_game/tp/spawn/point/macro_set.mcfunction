
#> uhc:in_game/tp/spawn/point/macro_set
#
# @within			uhc:in_game/tp/spawn/default
# @within			uhc:in_game/player/login/main
#
# @description		Préparation de l'envoi des coordonnées du point d'apparition d'équipe 
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute store result storage uhc:temp respawn_location.x int 1 in uhc:lobby run scoreboard players get @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] uhc.id.spawn.x.temp
execute store result storage uhc:temp respawn_location.z int 1 in uhc:lobby run scoreboard players get @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] uhc.id.spawn.z.temp
function uhc:translation/in_game/tp_spawn_point with storage uhc:temp respawn_location
