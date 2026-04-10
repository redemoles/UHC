
#> uhc:in_game/player/spec/revive/new_player/menu/selection/team/spec
#
# @within			uhc:pre_game/menu/selection/main/player/gm
#
#
# @description		Ajout des spectateurs
#

team join 099 @s[tag=!uhc.host]
team join 099.host @s[tag=uhc.host]

scoreboard players enable @s uhc.menu.revive
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"\nClique sur ce message pour rester ","color":"#FFFFFF","bold":false,"click_event":{"action":"run_command","command":"trigger uhc.menu.revive set 99"}},{"text":"Spectateur","color":"#3FE7FF","bold":false}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"\nClick on this message to remain ","color":"#FFFFFF","bold":false,"click_event":{"action":"run_command","command":"trigger uhc.menu.revive set 99"}},{"text":"Spectator","color":"#3FE7FF","bold":false}]
