
#> uhc:pre_game/menu/selection/gamemode/mls/settings/moles_per_game
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players set @s uhc.menu.gamemode.mls 2
scoreboard players set @s uhc.menu.gamemode.mls.moles_per_team 0
scoreboard players set @s uhc.menu.gamemode.mls.moles_per_game 1
scoreboard players set @s uhc.menu.gamemode.mls.teams_of_moles 0
scoreboard players set @s uhc.menu.gamemode.mls.teams_of_supermoles 0
scoreboard players set @s uhc.menu.gamemode.mls.supermoles_per_team 0

execute as @s run function uhc:pre_game/menu/load/gamemode/mls/main
