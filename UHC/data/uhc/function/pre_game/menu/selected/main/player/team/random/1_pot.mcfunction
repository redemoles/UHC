
#> uhc:pre_game/menu/selected/main/player/team/random_1_pot
#
# @within			uhc:pre_game/menu/
#
#
# @description		Redirection
#

execute unless score @s[tag=!uhc.random_team.in_a_team] uhc.id.team matches 091 unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"team_91"}] run function uhc:pre_game/menu/selected/main/player/team/random/91
execute unless score @s[tag=uhc.random_team.in_a_team] uhc.id.team matches 091 unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"team_91"}] run function uhc:translation/menu/load/team/page/team_join/cancel_team_randomized
execute unless entity @s[tag=uhc.spec] unless items entity @s[tag=!uhc.random_team.in_a_team] inventory.19 *[minecraft:custom_data={Tags:"spectator"}] run function uhc:pre_game/menu/selected/main/player/team/chosen/spec
execute unless entity @s[tag=uhc.spec] unless items entity @s[tag=uhc.random_team.in_a_team] inventory.19 *[minecraft:custom_data={Tags:"spectator"}] run function uhc:translation/menu/load/team/page/team_join/cancel_team_randomized
