
#> uhc:in_game/team/out/main
#
# @within			uhc:in_game/player/death/definitive
#
#
# @description		Équipe éliminée
#

execute if score #team uhc.data.temp matches ..1 run data modify storage uhc:temp hotbar.team set value ""
execute if score #message uhc.data.setup matches 0..4 run scoreboard players remove #team uhc.data.temp 1
scoreboard players remove #team uhc.data.temp.inv 1

## Vérifie si des joueurs en vie sont déconnectés
scoreboard players set #temp uhc.data.temp 0
execute if entity @a[tag=uhc.player] run scoreboard players get #temp uhc.data.temp
execute if score #team uhc.data.temp.inv matches 2.. unless score #temp uhc.data.temp = #player uhc.data.temp.inv in uhc:lobby run function uhc:in_game/team/out/player_log_out

## Réduction dynamique
execute if score #shrink_dynamic uhc.data.temp matches 1 if score #shrink_1_time_left uhc.data.temp matches ..0 run function uhc:in_game/timer/border/team_out
execute if score #shrink_dynamic uhc.data.temp matches 2 if score #shrink_2_time_left uhc.data.temp matches ..0 run function uhc:in_game/timer/border/team_out
execute if score #shrink_dynamic uhc.data.temp matches 3 if score #shrink_3_time_left uhc.data.temp matches ..0 run function uhc:in_game/timer/border/team_out

## Bingo UHC : Ère Viking → Liste des cibles
execute if score #bhc bhc.scenario matches 2 run function uhc:translation/in_game/team_out_bhc_02
execute if score #bhc bhc.scenario matches 2 run scoreboard players enable @a[predicate=uhc:id/team] bhc.target.list
