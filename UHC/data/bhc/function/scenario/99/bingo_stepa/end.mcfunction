
#> bhc:scenario/99/bingo_stepa/end
#
# @within			bhc:scenario/99/timer/steps
#
#
# @description		Désactivation du Bingo, fin d'Étape A
#

# Désactivation du Bingo
scoreboard players set #bingo_99_enabled bhc.data 0
scoreboard players set #stepa_enabled bhc.data 0

# Msg FRA
execute as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"\n[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" ","bold":false},{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" terminé !","color":"#FFFFFF","bold":false}]
execute as @a[scores={uhc.player.lang=061801},tag=uhc.player] run tellraw @s [{"text":"Score : ","color":"#FFFFFF","bold":false},{"score":{"name":"@s","objective":"bhc.stepa.score.inv"},"color":"#3FE7FF","bold":true},{"text":" points","color":"#00C3DF"},{"text":"\nRang : ","color":"#FFFFFF","bold":false},{"score":{"name":"@s","objective":"bhc.stepa.rank.number"},"color":"#FFE73F","bold":false},{"text":"/","color":"#FFFFFF","bold":false},{"score":{"name":"#team","objective":"bhc.data.temp"},"color":"#FFE73F","bold":false},{"text":" → ","color":"#FFFFFF"},{"score":{"name":"@s","objective":"bhc.stepa.rank.score.inv"},"color":"#FFE73F","bold":true},{"text":" points","color":"#DFC300"},{"text":"\n"}]
execute as @a[scores={uhc.player.lang=061801},tag=uhc.player.dead] run tellraw @s [{"text":"Score : ","color":"#FFFFFF","bold":false},{"score":{"name":"@s","objective":"bhc.stepa.score.inv"},"color":"#3FE7FF","bold":true},{"text":" points","color":"#00C3DF"},{"text":"\nRang : ","color":"#FFFFFF","bold":false},{"score":{"name":"@s","objective":"bhc.stepa.rank.number"},"color":"#FFE73F","bold":false},{"text":"/","color":"#FFFFFF","bold":false},{"score":{"name":"#team","objective":"bhc.data.temp"},"color":"#FFE73F","bold":false},{"text":" → ","color":"#FFFFFF"},{"score":{"name":"@s","objective":"bhc.stepa.rank.score.inv"},"color":"#FFE73F","bold":true},{"text":" points","color":"#DFC300"},{"text":"\n"}]

# Msg ENG
execute as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"\n[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" ","bold":false},{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" is over!","color":"#FFFFFF","bold":false}]
execute as @a[scores={uhc.player.lang=051407},tag=uhc.player] run tellraw @s [{"text":"Score: ","color":"#FFFFFF","bold":false},{"score":{"name":"@s","objective":"bhc.stepa.score.inv"},"color":"#3FE7FF","bold":true},{"text":" points","color":"#00C3DF"},{"text":"\nRank: ","color":"#FFEF7F","bold":false},{"score":{"name":"@s","objective":"bhc.stepa.rank.number"},"color":"#FFE73F","bold":false},{"text":"/","color":"#FFFFFF","bold":false},{"score":{"name":"#team","objective":"bhc.data.temp"},"color":"#FFE73F","bold":false},{"text":" → ","color":"#FFFFFF"},{"score":{"name":"@s","objective":"bhc.stepa.rank.score.inv"},"color":"#FFE73F","bold":true},{"text":" points","color":"#DFC300"},{"text":"\n"}]
execute as @a[scores={uhc.player.lang=051407},tag=uhc.player.dead] run tellraw @s [{"text":"Score: ","color":"#FFFFFF","bold":false},{"score":{"name":"@s","objective":"bhc.stepa.score.inv"},"color":"#3FE7FF","bold":true},{"text":" points","color":"#00C3DF"},{"text":"\nRank: ","color":"#FFEF7F","bold":false},{"score":{"name":"@s","objective":"bhc.stepa.rank.number"},"color":"#FFE73F","bold":false},{"text":"/","color":"#FFFFFF","bold":false},{"score":{"name":"#team","objective":"bhc.data.temp"},"color":"#FFE73F","bold":false},{"text":" → ","color":"#FFFFFF"},{"score":{"name":"@s","objective":"bhc.stepa.rank.score.inv"},"color":"#FFE73F","bold":true},{"text":" points","color":"#DFC300"},{"text":"\n"}]

# Scoreboard d'affichage
scoreboard players set #sb bhc.data.temp 13
scoreboard objectives setdisplay sidebar bhc.bingo.score
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:timer/scoreboard/marker_name
