
#> uhc:translation/in_game_advancement_eat_a_regeneration_stew_percent
#
# @within			uhc:in_game/advancement/eat_a_regeneration_stew/tellraw_percent
#
#
#
#

## FRA - Français / French
$execute as @a[tag=uhc.spec,scores={uhc.player.lang=061801}] unless entity @s[tag=!uhc.spec_info.pve,tag=!uhc.spec_info.pvp] run tellraw @s [{"text":"Spec Info ","color":"#CFCFCF",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#3FE7FF"},{"text":"%","color":"#3FE7FF"},{"text":"]","color":"#9F9F9F"},{"text":" ← "},{"text":"Pomme d'or","color":"#FFE73F"}]

## ENG - English
$execute as @a[tag=uhc.spec,scores={uhc.player.lang=051407}] unless entity @s[tag=!uhc.spec_info.pve,tag=!uhc.spec_info.pvp] run tellraw @s [{"text":"Spec Info ","color":"#CFCFCF",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#3FE7FF"},{"text":"%","color":"#3FE7FF"},{"text":"]","color":"#9F9F9F"},{"text":" ← "},{"text":"Golden Apple","color":"#FFE73F"}]
