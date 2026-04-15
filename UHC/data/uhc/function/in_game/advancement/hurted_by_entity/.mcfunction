
#> uhc:in_game/advancement/hurted_by_entity/
#
# @within			advancement #uhc:hurted_by_entity
#
#
# @description		Le joueur a pris un dégât PvE
#

advancement revoke @s only uhc:hurted_by_entity
execute unless score #pve uhc.data.temp matches ..0 run return fail

## Ironman
scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute as @s[tag=uhc.ironman] in uhc:lobby run function uhc:in_game/scenario/ironman/remove with storage uhc:temp hotbar

## Scenario
# Best PvE
execute as @s[tag=uhc.scenario.best_pve] run function uhc:in_game/scenario/best_pve/remove

## Message dans le chat
execute unless entity @p[tag=uhc.spec_info.pve] run return fail
tag @s add uhc.temp

# Couleur d'équipe de base
function uhc:in_game/player/team_join/vanilla

# Données du joueur
execute store result storage uhc:temp hp.id int 1 run scoreboard players get @s uhc.id.player
function uhc:in_game/player/misc/health/default

# Si l'entité est un joueur
execute on attacker as @s[type=minecraft:player] run return run function uhc:in_game/advancement/hurted_by_entity/attacker/

# Si l'entité n'est pas un joueur
execute if score #hp_chat uhc.data.setup matches 0 run function uhc:in_game/advancement/hurted_by_entity/tellraw_heart
execute if score #hp_chat uhc.data.setup matches 1 run function uhc:in_game/advancement/hurted_by_entity/tellraw_percent

# Couleur du joueur
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 1 run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 2 run function uhc:in_game/scenario/biome_paranoia/by_nickname
execute unless score #nzl uhc.gamemode matches 1 if score #anonyme_team uhc.data.setup matches 1 run team join 091 @s
execute if score #nzl uhc.gamemode matches 1 run function uhc:in_game/player/team_join/nzl

tag @s remove uhc.temp
