
#> uhc:translation/menu/load/gamemode/bhc_uhc_settings
#
# @within			uhc:pre_game/menu/selected/gamemode/bhc/settings/preset_scenario/main
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":false},{"text":" UHC ","color":"#FFE73F","italic":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Paramètres recommandés pour ce scénario appliqués.","color":"#FFFFFF"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":false},{"text":" UHC ","color":"#FFE73F","italic":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Recommended settings for this scenario applied.","color":"#FFFFFF"}]
