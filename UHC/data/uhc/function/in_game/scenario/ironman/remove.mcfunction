
#> uhc:in_game/scenario/ironman/remove
#
# @within			uhc:in_game/scenario/_advancement/took_damage
#
#
# @description		Retrait de la liste Ironman
#

scoreboard players remove #player uhc.scenario.ironman 1

# Message dans le chat
$tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","color":"#FFFFFF"},{"selector":"@s"},{"text":" n'est plus Ironman. [","color":"#FF3F3F"},{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#FF3F3F"},{"text":"m$(seconds)","color":"#FF3F3F"},{"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#FF3F3F"},{"text":"s]","color":"#FF3F3F"}]
$tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","color":"#FFFFFF"},{"selector":"@s"},{"text":" is no longer Ironman. [","color":"#FF3F3F"},{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#FF3F3F"},{"text":"m$(seconds)","color":"#FF3F3F"},{"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#FF3F3F"},{"text":"s]","color":"#FF3F3F"}]

# Préparation liste Résumé Ironman → /function uhc:summary/ironman/
tag @s add uhc.temp
$data modify block 0 -61 0 front_text.messages[0] set value [[{"text":"Résumé Ironman ","color":"#CFCFCF"},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]"},{"text":" (","color":"#9F9F9F"},{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#CFCFCF"},{"text":":","color":"#9F9F9F"},{"text":"$(seconds)","color":"#CFCFCF"},{"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#CFCFCF"},{"text":")","color":"#9F9F9F"}]]
data modify storage uhc:temp ironman.message append from block 0 -61 0 front_text.messages[0]
tag @s remove uhc.temp

# Ironman dans l'équipe
execute as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run function uhc:in_game/scenario/ironman/remove_team

execute if score #player uhc.scenario.ironman matches ..0 run scoreboard players reset @a uhc.ironman.list
tag @s remove uhc.ironman
