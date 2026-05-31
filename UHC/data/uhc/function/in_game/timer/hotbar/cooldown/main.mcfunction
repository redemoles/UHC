
#> uhc:in_game/timer/hotbar/cooldown/main
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Alerte décompte 
#

## Si Start 30 secondes après tp
execute if score #start_delay uhc.data.setup matches 1 if score #sec_cooldown uhc.data.temp matches ..59 run function uhc:translation/hotbar/uhc_delay with storage uhc:temp hotbar
execute if score #start_delay uhc.data.setup matches 1 unless score #force_stepa uhc.data.temp matches 0 run function bhc:timer/start_cooldown
execute if score #minutes uhc.data.temp matches ..-1 run return fail

## Priorité des annnoces à envoyer
scoreboard players set #min_cooldown_alert uhc.data.temp 0
scoreboard players set #min_cooldown_temp uhc.data.temp 0
scoreboard players set #min_cooldown_temp_bhc uhc.data.temp 0
scoreboard players set #min_cooldown_text_uppercase uhc.data.temp 0
scoreboard players set #min_cooldown_text_exclamation uhc.data.temp 1
function uhc:in_game/timer/hotbar/cooldown/priority_check/main
