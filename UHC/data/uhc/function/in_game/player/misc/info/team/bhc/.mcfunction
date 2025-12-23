
#> uhc:in_game/player/misc/info/team/bhc/
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Analyse du trigger
#

scoreboard players operation #team uhc.id.team = @s uhc.info.team.temp

tag @s add uhc.temp
execute if score #bhc uhc.gamemode matches 1 in uhc:lobby as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id_team] run function uhc:in_game/player/misc/info/team/bhc/team_selected
tag @s remove uhc.temp

scoreboard players reset @s uhc.info.team.temp
scoreboard players enable @s uhc.info.team.temp
