
#> uhc:pre_game/menu/selected/main/player/team/random/292
#
# @within			uhc:pre_game/menu/selected/main/player/gm
#
#
# @description		Formation des équipes
#






tag @s remove uhc.spec
tag @s add uhc.player
execute if score #anonyme_team uhc.data.setup matches 0 run team join 292 @s
execute if score #anonyme_team uhc.data.setup matches 1 run team join 292 @s

function uhc:translation/menu/load/team/page/team_join/292_group_c

scoreboard players set @s uhc.id.team 292
