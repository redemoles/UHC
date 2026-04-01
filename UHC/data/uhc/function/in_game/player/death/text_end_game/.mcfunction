
#> uhc:in_game/player/death/text_end_game/
#
# @within			uhc:in_game/advancement/player_killed_player/
# @within           uhc:in_game/player/death/main
#
# @description		Note des morts
#

scoreboard players set @s uhc.player.death_summary 1
tag @s add uhc.temp

# Couleur d'équipe de base
function uhc:in_game/player/team_join/vanilla

scoreboard players operation #temp uhc.player.lives = @s uhc.player.lives
scoreboard players remove #temp uhc.player.lives 1

execute if score #lives_start uhc.player.lives matches 1 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [[{"text":"Résumé des morts ","color":"#CFCFCF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]"}]]
execute unless score #lives_start uhc.player.lives matches 1 if score @s uhc.player.lives matches 5.. in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [[{"text":"Résumé des morts ","color":"#CFCFCF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]"},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp","objective":"uhc.player.lives"},"color":"#FFFFFF","bold":true},{"text":"❤","color":"#E73FFF"},{"text":"]","color":"#9F9F9F"}]]
execute unless score #lives_start uhc.player.lives matches 1 if score @s uhc.player.lives matches 4 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [[{"text":"Résumé des morts ","color":"#CFCFCF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]"},{"text":" [","color":"#9F9F9F"},{"text":"❤❤❤","color":"#3FE7FF"},{"text":"]","color":"#9F9F9F"}]]
execute unless score #lives_start uhc.player.lives matches 1 if score @s uhc.player.lives matches 3 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [[{"text":"Résumé des morts ","color":"#CFCFCF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]"},{"text":" [","color":"#9F9F9F"},{"text":"❤❤","color":"#FFE73F"},{"text":"]","color":"#9F9F9F"}]]
execute unless score #lives_start uhc.player.lives matches 1 if score @s uhc.player.lives matches 2 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [[{"text":"Résumé des morts ","color":"#CFCFCF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]"},{"text":" [","color":"#9F9F9F"},{"text":"❤","color":"#E73F3F"},{"text":"]","color":"#9F9F9F"}]]
execute unless score #lives_start uhc.player.lives matches 1 if score @s uhc.player.lives matches 1 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [[{"text":"Résumé des morts ","color":"#CFCFCF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]"},{"text":" [","color":"#9F9F9F"},{"text":"☠","color":"#3F3F3F"},{"text":"]","color":"#9F9F9F"}]]

tag @s remove uhc.temp

# Couleur du joueur
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 1 run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 2 run function uhc:in_game/scenario/biome_paranoia/by_nickname
execute unless score #nzl uhc.gamemode matches 1 if score #anonyme_team uhc.data.setup matches 1 run team join 091 @s
execute if score #nzl uhc.gamemode matches 1 run function uhc:in_game/player/team_join/nzl

execute on attacker as @s[type=minecraft:player] run return run function uhc:in_game/player/death/text_end_game/killer with storage uhc:temp hotbar
$execute in uhc:lobby run data modify block 0 -61 0 front_text.messages[0].extra append value [{"text":" ← ","color":"#CFCFCF"},{"text":"PvE","color":"#FF5F5F"},{"text":" (","color":"#9F9F9F","bold":false},{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#CFCFCF","bold":false},{"text":":","color":"#9F9F9F","bold":false},{"text":"$(seconds)","color":"#CFCFCF","bold":false},{"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#CFCFCF","bold":false},{"text":")","color":"#9F9F9F","bold":false}]
execute in uhc:lobby run data modify storage uhc:temp death.message append from block 0 -61 0 front_text.messages[0]
scoreboard players add §p§v§e uhc.player.kills 1
