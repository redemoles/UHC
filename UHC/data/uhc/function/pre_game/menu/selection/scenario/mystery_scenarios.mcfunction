
#> uhc:pre_game/menu/selection/scenario/mystery_scenarios
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Redirection
#


scoreboard players add #mystery_scenarios uhc.data.setup 1
execute if score #mystery_scenarios uhc.data.setup matches 2 run scoreboard players set #mystery_scenarios uhc.data.setup 0

execute if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Scénarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Liste publique.","color":"#FFFFFF","bold":false}]
execute if score #mystery_scenarios uhc.data.setup matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Scénarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Liste cachée.","color":"#9F9F9F","bold":false,"italic":true}]

execute if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Public list.","color":"#FFFFFF","bold":false}]
execute if score #mystery_scenarios uhc.data.setup matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Hidden list.","color":"#9F9F9F","bold":false,"italic":true}]
