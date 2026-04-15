
#> uhc:translation/in_game_player_lives_remove_drop_to_2
#
# @within			uhc:in_game/player/lives_remove/drop_to_2
#
#
#
#

## FRA - Français / French
execute unless score #bhc uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=061801},predicate=uhc:id/team] [{"text":"Vies maximum ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -1 vie.","color":"#FF3F3F","bold":false},{"text":" Compensation reçu.","color":"#FFFFFF","bold":false}]
execute if score #bhc uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=061801},predicate=uhc:id/team] [{"text":"Vies maximum ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"text":"+","color":"#3FE7FF","bold":true},{"score":{"name":"#temp","objective":"uhc.data.temp"},"color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Survie","color":"#3FE7FF"},{"text":"] (","color":"#FFFFFF"},{"selector":"@s"},{"text":")","color":"#FFFFFF"}]

## ENG - English
execute unless score #bhc uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=051407},predicate=uhc:id/team] [{"text":"Maximum lives ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -1 live.","color":"#FF3F3F","bold":false},{"text":" Compensation received.","color":"#FFFFFF","bold":false}]
execute if score #bhc uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=051407},predicate=uhc:id/team] [{"text":"Maximum lives ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"text":"+","color":"#3FE7FF","bold":true},{"score":{"name":"#temp","objective":"uhc.data.temp"},"color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Survival","color":"#3FE7FF"},{"text":"] (","color":"#FFFFFF"},{"selector":"@s"},{"text":")","color":"#FFFFFF"}]
