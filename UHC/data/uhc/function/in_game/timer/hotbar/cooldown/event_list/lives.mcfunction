
#> uhc:in_game/timer/hotbar/cooldown/event_list/lives
#
# @within			uhc:in_game/timer/hotbar/cooldown/event_list/main
#
#
# @description		Alerte décompte 
#

execute if score #min_cooldown_text_uppercase uhc.data.temp matches 1 run scoreboard players set #min_cooldown_text_exclamation uhc.data.temp 0

execute if score #lives_before_alert uhc.data.temp matches 4.. run data modify storage uhc:temp hotbar.alert_fra append value [{"score":{"name":"#lives","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":true},{"text":"❤","color":"#E73FFF","bold":false},{"text":" → ","color":"#FFFFFF"}]
execute if score #lives_before_alert uhc.data.temp matches 3 run data modify storage uhc:temp hotbar.alert_fra append value [{"text":"","bold":true},{"text":"❤❤❤","color":"#3FE7FF","bold":false},{"text":" → ","color":"#FFFFFF"}]
execute if score #lives_before_alert uhc.data.temp matches 2 run data modify storage uhc:temp hotbar.alert_fra append value [{"text":"","bold":true},{"text":"❤❤","color":"#FFE73F","bold":false},{"text":" → ","color":"#FFFFFF"}]
execute if score #lives_after_alert uhc.data.temp matches 3 run data modify storage uhc:temp hotbar.alert_fra append value [{"text":"","bold":true},{"text":"❤❤❤","color":"#3FE7FF","bold":false}]
execute if score #lives_after_alert uhc.data.temp matches 2 run data modify storage uhc:temp hotbar.alert_fra append value [{"text":"","bold":true},{"text":"❤❤","color":"#FFE73F","bold":false}]
execute if score #lives_after_alert uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_fra append value [{"text":"","bold":true},{"text":"❤","color":"#FF3F3F","bold":false}]

execute if score #lives_before_alert uhc.data.temp matches 4.. run data modify storage uhc:temp hotbar.alert_eng append value [{"score":{"name":"#lives","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":true},{"text":"❤","color":"#E73FFF","bold":false},{"text":" → ","color":"#FFFFFF"}]
execute if score #lives_before_alert uhc.data.temp matches 3 run data modify storage uhc:temp hotbar.alert_eng append value [{"text":"","bold":true},{"text":"❤❤❤","color":"#3FE7FF","bold":false},{"text":" → ","color":"#FFFFFF"}]
execute if score #lives_before_alert uhc.data.temp matches 2 run data modify storage uhc:temp hotbar.alert_eng append value [{"text":"","bold":true},{"text":"❤❤","color":"#FFE73F","bold":false},{"text":" → ","color":"#FFFFFF"}]
execute if score #lives_after_alert uhc.data.temp matches 3 run data modify storage uhc:temp hotbar.alert_eng append value [{"text":"","bold":true},{"text":"❤❤❤","color":"#3FE7FF","bold":false}]
execute if score #lives_after_alert uhc.data.temp matches 2 run data modify storage uhc:temp hotbar.alert_eng append value [{"text":"","bold":true},{"text":"❤❤","color":"#FFE73F","bold":false}]
execute if score #lives_after_alert uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_eng append value [{"text":"","bold":true},{"text":"❤","color":"#FF3F3F","bold":false}]

data modify storage uhc:temp hotbar.alert_eng append value [{"text":"❤","color":"#FF3F3F"}]
scoreboard players remove #min_cooldown_alert uhc.data.temp 1
execute if score #min_cooldown_alert uhc.data.temp matches 2.. run data modify storage uhc:temp hotbar.alert_fra append value [{"text":", ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 2.. run data modify storage uhc:temp hotbar.alert_eng append value [{"text":", ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_fra append value [{"text":" et ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_eng append value [{"text":" and ","color":"#FFFFFF"}]
