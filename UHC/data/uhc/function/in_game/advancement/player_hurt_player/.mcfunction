
#> uhc:in_game/advancement/player_hurt_player/
#
# @within			uhc:in_game/advancement/entity_hurt_player/
#
#
# @description		Le joueur a pris un dégât PvP
#



execute unless entity @p[tag=uhc.spec_info.pvp] run return fail


# Couleur d'équipe de base
function uhc:in_game/player/team_join/vanilla

# Données du joueur
function uhc:in_game/scenario/team_health/hp
execute if score #hp_chat uhc.data.setup matches 0 store result score #temp_entity uhc.player.health.100 run scoreboard players operation @s uhc.scenario.team_health.player /= #05 uhc.data.numbers
execute if score #hp_chat uhc.data.setup matches 1 store result score #temp_entity uhc.player.health.100 run scoreboard players get @s uhc.scenario.team_health.player

tag @s add uhc.temp.attacker
execute if score #hp_chat uhc.data.setup matches 0 run function uhc:in_game/advancement/player_hurt_player/tellraw_heart with storage uhc:temp hp
execute if score #hp_chat uhc.data.setup matches 1 run function uhc:in_game/advancement/player_hurt_player/tellraw_percent with storage uhc:temp hp
tag @s remove uhc.temp.attacker

# Couleur du joueur
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 1 run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 2 run function uhc:in_game/scenario/biome_paranoia/by_nickname
execute unless score #nzl uhc.gamemode matches 1 if score #anonyme_team uhc.data.setup matches 1 run team join 091 @s
execute if score #nzl uhc.gamemode matches 1 run function uhc:in_game/player/team_join/nzl

# Couleur du joueur ciblé
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 1 as @p[tag=uhc.temp] run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 2 as @p[tag=uhc.temp] run function uhc:in_game/scenario/biome_paranoia/by_nickname
execute unless score #nzl uhc.gamemode matches 1 if score #anonyme_team uhc.data.setup matches 1 as @p[tag=uhc.temp] run team join 091 @s
execute if score #nzl uhc.gamemode matches 1 as @p[tag=uhc.temp] run function uhc:in_game/player/team_join/nzl

tag @p[tag=uhc.temp] remove uhc.temp
