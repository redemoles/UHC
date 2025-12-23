
#> uhc:pre_game/menu/selection/settings/pvp_team_stuff/host
#
# @within			uhc:pre_game/menu/selection/settings/host
# 
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"settings_pvp_version"}] run function uhc:pre_game/menu/load/settings/pvp/version/
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_pvp_potion"}] run return run function uhc:pre_game/menu/load/settings/pvp/
execute unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"settings_pvp_team_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/team_stuff/
execute unless items entity @s inventory.5 *[minecraft:custom_data={Tags:"settings_pvp_no_clean"}] run function uhc:pre_game/menu/load/settings/pvp/no_clean/

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_pvp_milk_bucket"}] run function uhc:pre_game/menu/load/settings/pvp/potion/milk_bucket/
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_pvp_compatibility"}] run function uhc:pre_game/menu/load/settings/pvp/potion/compatibility/

execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"settings_pvp"}] run return run function uhc:pre_game/menu/load/settings/pvp/

execute unless items entity @s[scores={uhc.menu.settings=3..9}] inventory.20 *[minecraft:custom_data={Tags:"-10"}] run function uhc:pre_game/menu/load/settings/1_remove_10
execute unless items entity @s[scores={uhc.menu.settings=2..9}] inventory.21 *[minecraft:custom_data={Tags:"-1"}] run function uhc:pre_game/menu/load/settings/2_remove_1
execute unless items entity @s[scores={uhc.menu.settings=2..9}] inventory.23 *[minecraft:custom_data={Tags:"+1"}] run function uhc:pre_game/menu/load/settings/3_add_1
execute unless items entity @s[scores={uhc.menu.settings=3..9}] inventory.24 *[minecraft:custom_data={Tags:"+10"}] run function uhc:pre_game/menu/load/settings/4_add_10

execute unless items entity @s[scores={uhc.menu.settings=1..}] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
