
#> uhc:translation/bhc/02_viking_era/target_randomizer
#
# @within			bhc:in_game/scenario/02/target/randomizer/tellraw
#
#
# @description		Annonce dans le chat de la réalisation d'une ligne
#

## FRA - Français / French
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"\nÈre Viking ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Nouvelles cibles attribuées !","color":"#FFE73F"}]

## ENG - English
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"\nViking Era ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" New targets assigned!","color":"#FFE73F"}]
