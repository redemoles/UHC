
#> uhc:translation/bhc/scores_death_ironman_remove
#
# @within			bhc:in_game/scenario/99/advancement/new_adv
#
#
# @description		Annonce dans le chat de la réalisation d'un Bingo
#

## FRA - Français / French
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","bold":false},{"text":"+","color":"#3FE7FF","bold":true},{"score":{"name":"#score","objective":"bhc.ironman.score.inv"},"color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF"},{"text":"[","color":"#FFFFFF"},{"text":"Survie","color":"#3FE7FF"},{"text":"]","color":"#FFFFFF"}]

## ENG - English
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","bold":false},{"text":"+","color":"#3FE7FF","bold":true},{"score":{"name":"#score","objective":"bhc.ironman.score.inv"},"color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF"},{"text":"[","color":"#FFFFFF"},{"text":"Survie","color":"#3FE7FF"},{"text":"]","color":"#FFFFFF"}]
