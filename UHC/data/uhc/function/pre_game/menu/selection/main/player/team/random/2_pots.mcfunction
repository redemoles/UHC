
#> uhc:pre_game/menu/selection/main/player/team/random_2_pots
#
# @within			uhc:pre_game/menu/
#
#
# @description		Redirection
#

execute unless score @s[tag=!uhc.random_team.in_a_team] uhc.id.team matches 092 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"team_92"}] run function uhc:pre_game/menu/selection/main/player/team/random/92
execute unless score @s[tag=uhc.random_team.in_a_team,scores={uhc.player.lang=061801}] uhc.id.team matches 092 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"team_92"}] run tellraw @s [{"text":"Tu ne peux pas quitter ton équipe car elles ont déjà été générées.","color":"#FF3F3F","bold":false}]
execute unless score @s[tag=uhc.random_team.in_a_team,scores={uhc.player.lang=051407}] uhc.id.team matches 092 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"team_92"}] run tellraw @s [{"text":"You can't leave your team because they've already been generated.","color":"#FF3F3F","bold":false}]
execute unless score @s[tag=!uhc.random_team.in_a_team] uhc.id.team matches 192 unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"team_192"}] run function uhc:pre_game/menu/selection/main/player/team/random/192
execute unless score @s[tag=uhc.random_team.in_a_team,scores={uhc.player.lang=061801}] uhc.id.team matches 192 unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"team_192"}] run tellraw @s [{"text":"Tu ne peux pas quitter ton équipe car elles ont déjà été générées.","color":"#FF3F3F","bold":false}]
execute unless score @s[tag=uhc.random_team.in_a_team,scores={uhc.player.lang=051407}] uhc.id.team matches 192 unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"team_192"}] run tellraw @s [{"text":"You can't leave your team because they've already been generated.","color":"#FF3F3F","bold":false}]
execute unless entity @s[tag=uhc.spec] unless items entity @s[tag=!uhc.random_team.in_a_team] inventory.19 *[minecraft:custom_data={Tags:"spectator"}] run function uhc:pre_game/menu/selection/main/player/team/chosen/spec
execute unless entity @s[tag=uhc.spec] unless items entity @s[tag=uhc.random_team.in_a_team,scores={uhc.player.lang=061801}] inventory.19 *[minecraft:custom_data={Tags:"spectator"}] run tellraw @s [{"text":"Tu ne peux pas quitter ton équipe car elles ont déjà été générées.","color":"#FF3F3F","bold":false}]
execute unless entity @s[tag=uhc.spec] unless items entity @s[tag=uhc.random_team.in_a_team,scores={uhc.player.lang=051407}] inventory.19 *[minecraft:custom_data={Tags:"spectator"}] run tellraw @s [{"text":"You can't leave your team because they've already been generated.","color":"#FF3F3F","bold":false}]
