
#> uhc:translation/in_game/revive_menu/team_02
#
# @within			uhc:in_game/player/spec/revive/new_player/menu/selection/team/id/01-16/02
#
#
#
#

## FRA - Français / French
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"\nClique sur ce message pour rejoindre l'","color":"#FFFFFF","click_event":{"action":"run_command","command":"trigger uhc.menu.revive set 02"}},{"text":"Équipe Bleue","color":"blue"}]

## ENG - English
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"\nClick on this message to join the ","color":"#FFFFFF","click_event":{"action":"run_command","command":"trigger uhc.menu.revive set 02"}},{"text":"Blue Team","color":"blue"}]
