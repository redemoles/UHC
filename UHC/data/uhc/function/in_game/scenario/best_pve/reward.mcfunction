
#> uhc:in_game/scenario/best_pve/reward
#
# @within			uhc:in_game/scenario/best_pve/tick
#
#
# @description		Récompense tous les joueurs ayant passé 10 minutes dans la liste Best PvE
#

scoreboard players set @s uhc.scenario.best_pve.tick 0
scoreboard players add @s uhc.scenario.best_pve.reward 22

# Msg
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Best PvE ","color":"#E73F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Vous venez de récupérer un coeur !","color":"#FFE73F"}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"Best PvE ","color":"#E73F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" You just gain one heart !","color":"#FFE73F"}]

execute store result storage uhc:best_pve max_health.value int 1 run scoreboard players get @s uhc.scenario.best_pve.reward
function uhc:in_game/scenario/best_pve/reward_1 with storage uhc:best_pve max_health

scoreboard players remove @s uhc.scenario.best_pve.reward 20
