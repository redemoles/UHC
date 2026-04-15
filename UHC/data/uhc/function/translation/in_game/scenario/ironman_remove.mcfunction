
#> uhc:translation/in_game/scenario/ironman_remove
#
# @within			uhc:in_game/scenario/ironman/remove
#
#
#
#

## FRA - Français / French
$tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","color":"#FFFFFF"},{"selector":"@s"},{"text":" n'est plus Ironman. [","color":"#FF3F3F"},{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#FF3F3F"},{"text":"m$(seconds)","color":"#FF3F3F"},{"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#FF3F3F"},{"text":"s]","color":"#FF3F3F"}]

## ENG - English
$tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","color":"#FFFFFF"},{"selector":"@s"},{"text":" is no longer Ironman. [","color":"#FF3F3F"},{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#FF3F3F"},{"text":"m$(seconds)","color":"#FF3F3F"},{"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#FF3F3F"},{"text":"s]","color":"#FF3F3F"}]
