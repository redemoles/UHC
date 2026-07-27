
#> uhc:pre_game/menu/selected/main/player/team/chosen/17-32/24
#
# @within			uhc:pre_game/menu/selected/main/player/gm
#
#
# @description		Formation des équipes
#

execute store result score #temp uhc.data.setup if entity @a[scores={uhc.id.team=24}]
execute if score #temp uhc.data.setup >= #team_size uhc.data.setup run return run function uhc:translation/menu/load/team/page/team_join/cancel_team_full

tag @s remove uhc.spec
tag @s add uhc.player
scoreboard players set @s uhc.id.team 24
execute if score #anonyme_team uhc.data.setup matches 0 run team join 024 @s
execute if score #anonyme_team uhc.data.setup matches 1 run team join 091 @s

function uhc:translation/menu/load/team/page/team_join/17-32/24
