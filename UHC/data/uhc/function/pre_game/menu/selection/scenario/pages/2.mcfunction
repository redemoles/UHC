
#> uhc:pre_game/menu/selection/scenario/pages/2
#
# @within			uhc:pre_game/menu/selection/scenario/pages/1
#
#
# @description		Redirection
#

# Ligne 1
execute unless items entity @s[tag=uhc.host] inventory.1 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/no_fire
execute unless items entity @s[tag=uhc.host] inventory.2 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/perma_day
execute unless items entity @s[tag=uhc.host] inventory.3 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/perma_night
execute unless items entity @s[tag=uhc.host] inventory.4 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/permakill
execute unless items entity @s[tag=uhc.host] inventory.5 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/red_arrows
execute unless items entity @s[tag=uhc.host] inventory.6 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/rewarding_longshots
execute unless items entity @s[tag=uhc.host] inventory.7 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/restricted_area/main

# Ligne 2
execute unless items entity @s[tag=uhc.host] inventory.10 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/silent_night
execute unless items entity @s[tag=uhc.host] inventory.11 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/sound_paranoia
execute unless items entity @s[tag=uhc.host] inventory.12 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/team_health





# Ligne 3
execute unless items entity @s[tag=uhc.host] inventory.19 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/mystery_scenarios
execute unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"page"}] run return run function uhc:pre_game/menu/load/scenario/pages/1/main
execute unless items entity @s[tag=uhc.host] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute unless items entity @s[tag=!uhc.host] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/menu
function uhc:pre_game/menu/load/scenario/pages/2/main
