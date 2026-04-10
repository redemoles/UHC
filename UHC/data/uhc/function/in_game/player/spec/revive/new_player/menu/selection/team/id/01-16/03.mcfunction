
#> uhc:in_game/player/spec/revive/new_player/menu/selection/team/id/01-16/03
#
# @within			uhc:pre_game/menu/selection/main/player/gm
#
#
# @description		Formation des équipes
#

execute store result score #temp uhc.data.setup run scoreboard players get @n[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.id.team=03}] uhc.team.size
execute if score #temp uhc.data.setup >= #team_size uhc.data.temp if score @s uhc.player.lang matches 061801 run return run tellraw @s [{"text":"Équipe complète","color":"#FF3F3F"}]
execute if score #temp uhc.data.setup >= #team_size uhc.data.temp if score @s uhc.player.lang matches 051407 run return run tellraw @s [{"text":"Team full","color":"#FF3F3F"}]

execute if score #anonyme_team uhc.data.setup matches 0 run team join 003 @s
execute if score #anonyme_team uhc.data.setup matches 1 run team join 091 @s

scoreboard players enable @s uhc.menu.revive
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"\nClique sur ce message pour rejoindre l'","color":"#FFFFFF","click_event":{"action":"run_command","command":"trigger uhc.menu.revive set 03"}},{"text":"Équipe Azur","color":"dark_aqua"}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"\nClick on this message to join the ","color":"#FFFFFF","click_event":{"action":"run_command","command":"trigger uhc.menu.revive set 03"}},{"text":"Azure Team","color":"dark_aqua"}]
