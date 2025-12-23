
#> uhc:pre_game/menu/selection/scenario/1
#
# @within			uhc:pre_game/menu/detector/host
# @within			uhc:pre_game/menu/selection/scenario/2
#
# @description		Redirection
#

# Ligne 1
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.1 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/bats
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.2 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/best_pve
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.3 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/biome_paranoia
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.4 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/blood_cycle
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.5 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/blood_diamond/ with storage uhc:temp blood_diamond
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.6 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/bookception
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.7 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/cut_clean

# Ligne 2
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.10 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/enchanting_setup/
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.11 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/experienceless
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.12 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/go_to_hell
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.13 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/gone_fishing
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.14 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/no_fall
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.15 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/permakill
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.16 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/red_arrows

# Ligne 3
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.24 *[minecraft:item_name=[{"text":"Page 2","color":"#3FE7FF","italic":false}]] run return run function uhc:pre_game/menu/load/scenario/2
execute unless items entity @s[tag=uhc.menu.scenario.1] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/
execute if entity @s[tag=uhc.menu.scenario.1] run function uhc:pre_game/menu/load/scenario/1
