
#> uhc:translation/bhc/02_viking_era/target_hotbar_dimension_diff
#
# @within			bhc:in_game/scenario/02/target/hotbar/dimension_diff
#
#
# @description		Équipe impossible à cibler 
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Cible inconnue","color":"#9F9F9F","italic":true},{"text":" ?","color":"#FFFFFF","obfuscated":true},{"text":"]"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run data modify block 0 -61 0 front_text.messages[0] set value [{"text":" [","color":"#CFCFCF"},{"text":"Unknown target","color":"#9F9F9F","italic":true},{"text":" ?","color":"#FFFFFF","obfuscated":true},{"text":"]"}]
