
#> uhc:pre_game/menu/selection/scenario/2
#
# @within			uhc:pre_game/menu/selection/scenario/1
#
#
# @description		Redirection
#

# Ligne 1
execute unless items entity @s[tag=uhc.menu.scenario.2] inventory.1 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/rewarding_longshots
execute unless items entity @s[tag=uhc.menu.scenario.2] inventory.2 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/sky_high
execute unless items entity @s[tag=uhc.menu.scenario.2] inventory.3 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/sound_paranoia
execute unless items entity @s[tag=uhc.menu.scenario.2] inventory.4 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/team_health
execute unless items entity @s[tag=uhc.menu.scenario.2] inventory.5 *[minecraft:custom_data={Tags:"scenario"}] run function uhc:pre_game/menu/load/scenario/trade_uhc

# Ligne 3
execute unless items entity @s[tag=uhc.menu.scenario.2] inventory.24 *[minecraft:item_name=[{"text":"Page 1","color":"#3FE7FF","italic":false}]] run return run function uhc:pre_game/menu/load/scenario/1
execute unless items entity @s[tag=uhc.menu.scenario.2] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/
execute if entity @s[tag=uhc.menu.scenario.2] run function uhc:pre_game/menu/load/scenario/2
