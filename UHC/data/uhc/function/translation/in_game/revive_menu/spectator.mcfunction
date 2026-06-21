
#> uhc:translation/in_game/revive_menu/spectator
#
# @within			uhc:in_game/player/spec/revive/new_player/menu/selection/team/spec
#
#
#
#

## FRA - Français / French
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"\nClique sur ce message pour rester ","color":"#FFFFFF","bold":false,"click_event":{"action":"run_command","command":"trigger uhc.menu.revive set 99"}},{"text":"Spectateur","color":"#3FE7FF","bold":false}]

## ENG - English
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"\nClick on this message to remain ","color":"#FFFFFF","bold":false,"click_event":{"action":"run_command","command":"trigger uhc.menu.revive set 99"}},{"text":"Spectator","color":"#3FE7FF","bold":false}]
