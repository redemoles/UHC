
#> bhc:scores_calculator/death/ironman/remove_1
#
# @within			bhc:scores_calculator/death/ironman/remove
#
#
# @description		Retrait de la liste Ironman
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","bold":false},{"text":"+","color":"#3FE7FF","bold":true},{"score":{"name":"#score","objective":"bhc.ironman.score.inv"},"color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF"},{"text":"[","color":"#FFFFFF"},{"text":"Survie","color":"#3FE7FF"},{"text":"]","color":"#FFFFFF"}]
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","bold":false},{"text":"+","color":"#3FE7FF","bold":true},{"score":{"name":"#score","objective":"bhc.ironman.score.inv"},"color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF"},{"text":"[","color":"#FFFFFF"},{"text":"Survie","color":"#3FE7FF"},{"text":"]","color":"#FFFFFF"}]
scoreboard players add #score bhc.ironman.score.inv 2
function bhc:scores_calculator/death/ironman/bonus
