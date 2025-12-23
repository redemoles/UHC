
#> uhc:pre_game/menu/selection/team_settings
#
# @within			uhc:pre_game/menu/detector/host
# 
#
# @description		Redirection
#

execute unless items entity @s[scores={uhc.menu.team_settings=1..}] inventory.1 *[minecraft:custom_data={Tags:"team_format"}] run function uhc:pre_game/menu/load/team_settings/team_format
execute unless items entity @s[scores={uhc.menu.team_settings=1..}] inventory.2 *[minecraft:custom_data={Tags:"team_size"}] run return run function uhc:pre_game/menu/load/team_settings/team_size/
execute unless items entity @s[scores={uhc.menu.team_settings=1..}] inventory.7 *[minecraft:custom_data={Tags:"team_anonyme"}] run function uhc:pre_game/menu/load/team_settings/anonyme_team
execute unless items entity @s[scores={uhc.menu.team_settings=1..}] inventory.10 *[minecraft:custom_data={Tags:"random_team_start"}] run function uhc:pre_game/menu/load/team_settings/random_start
execute if score #random_team uhc.data.setup matches 1.. if score #anonyme_team uhc.data.setup matches 0 unless items entity @s[scores={uhc.menu.team_settings=1..}] inventory.11 *[minecraft:custom_data={Tags:"random_team_instant"}] run function uhc:pre_game/menu/load/team_settings/random_now_instant
execute if score #random_team uhc.data.setup matches 1.. if score #anonyme_team uhc.data.setup matches 0 unless items entity @s[scores={uhc.menu.team_settings=1..}] inventory.12 *[minecraft:custom_data={Tags:"random_team_progressive"}] run function uhc:pre_game/menu/load/team_settings/random_now_progressive

execute unless items entity @s[scores={uhc.menu.team_settings=2}] inventory.20 *[minecraft:item_name=[{"text":"-4","color":"#CF3F3F","italic":false}]] run function uhc:pre_game/menu/load/team_settings/1_remove_4
execute unless items entity @s[scores={uhc.menu.team_settings=2}] inventory.21 *[minecraft:item_name=[{"text":"-1","color":"#FF3F3F","italic":false}]] run function uhc:pre_game/menu/load/team_settings/2_remove_1
execute unless items entity @s[scores={uhc.menu.team_settings=2}] inventory.23 *[minecraft:item_name=[{"text":"+1","color":"#3FE7FF","italic":false}]] run function uhc:pre_game/menu/load/team_settings/3_add_1
execute unless items entity @s[scores={uhc.menu.team_settings=2}] inventory.24 *[minecraft:item_name=[{"text":"+4","color":"#3FCFCF","italic":false}]] run function uhc:pre_game/menu/load/team_settings/4_add_4

execute unless items entity @s[scores={uhc.menu.team_settings=1..}] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/
execute if score @s uhc.menu.team_settings matches 1.. run function uhc:pre_game/menu/load/team_settings/
