
#> uhc:translation/in_game/player_login_main
#
# @within			uhc:in_game/player/login/main
#
#
#
#

## FRA - Français / French
execute if score #player uhc.scenario.ironman matches 1.. if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Pour voir les joueurs dans la liste :","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.ironman.list","color":"#FFE73F","bold":false}]
execute if score #best_pve uhc.scenario matches 1 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Best PvE ","color":"#E73F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Pour voir les joueurs dans la liste :","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.best_pve.list","color":"#FFE73F","bold":false}]

## ENG - English
execute if score #player uhc.scenario.ironman matches 1.. if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" To see the players list:","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.ironman.list","color":"#FFE73F","bold":false}]
execute if score #best_pve uhc.scenario matches 1 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Best PvE ","color":"#E73F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" To see the players list:","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.best_pve.list","color":"#FFE73F","bold":false}]
