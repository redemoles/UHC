
#> uhc:in_game/timer/hotbar/cooldown/event_list/bhc/step_a/waiting_start
#
# @within			uhc:in_game/timer/hotbar/cooldown/event_list/bhc/waiting
#
#
# @description		Alerte décompte 
#

data modify storage uhc:temp hotbar.alert_fra append value [{"text":"début du ","color":"#FFFFFF"}, {"text":"Bingo Classique","color":"#B73FFF"}]
data modify storage uhc:temp hotbar.alert_eng append value [{"text":"start of the ","color":"#FFFFFF"}, {"text":"Classic Bingo","color":"#B73FFF"}]
scoreboard players remove #min_cooldown_alert uhc.data.temp 1
scoreboard players set #min_cooldown_temp_bhc uhc.data.temp 1
execute if score #min_cooldown_alert uhc.data.temp matches 2.. run data modify storage uhc:temp hotbar.alert_fra append value [{"text":", ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 2.. run data modify storage uhc:temp hotbar.alert_eng append value [{"text":", ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_fra append value [{"text":" et ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_eng append value [{"text":" and ","color":"#FFFFFF"}]
