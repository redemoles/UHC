
#> uhc:in_game/scenario/ironman/remove_team
#
# @within			uhc:in_game/scenario/ironman/remove
#
#
# @description		Vérifie si l'équipe possède un Ironman
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

scoreboard players remove @s uhc.scenario.ironman 1
execute if score @s uhc.scenario.ironman matches 1.. run return fail

scoreboard players set @s uhc.scenario.ironman -1
scoreboard players remove #team uhc.scenario.ironman 1
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Il n'y a plus d'Ironman dans votre équipe.","color":"#FF3F3F"}]
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" There are no more Ironman in your team.","color":"#FF3F3F"}]

execute if score #bhc uhc.gamemode matches 1 run function bhc:scores_calculator/death/ironman/remove
