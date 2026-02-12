
#> uhc:in_game/advancement/hurted_by_entity/attacker/
#
# @within			uhc:in_game/advancement/hurted_by_entity/
#
#
# @description		Le joueur a pris un dégât PvP
#



execute unless entity @p[tag=uhc.spec_info.pvp] run return fail


# Couleur d'équipe de base
function uhc:in_game/player/team_join/vanilla

# Données du joueur
function uhc:in_game/player/health
execute if score #hp_chat uhc.data.setup matches 0 run scoreboard players operation #temp_entity uhc.player.health.100 = @s uhc.player.health.20
execute if score #hp_chat uhc.data.setup matches 1 run scoreboard players operation #temp_entity uhc.player.health.100 = @s uhc.player.health.100

tag @s add uhc.temp.attacker
execute if score #hp_chat uhc.data.setup matches 0 run function uhc:in_game/advancement/hurted_by_entity/attacker/tellraw_heart with storage uhc:temp hp
execute if score #hp_chat uhc.data.setup matches 1 run function uhc:in_game/advancement/hurted_by_entity/attacker/tellraw_percent with storage uhc:temp hp
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
