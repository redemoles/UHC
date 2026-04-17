
#> uhc:pre_game/menu/selection/scenario/pages/2
#
# @within			uhc:pre_game/menu/selection/scenario/pages/1
#
#
# @description		Redirection
#

# Ligne 1
execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/no_fire
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/permakill
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/red_arrows
execute unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/rewarding_longshots
execute unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"scenario"}] run return run function uhc:pre_game/menu/load/scenario/restricted_area/main
execute unless items entity @s inventory.6 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/sound_paranoia
execute unless items entity @s inventory.7 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/team_health

# Ligne 3
execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/selection/scenario/mystery_scenarios
execute unless items entity @s inventory.24 *[minecraft:item_name=[{"text":"Page 1","color":"#3FE7FF","italic":false}]] run return run function uhc:pre_game/menu/load/scenario/pages/1/main
execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
function uhc:pre_game/menu/load/scenario/pages/2/main
