
#> uhc:pre_game/menu/selected/main/player/team/random/192
#
# @within			uhc:pre_game/menu/selected/main/player/gm
#
#
# @description		Formation des équipes
#






tag @s remove uhc.spec
tag @s add uhc.player
execute if score #anonyme_team uhc.data.setup matches 0 run team join 192 @s
execute if score #anonyme_team uhc.data.setup matches 1 run team join 192 @s

function uhc:translation/menu/load/team/page/team_join/192_group_b

scoreboard players set @s uhc.id.team 192
