
#> uhc:in_game/scenario/player
#
# @within			uhc:in_game/player/tick
#
#
# @description		Fonction tick de base en jeu pour chaque joueur
#

execute if score #best_pve uhc.scenario matches 1 as @s[tag=uhc.scenario.best_pve] run function uhc:in_game/scenario/best_pve/tick
execute if score #biome_paranoia uhc.scenario matches 1 if score #game_progress uhc.game_progress matches 1 as @s[tag=uhc.player] run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #biome_paranoia uhc.scenario matches 2 if score #game_progress uhc.game_progress matches 1 as @s[tag=uhc.player] run function uhc:in_game/scenario/biome_paranoia/by_nickname
execute if score #go_to_hell uhc.scenario matches 1 if score #go_to_hell uhc.data.temp matches ..0 run function uhc:in_game/scenario/go_to_hell/tick with storage uhc:scenario go_to_hell
execute if score #sky_high uhc.scenario matches 1 if score #sky_high uhc.data.temp matches ..0 run function uhc:in_game/scenario/sky_high/tick with storage uhc:scenario sky_high

# Minerais minés temporaires
execute as @s[tag=uhc.player] run function uhc:in_game/player/misc/ore_mined/main
