
#> uhc:in_game/tp/spawn/default
#
# @within			uhc:in_game/player/death/main
# @within			uhc:start/game_team/main
#
# @description		Téléportation aux points d'apparition des équipes
#

scoreboard players set #can_respawn uhc.data.temp 0
execute if score #minutes uhc.data.temp matches 0.. if data entity @s respawn run scoreboard players set #can_respawn uhc.data.temp 1

scoreboard players set #respawn_dimension uhc.data.temp 11
execute store result score #respawn_dimension uhc.data.temp run data get entity @s respawn.dimension
execute if score #respawn_dimension uhc.data.temp matches ..11 run scoreboard players set #can_respawn uhc.data.temp 0

execute if score #can_respawn uhc.data.temp matches 1.. run return fail

## Point d'apparition
# Respawn au sol
scoreboard players set @s uhc.player.tp 1
# Spawn 00
execute if score @s uhc.id.spawn matches 00 in minecraft:overworld positioned 0 300 0 run tp @s ~ ~ ~ 0.0 0.0
# Spawn 01-*
scoreboard players operation #team uhc.id.team = @s uhc.id.team
function uhc:in_game/tp/spawn/point/macro_set
execute if score @s uhc.id.spawn matches 01.. run function uhc:in_game/tp/spawn/point/tp with storage uhc:temp respawn_location
