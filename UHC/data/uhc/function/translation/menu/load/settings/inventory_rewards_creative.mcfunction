
#> uhc:translation/menu/load/settings/inventory_rewards_creative
#
# @within			uhc:pre_game/menu/load/settings/inventory/start_and_rewards/*
#
#
#
#

## FRA - Français / French
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Une fois terminé, clique ici ou mets-toi en gamemode adventure pour revenir au menu des paramètres\n","color":"#FFFFFF",click_event:{"action":"run_command","command":"/gamemode adventure @s"}}]

## ENG - English
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"Once finished, click here or put yourself in gamemode adventure to return to settings menu\n","color":"#FFFFFF",click_event:{"action":"run_command","command":"/gamemode adventure @s"}}]
