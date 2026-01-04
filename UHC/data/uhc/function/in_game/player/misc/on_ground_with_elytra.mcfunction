
#> uhc:in_game/player/misc/on_ground_with_elytra
#
# @within			uhc:in_game/player/tick
#
#
# @description		Donne les effets / gamemode aux specs
#

tag @s remove uhc.player.start_in_the_sky
clear @s minecraft:elytra[minecraft:custom_data={Tags:"start_in_the_sky"}]
effect clear @s minecraft:invisibility
effect clear @s minecraft:weakness

execute unless score #biome_paranoia uhc.scenario matches 2 run return fail

execute store result storage uhc:biome_paranoia biome_paranoia.team int 1 run scoreboard players get @s uhc.scenario.biome_paranoia.team
execute if score @s uhc.scenario.biome_paranoia.team matches 0..9 run function uhc:in_game/scenario/biome_paranoia/by_nickname_0 with storage uhc:biome_paranoia biome_paranoia
function uhc:in_game/team/collision/never_biome_paranoia with storage uhc:biome_paranoia biome_paranoia
