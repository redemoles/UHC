
#> uhc:in_game/player/spec/revive/new_player/menu/selection/team/id/01-16/12
#
# @within			uhc:pre_game/menu/selected/main/player/gm
#
#
# @description		Formation des équipes
#

execute store result score #temp uhc.data.setup run scoreboard players get @n[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.id.team=12}] uhc.team.size
execute if score #temp uhc.data.setup >= #team_size uhc.data.temp run return run function uhc:translation/in_game/revive_menu/team_full

execute if score #anonyme_team uhc.data.setup matches 0 run team join 012 @s
execute if score #anonyme_team uhc.data.setup matches 1 run team join 091 @s

scoreboard players enable @s uhc.menu.revive
function uhc:translation/in_game/revive_menu/team_12
