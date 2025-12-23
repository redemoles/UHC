
#> uhc:in_game/timer/hotbar/target/dimension_same
#
# @within			uhc:in_game/timer/hotbar/target/team_coords
#
#
# @description		Ajout des joueurs de l'équipe dans la Hotbar de Target 
#

execute if score #angle uhc.player.rotation matches -150..0150 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"selector":"@p[tag=uhc.target.targeted_current]"},{"text":" ⬆ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 0150..0600 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"selector":"@p[tag=uhc.target.targeted_current]"},{"text":" ⬉ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 0600..1050 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"selector":"@p[tag=uhc.target.targeted_current]"},{"text":" ⬅ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 1050..1550 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"selector":"@p[tag=uhc.target.targeted_current]"},{"text":" ⬋ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 1550..2050 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"selector":"@p[tag=uhc.target.targeted_current]"},{"text":" ⬇ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 2050..2550 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"selector":"@p[tag=uhc.target.targeted_current]"},{"text":" ⬊ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 2550..3000 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"selector":"@p[tag=uhc.target.targeted_current]"},{"text":" ⮕ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 3000..3450 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"selector":"@p[tag=uhc.target.targeted_current]"},{"text":" ⬈ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
data modify storage uhc:temp target.distance append from block 0 -61 0 front_text.messages[0]
