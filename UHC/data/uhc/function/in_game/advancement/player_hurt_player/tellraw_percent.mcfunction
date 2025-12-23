
#> uhc:in_game/advancement/player_hurt_player/tellraw_percent
#
# @within			uhc:in_game/advancement/player_hurt_player/
#
#
# @description		Le joueur a pris un dégât par un autre joueur
#

$execute as @a[tag=uhc.spec,tag=uhc.spec_info.pvp,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Spec Info ","color":"#CFCFCF",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"}},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#FF3F3F"},{"text":"%","color":"#FF3F3F"},{"text":"]","color":"#9F9F9F"},{"text":" ← "},{"selector":"@p[tag=uhc.temp.attacker]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#3FE7FF"},{"text":"%","color":"#3FE7FF"},{"text":"]","color":"#9F9F9F"}]
$execute as @a[tag=uhc.spec,tag=uhc.spec_info.pvp,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Spec Info ","color":"#CFCFCF",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"}},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#FF3F3F"},{"text":"%","color":"#FF3F3F"},{"text":"]","color":"#9F9F9F"},{"text":" ← "},{"selector":"@p[tag=uhc.temp.attacker]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#3FE7FF"},{"text":"%","color":"#3FE7FF"},{"text":"]","color":"#9F9F9F"}]
