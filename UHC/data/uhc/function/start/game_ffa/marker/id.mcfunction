
#> uhc:start/game_ffa/marker/id
#
# @within			uhc:start/setup_players
#
#
# @description		Création des équipes
#

# Id d'équipe du marker
scoreboard players add #team uhc.id.team 1
scoreboard players operation @s uhc.id.team = #team uhc.id.team

# Nom du marker
execute in uhc:lobby if score #team uhc.id.team matches ..9 run data modify block 0 -61 0 front_text.messages set value [[{"selector":"@p[predicate=uhc:id/team]"}],[{"text":"0","color":"#FF3F3F","bold":true},{"score":{"name":"@s","objective":"uhc.id.team"}}],"",""]
execute in uhc:lobby if score #team uhc.id.team matches 10.. run data modify block 0 -61 0 front_text.messages set value [[{"selector":"@p[predicate=uhc:id/team]"}],[{"score":{"name":"@s","objective":"uhc.id.team"},"color":"#FF3F3F","bold":true}],"",""]
execute in uhc:lobby run data modify storage uhc:temp team.name set from block 0 -61 0 front_text.messages[0]
execute in uhc:lobby run data modify storage uhc:temp team.tag set from block 0 -61 0 front_text.messages[1]
function uhc:start/game_ffa/marker/name with storage uhc:temp

## Joueurs dans l'équipe
# Nombre d'équipe en jeu
scoreboard players add #team uhc.data.temp 1
# Nombre de joueurs dans l'équipe
execute store result score @s uhc.player.lives if entity @p[tag=uhc.player,predicate=uhc:id/team]
scoreboard players operation @s uhc.scenario.ironman = @s uhc.player.lives
scoreboard players operation @s uhc.team.size = @s uhc.player.lives
