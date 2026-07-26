
#> uhc:translation/translation/menu/selected/config_gamemode_and_scenarios
#
# @within			uhc:pre_game/menu/selected/main/host/config
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nMode de jeu","color":"#3FCFFF","bold":true}]
$execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},$(fra)]
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nScénarios","color":"#3FCFFF","bold":true}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nGame mode","color":"#3FCFFF","bold":true}]
$execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},$(eng)]
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nScenarios","color":"#3FCFFF","bold":true}]
