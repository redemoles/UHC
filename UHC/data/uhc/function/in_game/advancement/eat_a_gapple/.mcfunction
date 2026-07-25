
#> uhc:in_game/advancement/eat_a_gapple/
#
# @within			advancement #uhc:eat_a_gapple
#
#
# @description		Le joueur s'est fait tiré dessus
#

advancement revoke @s only uhc:eat_a_gapple
execute unless score #game_progress uhc.game_progress matches 1.. run return fail
tag @s add uhc.temp

scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Couleur d'équipe de base
function uhc:in_game/player/misc/team_join

# Données du joueur
execute store result storage uhc:temp hp.id int 1 run scoreboard players get @s uhc.id.player
function uhc:in_game/player/misc/health/default

# Player Info
execute if score #hp_chat uhc.data.setup matches 0 run function uhc:in_game/advancement/eat_a_gapple/tellraw_heart
execute if score #hp_chat uhc.data.setup matches 1 run function uhc:in_game/advancement/eat_a_gapple/tellraw_percent

# Couleur du joueur
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 1 run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 2 run function uhc:in_game/scenario/biome_paranoia/by_nickname
execute if score #anonyme_team uhc.data.setup matches 1 run team join 091 @s
function #plugin:in_game/player/team_join

tag @s remove uhc.temp
