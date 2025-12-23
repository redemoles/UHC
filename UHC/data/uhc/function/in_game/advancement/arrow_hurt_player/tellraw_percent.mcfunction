
#> uhc:in_game/advancement/arrow_hurt_player/tellraw_percent
#
# @within			uhc:in_game/advancement/entity_hurt_player/
#
#
# @description		Le joueur s'est fait tiré dessus
#

# FRA
execute if score #temp uhc.player.health.100 matches 50.. on attacker if score @s uhc.player.lang matches 061801 run return run tellraw @s [{"selector":"@p[tag=uhc.temp]",hover_event:{"action":"show_text","value":""}},{"text":" est maintenant à ","color":"#CFCFCF"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#3FE7FF"},{"text":"%","color":"#3FE7FF"},{"text":".","color":"#CFCFCF"}]
execute if score #temp uhc.player.health.100 matches 25..49 on attacker if score @s uhc.player.lang matches 061801 run return run tellraw @s [{"selector":"@p[tag=uhc.temp]",hover_event:{"action":"show_text","value":""}},{"text":" est maintenant à ","color":"#CFCFCF"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#FFE73F"},{"text":"%","color":"#FFE73F"},{"text":".","color":"#CFCFCF"}]
execute if score #temp uhc.player.health.100 matches ..24 on attacker if score @s uhc.player.lang matches 061801 run return run tellraw @s [{"selector":"@p[tag=uhc.temp]",hover_event:{"action":"show_text","value":""}},{"text":" est maintenant à ","color":"#CFCFCF"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#FF3F3F"},{"text":"%","color":"#FF3F3F"},{"text":".","color":"#CFCFCF"}]

# ENG
execute if score #temp uhc.player.health.100 matches 50.. on attacker if score @s uhc.player.lang matches 051407 run return run tellraw @s [{"selector":"@p[tag=uhc.temp]",hover_event:{"action":"show_text","value":""}},{"text":" is now at ","color":"#CFCFCF"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#3FE7FF"},{"text":"%","color":"#3FE7FF"},{"text":".","color":"#CFCFCF"}]
execute if score #temp uhc.player.health.100 matches 25..49 on attacker if score @s uhc.player.lang matches 051407 run return run tellraw @s [{"selector":"@p[tag=uhc.temp]",hover_event:{"action":"show_text","value":""}},{"text":" is now at ","color":"#CFCFCF"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#FFE73F"},{"text":"%","color":"#FFE73F"},{"text":".","color":"#CFCFCF"}]
execute if score #temp uhc.player.health.100 matches ..24 on attacker if score @s uhc.player.lang matches 051407 run return run tellraw @s [{"selector":"@p[tag=uhc.temp]",hover_event:{"action":"show_text","value":""}},{"text":" is now at ","color":"#CFCFCF"},{"score":{"name":"#temp","objective":"uhc.player.health.100"},"color":"#FF3F3F"},{"text":"%","color":"#FF3F3F"},{"text":".","color":"#CFCFCF"}]
