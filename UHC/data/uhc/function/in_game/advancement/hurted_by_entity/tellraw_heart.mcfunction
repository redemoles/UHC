
#> uhc:in_game/advancement/hurted_by_entity/tellraw_heart
#
# @within			uhc:in_game/advancement/hurted_by_entity/
#
#
# @description		Le joueur a pris un dégât
#

$execute as @a[tag=uhc.spec,tag=uhc.spec_info.pve,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Spec Info ","color":"#CFCFCF",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#FF3F3F"},{"text":" PV","color":"#FF3F3F"},{"text":"]","color":"#9F9F9F"},{"text":" ← "},{"text":"PvE","color":"#FF5F5F"}]
$execute as @a[tag=uhc.spec,tag=uhc.spec_info.pve,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Spec Info ","color":"#CFCFCF",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"},hover_event:{"action":"show_text","value":""}},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"selector":"@p[tag=uhc.temp]",click_event:{"action":"run_command","command":"trigger uhc.spec.tp set $(id)"}},{"text":" [","color":"#9F9F9F"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#FF3F3F"},{"text":" HP","color":"#FF3F3F"},{"text":"]","color":"#9F9F9F"},{"text":" ← "},{"text":"PvE","color":"#FF5F5F"}]
