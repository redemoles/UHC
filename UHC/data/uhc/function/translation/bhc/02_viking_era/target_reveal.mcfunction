
#> uhc:translation/bhc/02_viking_era/target_reveal
#
# @within			bhc:scenario/02/target/hotbar/target_reveal
#
#
# @description		Annonce dans le chat de la réalisation d'une ligne
#

## FRA - Français / French
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"\nÈre Viking ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Cible identifiée : ","color":"#FFE73F"},{"selector":"@e[type=minecraft:marker,tag=UHC,distance=0..,predicate=bhc:bhc_2/this_is_targeted]"}]

## ENG - English
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"\nViking Era ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Target indentified: ","color":"#FFE73F"},{"selector":"@e[type=minecraft:marker,tag=UHC,distance=0..,predicate=bhc:bhc_2/this_is_targeted]"}]
