
#> uhc:in_game/timer/hotbar/cooldown/event_list/sky_high
#
# @within			uhc:in_game/timer/hotbar/cooldown/event_list/main
#
#
# @description		Alerte décompte 
#

data modify storage uhc:temp hotbar.alert_fra append value [{"text":"de ","color":"#FFFFFF"}, {"text":"Sky High","color":"#FF3F3F"}]
data modify storage uhc:temp hotbar.alert_eng append value [{"text":"of ","color":"#FFFFFF"}, {"text":"Sky High","color":"#FF3F3F"}]
scoreboard players remove #min_cooldown_alert uhc.data.temp 1
execute if score #min_cooldown_alert uhc.data.temp matches 2.. run data modify storage uhc:temp hotbar.alert_fra append value [{"text":", ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 2.. run data modify storage uhc:temp hotbar.alert_eng append value [{"text":", ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_fra append value [{"text":" et ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_eng append value [{"text":" and ","color":"#FFFFFF"}]
