
#> uhc:in_game/player/spec/revive/new_player/menu/selection/team/id/17-32/31
#
# @within			uhc:pre_game/menu/selected/main/player/gm
#
#
# @description		Formation des équipes
#

execute store result score #temp uhc.data.setup run scoreboard players get @n[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.id.team=31}] uhc.team.size
execute if score #temp uhc.data.setup >= #team_size uhc.data.temp run return run function uhc:translation/menu/load/team/page/team_join/cancel_team_full

scoreboard players enable @s uhc.menu.revive
function uhc:translation/in_game/revive_menu/team_31
