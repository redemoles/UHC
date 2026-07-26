
#> uhc:pre_game/menu/selected/main/player/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"menu_language"}] run return run function uhc:pre_game/menu/load/language/menu
execute unless items entity @s[tag=uhc.host,scores={uhc.menu.main.player=1..}] inventory.4 *[minecraft:custom_data={Tags:"menu_main_host"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute unless items entity @s[tag=!uhc.host,scores={uhc.menu.main.player=1..}] inventory.3 *[minecraft:custom_data={Tags:"gamemode_list"}] run return run function uhc:pre_game/menu/load/main/player/gamemode/tellraw
execute unless score #mystery_scenarios uhc.data.setup matches 1 unless items entity @s[tag=!uhc.host,scores={uhc.menu.main.player=1..}] inventory.4 *[minecraft:custom_data={Tags:"scenario_list"}] run return run function uhc:pre_game/menu/load/scenario/pages/1/main
execute if score #mystery_scenarios uhc.data.setup matches 1 unless items entity @s[tag=!uhc.host,scores={uhc.menu.main.player=1..}] inventory.4 *[minecraft:custom_data={Tags:"scenario_list"}] run function uhc:translation/menu/selected/settings_cancel_scenario
execute unless items entity @s[tag=!uhc.host,scores={uhc.menu.main.player=1..}] inventory.5 *[minecraft:custom_data={Tags:"settings"}] run return run function uhc:pre_game/menu/load/settings/menu
execute unless items entity @s inventory.7 *[minecraft:custom_data={Tags:"menu_teleportation"}] run return run function uhc:pre_game/menu/load/tp/main

execute if score @s uhc.menu.main.player matches 1..10 if score #random_team uhc.data.setup matches 0 run function uhc:pre_game/menu/selected/main/player/team/chosen/main
execute if score @s uhc.menu.main.player matches 1..10 if score #random_team uhc.data.setup matches 1 if score #random_team_pots uhc.data.setup matches 1 run function uhc:pre_game/menu/selected/main/player/team/random/1_pot
execute if score @s uhc.menu.main.player matches 1..10 if score #random_team uhc.data.setup matches 1 if score #random_team_pots uhc.data.setup matches 2 run function uhc:pre_game/menu/selected/main/player/team/random/2_pots
execute if score @s uhc.menu.main.player matches 1..10 if score #random_team uhc.data.setup matches 1 if score #random_team_pots uhc.data.setup matches 3 run function uhc:pre_game/menu/selected/main/player/team/random/3_pots

execute unless items entity @s[tag=!uhc.night_vision] inventory.25 *[minecraft:custom_data={Tags:"night_vision"}] run return run function uhc:pre_game/menu/selected/main/player/light/on
execute unless items entity @s[tag=uhc.night_vision] inventory.25 *[minecraft:custom_data={Tags:"night_vision"}] run return run function uhc:pre_game/menu/selected/main/player/light/off

execute as @s[scores={uhc.menu.main.player=1..10}] run function uhc:pre_game/menu/load/main/player/menu
