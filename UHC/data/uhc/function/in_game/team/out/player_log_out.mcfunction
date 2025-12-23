
#> uhc:in_game/team/out/player_log_out
#
# @within			uhc:in_game/team/out/main
#
#
# @description		Vérifie s'il reste une seule équipe avec des joueurs connectés
#

scoreboard players set #temp uhc.data.temp 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..}] run function uhc:in_game/team/out/player_log_out_1
execute if score #temp uhc.data.temp matches 1 as @a[tag=uhc.host] run function uhc:in_game/team/out/end_text
