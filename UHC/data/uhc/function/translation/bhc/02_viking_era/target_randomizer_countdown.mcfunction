
#> uhc:translation/bhc/02_viking_era/target_randomizer_countdown
#
# @within			bhc:in_game/scenario/02/target/randomizer/countdown
#
#
# @description		Annonce dans le chat de la réalisation d'une ligne
#

## FRA - Français / French
execute if score #tracker_ennemies uhc.data.temp matches 2.. as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Ère Viking ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Nouvelles cibles attribuées dans ","color":"#FFFFFF"},{"score":{"name":"#tracker_ennemies","objective":"uhc.data.temp"}},{"text":" secondes.","color":"#FFFFFF"}]
execute if score #tracker_ennemies uhc.data.temp matches 1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Ère Viking ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Nouvelles cibles attribuées dans ","color":"#FFFFFF"},{"score":{"name":"#tracker_ennemies","objective":"uhc.data.temp"}},{"text":" seconde.","color":"#FFFFFF"}]

## ENG - English
execute if score #tracker_ennemies uhc.data.temp matches 2.. as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Viking Era ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" New targets assigned in ","color":"#FFFFFF"},{"score":{"name":"#tracker_ennemies","objective":"uhc.data.temp"}},{"text":" seconds.","color":"#FFFFFF"}]
execute if score #tracker_ennemies uhc.data.temp matches 1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Viking Era ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" New targets assigned in ","color":"#FFFFFF"},{"score":{"name":"#tracker_ennemies","objective":"uhc.data.temp"}},{"text":" second.","color":"#FFFFFF"}]
