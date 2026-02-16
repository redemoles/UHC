
#> bhc:scenario/02/target/hotbar/no_target
#
# @within			bhc:scenario/02/target/hotbar/location
#
#
# @description		Ajout des joueurs de l'équipe dans la Hotbar de Target 
#

execute if score @s bhc.target.known matches 0 at @s if entity @p[tag=uhc.player,predicate=bhc:bhc_2/this_is_targeted,distance=..80] in uhc:lobby run function bhc:scenario/02/target/hotbar/target_reveal

execute if score @s bhc.target.known matches 2 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Aucune cible","color":"#9F9F9F","italic":true},{"text":"]"}]
execute if score @s bhc.target.known matches 1 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"selector":"@e[type=minecraft:marker,tag=UHC,distance=0..,predicate=bhc:bhc_2/this_is_targeted]"},{"text":" ? ","color":"#FFFFFF","obfuscated":true},{"text":"Intraçable","color":"#E7E7E7","italic":true},{"text":"]"}]
execute if score @s bhc.target.known matches 0 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Cible inconnue","color":"#9F9F9F","italic":true},{"text":" ? ","color":"#FFFFFF","obfuscated":true},{"text":"Intraçable","color":"#E7E7E7","italic":true},{"text":"]"}]
data modify storage uhc:temp target.distance append from block 0 -61 0 front_text.messages[0]
