
#> uhc:translation/in_game/scenario/ironman_remove_team
#
# @within			uhc:in_game/scenario/ironman/remove_team
#
#
#
#

## FRA - Français / French
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Il n'y a plus d'Ironman dans votre équipe.","color":"#FF3F3F"}]

## ENG - English
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" There are no more Ironman in your team.","color":"#FF3F3F"}]
