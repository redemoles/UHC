
#> uhc:in_game/scenario/ironman/remove
#
# @within			uhc:in_game/scenario/_advancement/took_damage
#
#
# @description		Retrait de la liste Ironman
#

scoreboard players add #summary_count uhc.scenario.ironman 1
scoreboard players remove #player uhc.scenario.ironman 1

# Message dans le chat
function uhc:translation/in_game/scenario/ironman_remove with storage uhc:temp hotbar

# Préparation liste Résumé Ironman → /function uhc:summary/ironman
tag @s add uhc.temp
$data modify block 0 -61 0 front_text.messages[0] set value [[{"selector":"@p[tag=uhc.temp]"},{"text":" (","color":"#9F9F9F"},{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#CFCFCF"},{"text":":","color":"#9F9F9F"},{"text":"$(seconds)","color":"#CFCFCF"},{"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#CFCFCF"},{"text":")","color":"#9F9F9F"}]]
data modify storage uhc:temp ironman.message append from block 0 -61 0 front_text.messages[0]
tag @s remove uhc.temp

# Ironman dans l'équipe
execute as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run function uhc:in_game/scenario/ironman/remove_team

execute if score #player uhc.scenario.ironman matches ..0 run scoreboard players reset @a uhc.ironman.list
tag @s remove uhc.ironman
