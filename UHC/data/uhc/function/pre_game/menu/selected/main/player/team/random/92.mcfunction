
#> uhc:pre_game/menu/selected/main/player/team/random/92
#
# @within			uhc:pre_game/menu/selected/main/player/gm
#
#
# @description		Formation des équipes
#






tag @s remove uhc.spec
tag @s add uhc.player
execute if score #anonyme_team uhc.data.setup matches 0 run team join 092 @s
execute if score #anonyme_team uhc.data.setup matches 1 run team join 092 @s

function uhc:translation/menu/load/team/page/team_join/092_group_a

scoreboard players set @s uhc.id.team 92
