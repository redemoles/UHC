
#> uhc:translation/menu/selected/scenario_general
#
# @within			uhc:pre_game/menu/selection/scenario/list/*
#
#
# @description		Redirection
#

## FRA - Français / French
$execute if score #mystery_scenarios uhc.data.setup matches 0 if score #$(internal) uhc.scenario matches 0 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Scénarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" $(chat)","color":"#FFFFFF","bold":false},{"text":" désactivé.","color":"#FF3F3F","bold":false}]
$execute if score #mystery_scenarios uhc.data.setup matches 0 if score #$(internal) uhc.scenario matches 1.. run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Scénarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" $(chat)","color":"#FFFFFF","bold":false},{"text":" activé.","color":"#3FE7FF","bold":false}]
$execute if score #mystery_scenarios uhc.data.setup matches 1 if score #$(internal) uhc.scenario matches 0 run tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"Scénarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" $(chat)","color":"#FFFFFF","bold":false},{"text":" désactivé.","color":"#FF3F3F","bold":false},{"text":"\nMystery Scenarios ","color":"#CFCFCF","bold":false,"italic":true},{"text":">","color":"#9F9F9F","bold":true,"italic":true},{"text":" Visible seulement par les hosts.","color":"#CFCFCF","bold":false,"italic":true}]
$execute if score #mystery_scenarios uhc.data.setup matches 1 if score #$(internal) uhc.scenario matches 1.. run tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"Scénarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" $(chat)","color":"#FFFFFF","bold":false},{"text":" activé.","color":"#3FE7FF","bold":false},{"text":"\nMystery Scenarios ","color":"#CFCFCF","bold":false,"italic":true},{"text":">","color":"#9F9F9F","bold":true,"italic":true},{"text":" Visible seulement par les hosts.","color":"#CFCFCF","bold":false,"italic":true}]

## ENG - English
$execute if score #mystery_scenarios uhc.data.setup matches 0 if score #$(internal) uhc.scenario matches 0 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" $(chat)","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]
$execute if score #mystery_scenarios uhc.data.setup matches 0 if score #$(internal) uhc.scenario matches 1.. run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" $(chat)","color":"#FFFFFF","bold":false},{"text":" enabled.","color":"#3FE7FF","bold":false}]
$execute if score #mystery_scenarios uhc.data.setup matches 1 if score #$(internal) uhc.scenario matches 0 run tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" $(chat)","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false},{"text":"\nMystery Scenarios ","color":"#CFCFCF","bold":false,"italic":true},{"text":">","color":"#9F9F9F","bold":true,"italic":true},{"text":" Visible only to hosts.","color":"#CFCFCF","bold":false,"italic":true}]
$execute if score #mystery_scenarios uhc.data.setup matches 1 if score #$(internal) uhc.scenario matches 1.. run tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" $(chat)","color":"#FFFFFF","bold":false},{"text":" enabled.","color":"#3FE7FF","bold":false},{"text":"\nMystery Scenarios ","color":"#CFCFCF","bold":false,"italic":true},{"text":">","color":"#9F9F9F","bold":true,"italic":true},{"text":" Visible only to hosts.","color":"#CFCFCF","bold":false,"italic":true}]
