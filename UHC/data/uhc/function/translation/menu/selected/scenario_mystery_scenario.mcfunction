
#> uhc:translation/menu/selected/scenario_mystery_scenarios
#
# @within			uhc:pre_game/menu/selection/scenario/list/mystery_scenarios
#
#
# @description		Redirection
#

## FRA - Français / French
execute if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Scénarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Liste publique.","color":"#FFFFFF","bold":false}]
execute if score #mystery_scenarios uhc.data.setup matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Scénarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Liste cachée.","color":"#9F9F9F","bold":false,"italic":true}]

## ENG - English
execute if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Public list.","color":"#FFFFFF","bold":false}]
execute if score #mystery_scenarios uhc.data.setup matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Hidden list.","color":"#9F9F9F","bold":false,"italic":true}]
