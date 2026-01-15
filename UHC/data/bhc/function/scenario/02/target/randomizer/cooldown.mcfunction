
#> bhc:scenario/02/target/randomizer/cooldown
#
# @within			bhc:timer/minute
#
#
# @description		Changement des cibles
#

scoreboard players remove #tracker_ennemies uhc.data.temp 1
execute if score #tracker_ennemies uhc.data.temp matches 2.. unless score #tracker_ennemies uhc.data.temp matches 121.. unless score #tracker_ennemies uhc.data.temp matches 91..119 unless score #tracker_ennemies uhc.data.temp matches 61..89 unless score #tracker_ennemies uhc.data.temp matches 31..59 unless score #tracker_ennemies uhc.data.temp matches 21..29 unless score #tracker_ennemies uhc.data.temp matches 11..19 unless score #tracker_ennemies uhc.data.temp matches 06..09 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Ère Viking ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Nouvelles cibles attribuées dans ","color":"#FFFFFF"},{"score":{"name":"#tracker_ennemies","objective":"uhc.data.temp"}},{"text":" secondes.","color":"#FFFFFF"}]
execute if score #tracker_ennemies uhc.data.temp matches 2.. unless score #tracker_ennemies uhc.data.temp matches 121.. unless score #tracker_ennemies uhc.data.temp matches 91..119 unless score #tracker_ennemies uhc.data.temp matches 61..89 unless score #tracker_ennemies uhc.data.temp matches 31..59 unless score #tracker_ennemies uhc.data.temp matches 21..29 unless score #tracker_ennemies uhc.data.temp matches 11..19 unless score #tracker_ennemies uhc.data.temp matches 06..09 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Viking Era ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" New targets assigned in ","color":"#FFFFFF"},{"score":{"name":"#tracker_ennemies","objective":"uhc.data.temp"}},{"text":" seconds.","color":"#FFFFFF"}]
execute if score #tracker_ennemies uhc.data.temp matches 1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Ère Viking ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Nouvelles cibles attribuées dans ","color":"#FFFFFF"},{"score":{"name":"#tracker_ennemies","objective":"uhc.data.temp"}},{"text":" seconde.","color":"#FFFFFF"}]
execute if score #tracker_ennemies uhc.data.temp matches 1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Viking Era ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" New targets assigned in ","color":"#FFFFFF"},{"score":{"name":"#tracker_ennemies","objective":"uhc.data.temp"}},{"text":" second.","color":"#FFFFFF"}]
execute if score #tracker_ennemies uhc.data.temp matches 0 run function bhc:scenario/02/target/randomizer/main
