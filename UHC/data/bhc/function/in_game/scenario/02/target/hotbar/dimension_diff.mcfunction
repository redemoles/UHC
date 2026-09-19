
#> bhc:in_game/scenario/02/target/hotbar/dimension_diff
#
# @within			bhc:in_game/scenario/02/target/hotbar/team_coords
#
#
# @description		Ajout des joueurs de l'équipe dans la Hotbar de Target 
#

execute if score @s bhc.target.known matches 1 in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"selector":"@e[type=minecraft:marker,tag=UHC,distance=0..,predicate=bhc:bhc_2/this_is_targeted]"},{"text":" ?","color":"#FFFFFF","obfuscated":true},{"text":"]"}]
execute if score @s bhc.target.known matches 0 in uhc:lobby run function uhc:translation/bhc/02_viking_era/target_hotbar_dimension_diff
execute in uhc:lobby run data modify storage uhc:temp target.distance append from block 0 -61 0 front_text.messages[0]
