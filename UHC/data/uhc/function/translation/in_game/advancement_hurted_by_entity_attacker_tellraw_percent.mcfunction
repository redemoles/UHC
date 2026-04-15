
#> uhc:translation/in_game_advancement_hurted_by_entity_attacker_tellraw_percent
#
# @within			uhc:in_game/advancement/hurted_by_entity/attacker/tellraw_percent
#
#
#
#

## FRA - Français / French
$execute as @a[tag=uhc.spec,tag=uhc.spec_info.pvp,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Spec Info ","color":"#CFCFCF",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"}},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#FF3F3F"},{"text":"%","color":"#FF3F3F"},{"text":"]","color":"#9F9F9F"},{"text":" ← "},{"selector":"@p[tag=uhc.temp.attacker]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp_entity","objective":"uhc.player.health.100"},"color":"#3FE7FF"},{"text":"%","color":"#3FE7FF"},{"text":"]","color":"#9F9F9F"}]

## ENG - English
$execute as @a[tag=uhc.spec,tag=uhc.spec_info.pvp,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Spec Info ","color":"#CFCFCF",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"}},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#FF3F3F"},{"text":"%","color":"#FF3F3F"},{"text":"]","color":"#9F9F9F"},{"text":" ← "},{"selector":"@p[tag=uhc.temp.attacker]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp_entity","objective":"uhc.player.health.100"},"color":"#3FE7FF"},{"text":"%","color":"#3FE7FF"},{"text":"]","color":"#9F9F9F"}]
