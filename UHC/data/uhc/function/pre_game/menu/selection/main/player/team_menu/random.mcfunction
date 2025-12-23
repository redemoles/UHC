
#> uhc:pre_game/menu/selection/main/player/team_menu/random
#
# @within			uhc:pre_game/menu/
#
#
# @description		Redirection
#

execute unless entity @s[scores={uhc.id.team=91}] unless items entity @s[tag=!uhc.random_team.in_a_team] inventory.12 *[minecraft:custom_data={Tags:"team_91"}] run function uhc:pre_game/menu/load/main/player/team_join/91
execute unless entity @s[scores={uhc.id.team=91}] unless items entity @s[tag=uhc.random_team.in_a_team,scores={uhc.player.lang=061801}] inventory.12 *[minecraft:custom_data={Tags:"team_91"}] run tellraw @s [{"text":"Tu ne peux pas quitter ton équipe car elles ont déjà été générées.","color":"#FF3F3F","bold":false}]
execute unless entity @s[scores={uhc.id.team=91}] unless items entity @s[tag=uhc.random_team.in_a_team,scores={uhc.player.lang=051407}] inventory.12 *[minecraft:custom_data={Tags:"team_91"}] run tellraw @s [{"text":"You can't leave your team because they've already been generated.","color":"#FF3F3F","bold":false}]
execute unless entity @s[tag=uhc.spec] unless items entity @s[tag=!uhc.random_team.in_a_team] inventory.14 *[minecraft:custom_data={Tags:"spectator"}] run function uhc:pre_game/menu/load/main/player/team_join/spec
execute unless entity @s[tag=uhc.spec] unless items entity @s[tag=uhc.random_team.in_a_team,scores={uhc.player.lang=061801}] inventory.14 *[minecraft:custom_data={Tags:"spectator"}] run tellraw @s [{"text":"Tu ne peux pas quitter ton équipe car elles ont déjà été générées.","color":"#FF3F3F","bold":false}]
execute unless entity @s[tag=uhc.spec] unless items entity @s[tag=uhc.random_team.in_a_team,scores={uhc.player.lang=051407}] inventory.14 *[minecraft:custom_data={Tags:"spectator"}] run tellraw @s [{"text":"You can't leave your team because they've already been generated.","color":"#FF3F3F","bold":false}]
