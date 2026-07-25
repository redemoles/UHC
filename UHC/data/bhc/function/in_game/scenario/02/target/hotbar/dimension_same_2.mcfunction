
#> bhc:in_game/scenario/02/target/hotbar/dimension_same
#
# @within			bhc:in_game/scenario/02/target/hotbar/team_coords
#
#
# @description		Ajout des joueurs de l'équipe dans la Hotbar de Target 
#

execute if score #angle uhc.player.rotation matches -150..0150 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Cible inconnue","color":"#9F9F9F","italic":true},{"text":" ⬆ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 0150..0600 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Cible inconnue","color":"#9F9F9F","italic":true},{"text":" ⬉ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 0600..1050 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Cible inconnue","color":"#9F9F9F","italic":true},{"text":" ⬅ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 1050..1550 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Cible inconnue","color":"#9F9F9F","italic":true},{"text":" ⬋ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 1550..2050 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Cible inconnue","color":"#9F9F9F","italic":true},{"text":" ⬇ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 2050..2550 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Cible inconnue","color":"#9F9F9F","italic":true},{"text":" ⬊ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 2550..3000 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Cible inconnue","color":"#9F9F9F","italic":true},{"text":" ⮕ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
execute if score #angle uhc.player.rotation matches 3000..3450 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Cible inconnue","color":"#9F9F9F","italic":true},{"text":" ⬈ ","color":"#FFFFFF"},{"score":{"name":"#distance","objective":"uhc.player.target.distance"},"color":"#FFFFFF"},{"text":"] "}]
