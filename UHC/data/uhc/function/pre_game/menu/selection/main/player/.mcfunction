
#> uhc:pre_game/menu/selection/main/
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"lang_fra"}] run scoreboard players set @s uhc.player.lang 061801
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"lang_eng"}] run scoreboard players set @s uhc.player.lang 051407
execute unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"teleportation"}] run return run function uhc:pre_game/menu/load/tp/
execute unless items entity @s[tag=!uhc.night_vision] inventory.7 *[minecraft:custom_data={Tags:"night_vision"}] run return run function uhc:pre_game/menu/load/main/player/light/on
execute unless items entity @s[tag=uhc.night_vision] inventory.7 *[minecraft:custom_data={Tags:"night_vision"}] run return run function uhc:pre_game/menu/load/main/player/light/off

execute if score @s uhc.menu.main.player matches 1..10 if score #random_team uhc.data.setup matches 0 run function uhc:pre_game/menu/selection/main/player/team_menu/chosen
execute if score @s uhc.menu.main.player matches 1..10 if score #random_team uhc.data.setup matches 1 if score #random_team_pots uhc.data.setup matches 1 run function uhc:pre_game/menu/selection/main/player/team_menu/random_1_pot
execute if score @s uhc.menu.main.player matches 1..10 if score #random_team uhc.data.setup matches 1 if score #random_team_pots uhc.data.setup matches 2 run function uhc:pre_game/menu/selection/main/player/team_menu/random_2_pots
execute if score @s uhc.menu.main.player matches 1..10 if score #random_team uhc.data.setup matches 1 if score #random_team_pots uhc.data.setup matches 3 run function uhc:pre_game/menu/selection/main/player/team_menu/random_3_pots

execute unless items entity @s[tag=uhc.host,scores={uhc.menu.main.player=1..}] inventory.25 *[minecraft:custom_data={Tags:"menu_main_host"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute unless items entity @s[tag=!uhc.host,scores={uhc.menu.main.player=1..}] inventory.25 *[minecraft:custom_data={Tags:"menu_main_host"}] run return run function uhc:pre_game/menu/load/settings/menu

execute as @s[scores={uhc.menu.main.player=1..10}] run function uhc:pre_game/menu/load/main/player/main
