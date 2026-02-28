
#> uhc:pre_game/menu/selection/scenario/page_1
#
# @within			uhc:pre_game/menu/detector/menu
# @within			uhc:pre_game/menu/selection/scenario/page_2
#
# @description		Redirection
#

# Ligne 1
execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/bats
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/best_pve
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/biome_paranoia
execute unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/blood_cycle
execute unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/blood_diamond/ with storage uhc:scenario blood_diamond
execute unless items entity @s inventory.6 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/bookception
execute unless items entity @s inventory.7 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/cut_clean

# Ligne 2
execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/enchanting_setup/
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/experienceless
execute unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/go_to_hell/menu with storage uhc:scenario go_to_hell
execute unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/gone_fishing
execute unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/no_fall
execute unless items entity @s inventory.15 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/permakill
execute unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/red_arrows

# Ligne 3
execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/mystery_scenarios
execute unless items entity @s inventory.24 *[minecraft:item_name=[{"text":"Page 2","color":"#3FE7FF","italic":false}]] run return run function uhc:pre_game/menu/load/scenario/menu_2
execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
function uhc:pre_game/menu/load/scenario/menu_1
