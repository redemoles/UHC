
#> uhc:in_game/advancement/hurted_by_arrow/
#
# @within			advancement #uhc:hurted_by_arrow
#
#
# @description		Le joueur s'est fait tiré dessus
#

advancement revoke @s only uhc:hurted_by_arrow
execute if score #pve uhc.data.temp matches 1.. run return fail
tag @s add uhc.temp

scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Données du joueur
function uhc:in_game/player/misc/health/default

# Player Info
execute if score #hp_chat uhc.data.setup matches 0 unless predicate uhc:scenario/silent_night/night_time run function uhc:in_game/advancement/hurted_by_arrow/tellraw_heart
execute if score #hp_chat uhc.data.setup matches 1 unless predicate uhc:scenario/silent_night/night_time run function uhc:in_game/advancement/hurted_by_arrow/tellraw_percent

tag @s remove uhc.temp
