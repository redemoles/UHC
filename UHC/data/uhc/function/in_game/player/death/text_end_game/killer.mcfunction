
#> uhc:in_game/player/death/text_end_game/killer
#
# @within			uhc:in_game/player/death/text_end_game/
#
#
# @description		Note des morts
#


tag @s add uhc.temp

# Couleur d'équipe de base
function uhc:in_game/player/team_join/vanilla

$execute unless score #bhc uhc.gamemode matches 1 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0].extra append value [{"text":" ← ","color":"#CFCFCF"},{"selector":"@p[tag=uhc.temp]"},{"text":" [","color":"#9F9F9F"},{"score":{"name":"@p[tag=uhc.temp]","objective":"uhc.player.kills"},"color":"#3FE7FF"},{"text":" kills","color":"#3FE7FF"},{"text":"]","color":"#9F9F9F"},{"text":" (","color":"#9F9F9F","bold":false},{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#CFCFCF","bold":false},{"text":":","color":"#9F9F9F","bold":false},{"text":"$(seconds)","color":"#CFCFCF","bold":false},{"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#CFCFCF","bold":false},{"text":")","color":"#9F9F9F","bold":false}]
$execute if score #bhc uhc.gamemode matches 1 if score #points bhc.kills.score.inv matches 00.. in uhc:lobby run data modify block 0 -61 0 front_text.messages[0].extra append value [{"text":" ← ","color":"#CFCFCF"},{"selector":"@p[tag=uhc.temp]"},{"text":" [","color":"#9F9F9F"},{"score":{"name":"@p[tag=uhc.temp]","objective":"uhc.player.kills"},"color":"#3FE7FF"},{"text":" kills","color":"#3FE7FF"},{"text":"]","color":"#9F9F9F"},{"text":" (","color":"#9F9F9F","bold":false},{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#CFCFCF","bold":false},{"text":":","color":"#9F9F9F","bold":false},{"text":"$(seconds)","color":"#CFCFCF","bold":false},{"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#CFCFCF","bold":false},{"text":") ","color":"#9F9F9F","bold":false},{"text":"+","color":"#3FE7FF","bold":true},{"score":{"name":"#points","objective":"bhc.kills.score.inv"},"color":"#3FE7FF","bold":true},{"text":" points","color":"#00C3DF"}]
$execute if score #bhc uhc.gamemode matches 1 if score #points bhc.kills.score.inv matches ..-1 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0].extra append value [{"text":" ← ","color":"#CFCFCF"},{"selector":"@p[tag=uhc.temp]"},{"text":" [","color":"#9F9F9F"},{"score":{"name":"@p[tag=uhc.temp]","objective":"uhc.player.kills"},"color":"#3FE7FF"},{"text":" kills","color":"#3FE7FF"},{"text":"]","color":"#9F9F9F"},{"text":" (","color":"#9F9F9F","bold":false},{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#CFCFCF","bold":false},{"text":":","color":"#9F9F9F","bold":false},{"text":"$(seconds)","color":"#CFCFCF","bold":false},{"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#CFCFCF","bold":false},{"text":") ","color":"#9F9F9F","bold":false},{"text":"","color":"#3FE7FF","bold":true},{"score":{"name":"#points","objective":"bhc.kills.score.inv"},"color":"#FF3F3F","bold":true},{"text":" points","color":"#DF0000"}]






tag @s remove uhc.temp

# Couleur du joueur
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 1 run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 2 run function uhc:in_game/scenario/biome_paranoia/by_nickname
execute unless score #nzl uhc.gamemode matches 1 if score #anonyme_team uhc.data.setup matches 1 run team join 091 @s
execute if score #nzl uhc.gamemode matches 1 run function uhc:in_game/player/team_join/nzl



execute in uhc:lobby run data modify storage uhc:temp death.message append from block 0 -61 0 front_text.messages[0]
