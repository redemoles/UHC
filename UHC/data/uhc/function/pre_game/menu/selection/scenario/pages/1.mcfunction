
#> uhc:pre_game/menu/selection/scenario/pages/1
#
# @within			uhc:pre_game/menu/detector/menu
# @within			uhc:pre_game/menu/selection/scenario/pages/2
#
# @description		Redirection
#

# Ligne 1
execute unless items entity @s[tag=uhc.host] inventory.1 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/bats
execute unless items entity @s[tag=uhc.host] inventory.2 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/best_pve
execute unless items entity @s[tag=uhc.host] inventory.3 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/biome_paranoia
execute unless items entity @s[tag=uhc.host] inventory.4 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/blood_cycle
execute unless items entity @s[tag=uhc.host] inventory.5 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/blood_diamond/main with storage uhc:scenario blood_diamond
execute unless items entity @s[tag=uhc.host] inventory.6 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/bookception
execute unless items entity @s[tag=uhc.host] inventory.7 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/cut_clean

# Ligne 2
execute unless items entity @s[tag=uhc.host] inventory.10 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/double_ores
execute unless items entity @s[tag=uhc.host] inventory.11 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/enchanting_setup/main
execute unless items entity @s[tag=uhc.host] inventory.12 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/experienceless
execute unless items entity @s[tag=uhc.host] inventory.13 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/restricted_area/main
execute unless items entity @s[tag=uhc.host] inventory.14 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/gone_fishing
execute unless items entity @s[tag=uhc.host] inventory.15 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/hastey_boys
execute unless items entity @s[tag=uhc.host] inventory.16 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/no_fall

# Ligne 3
execute unless items entity @s[tag=uhc.host] inventory.19 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/list/mystery_scenarios
execute unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"page"}] run return run function uhc:pre_game/menu/load/scenario/pages/2/main
execute unless items entity @s[tag=uhc.host] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute unless items entity @s[tag=!uhc.host] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/menu
function uhc:pre_game/menu/load/scenario/pages/1/main
