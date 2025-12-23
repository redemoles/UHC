
#> uhc:pre_game/menu/load/gamemode/mls/supermoles_per_team/
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players set @s uhc.menu.gamemode.mls 2
scoreboard players set @s uhc.menu.gamemode.mls.moles_per_team 0
scoreboard players set @s uhc.menu.gamemode.mls.moles_per_game 0
scoreboard players set @s uhc.menu.gamemode.mls.teams_of_moles 0
scoreboard players set @s uhc.menu.gamemode.mls.teams_of_supermoles 0
scoreboard players set @s uhc.menu.gamemode.mls.supermoles_per_team 1

execute as @s run function uhc:pre_game/menu/load/gamemode/mls/
