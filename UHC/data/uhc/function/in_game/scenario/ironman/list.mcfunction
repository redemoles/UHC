
#> uhc:in_game/scenario/ironman/list
#
# @within			uhc:in_game/scenario/_advancement/took_damage
#
#
# @description		Obtention de la liste des joueurs Ironman avec /trigger uhc.ironman.list set 1
#

scoreboard players set #team uhc.id.team 0
scoreboard players set @a[tag=uhc.ironman] uhc.player.ironman.list 0

tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true}]
function uhc:in_game/scenario/ironman/list_1
scoreboard players reset @s uhc.ironman.list
scoreboard players enable @s uhc.ironman.list

execute if score #player uhc.scenario.ironman matches ..0 run scoreboard players reset @a uhc.ironman.list
