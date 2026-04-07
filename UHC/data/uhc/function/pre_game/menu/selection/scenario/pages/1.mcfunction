
#> uhc:pre_game/menu/selection/scenario/pages/1
#
# @within			uhc:pre_game/menu/detector/menu
# @within			uhc:pre_game/menu/selection/scenario/pages/2
#
# @description		Redirection
#

# Ligne 1
execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/bats
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/best_pve
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/biome_paranoia
execute unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/blood_cycle
execute unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/blood_diamond/main with storage uhc:scenario blood_diamond
execute unless items entity @s inventory.6 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/bookception
execute unless items entity @s inventory.7 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/cut_clean

# Ligne 2
execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/double_ores
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/enchanting_setup/main
execute unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/experienceless
execute unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/restricted_area/main
execute unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/gone_fishing
execute unless items entity @s inventory.15 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/hastey_boys
execute unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/no_fall

# Ligne 3
execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/mystery_scenarios
execute unless items entity @s inventory.24 *[minecraft:item_name=[{"text":"Page 2","color":"#3FE7FF","italic":false}]] run return run function uhc:pre_game/menu/load/scenario/pages/2/main
execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
function uhc:pre_game/menu/load/scenario/pages/1/main
