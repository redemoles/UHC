
#> uhc:start/game_ffa/id_marker
#
# @within			uhc:start/setup_players
#
#
# @description		Création des équipes
#

# Id d'équipe des markers
scoreboard players add #team uhc.id.team 1
scoreboard players operation @s uhc.id.team = #team uhc.id.team

execute in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [{"selector":"@a[predicate=uhc:id_team]"}]
execute in uhc:lobby if score #team uhc.id.team matches ..9 run data modify block 0 -61 0 front_text.messages set value [[{"selector":"@a[predicate=uhc:id_team]"}],[{"text":"0","color":"#FF3F3F","bold":true},{"score":{"name":"@s","objective":"uhc.id.team"}}],"",""]
execute in uhc:lobby if score #team uhc.id.team matches 10.. run data modify block 0 -61 0 front_text.messages set value [[{"selector":"@a[predicate=uhc:id_team]"}],[{"score":{"name":"@s","objective":"uhc.id.team"},"color":"#FF3F3F","bold":true}],"",""]
execute in uhc:lobby run data modify storage uhc:temp team.name set from block 0 -61 0 front_text.messages[0]
execute in uhc:lobby run data modify storage uhc:temp team.tag set from block 0 -61 0 front_text.messages[1]
function uhc:start/game_ffa/id_marker_1 with storage uhc:temp

scoreboard players add @s uhc.data.setup 1
