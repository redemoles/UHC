
#> uhc:pre_game/menu/selected/main/player/team/random_2_pots
#
# @within			uhc:pre_game/menu/
#
#
# @description		Redirection
#

execute unless score @s[tag=!uhc.random_team.in_a_team] uhc.id.team matches 092 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"team_92"}] run function uhc:pre_game/menu/selected/main/player/team/random/92
execute unless score @s[tag=uhc.random_team.in_a_team] uhc.id.team matches 092 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"team_92"}] run function uhc:translation/menu/load/team/page/team_join/cancel_team_randomized
execute unless score @s[tag=!uhc.random_team.in_a_team] uhc.id.team matches 192 unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"team_192"}] run function uhc:pre_game/menu/selected/main/player/team/random/192
execute unless score @s[tag=uhc.random_team.in_a_team] uhc.id.team matches 192 unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"team_192"}] run function uhc:translation/menu/load/team/page/team_join/cancel_team_randomized
execute unless entity @s[tag=uhc.spec] unless items entity @s[tag=!uhc.random_team.in_a_team] inventory.19 *[minecraft:custom_data={Tags:"spectator"}] run function uhc:pre_game/menu/selected/main/player/team/chosen/spec
execute unless entity @s[tag=uhc.spec] unless items entity @s[tag=uhc.random_team.in_a_team] inventory.19 *[minecraft:custom_data={Tags:"spectator"}] run function uhc:translation/menu/load/team/page/team_join/cancel_team_randomized
