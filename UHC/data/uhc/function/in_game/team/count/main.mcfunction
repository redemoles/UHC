
#> uhc:in_game/team/count/main
#
# @within			uhc:in_game/timer/second
#
#
# @description		Vérifie le nombre d'équipe avec un joueur connecté
#

execute if score #minutes uhc.data.temp matches 0 if score #seconds uhc.data.temp matches 0 run return fail

scoreboard players set #temp uhc.player.online 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..}] run function uhc:in_game/team/count/team_check
execute if score #temp uhc.player.online matches ..1 unless score #message_force_end_sent uhc.game_progress matches 1 as @a[tag=uhc.host] run function uhc:in_game/team/count/0_or_1_team_left
execute if score #temp uhc.player.online matches 2.. run scoreboard players set #message_force_end_sent uhc.game_progress 0
