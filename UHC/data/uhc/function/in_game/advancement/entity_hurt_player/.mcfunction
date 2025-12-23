
#> uhc:in_game/advancement/entity_hurt_player/
#
# @within			advancement #uhc:entity_hurt_player
#
#
# @description		Le joueur a pris un dégât PvE
#

advancement revoke @s only uhc:entity_hurt_player
execute unless score #pve uhc.data.temp matches ..0 run return fail
execute unless entity @p[tag=uhc.spec_info.pve] run return fail
tag @s add uhc.temp

# Couleur d'équipe de base
function uhc:in_game/player/team_join/vanilla

# Données du joueur
execute store result storage uhc:temp hp.id int 1 run scoreboard players get @s uhc.id.player
function uhc:in_game/scenario/team_health/hp
execute if score #hp_chat uhc.data.setup matches 0 store result score #temp uhc.player.health.100 run scoreboard players operation @s uhc.scenario.team_health.player /= #05 uhc.data.numbers
execute if score #hp_chat uhc.data.setup matches 1 store result score #temp uhc.player.health.100 run scoreboard players get @s uhc.scenario.team_health.player


# Si l'entité est un joueur
execute on attacker as @s[type=minecraft:player] run return run function uhc:in_game/advancement/player_hurt_player/

# Si l'entité n'est pas un joueur
execute if score #hp_chat uhc.data.setup matches 0 run function uhc:in_game/advancement/entity_hurt_player/tellraw_heart with storage uhc:temp hp
execute if score #hp_chat uhc.data.setup matches 1 run function uhc:in_game/advancement/entity_hurt_player/tellraw_percent with storage uhc:temp hp

# Couleur du joueur
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 1 run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 2 run function uhc:in_game/scenario/biome_paranoia/by_nickname
execute unless score #nzl uhc.gamemode matches 1 if score #anonyme_team uhc.data.setup matches 1 run team join 091 @s
execute if score #nzl uhc.gamemode matches 1 run function uhc:in_game/player/team_join/nzl

tag @s remove uhc.temp
