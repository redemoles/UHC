
#> uhc:pre_game/menu/load/main/host/menu
#
# @within			uhc:pre_game/menu/selection/...
#
#
# @description		Menu
#

clear @s
execute if score #language uhc.player.lang matches 1.. run tag @s add uhc.menu.main.host
scoreboard players set @s uhc.menu.main.player 0
scoreboard players set @s uhc.menu.default_language 0
scoreboard players set @s uhc.menu.language 0
tag @s remove uhc.menu.gamemode
scoreboard players set @s uhc.menu.gamemode.bhc 0
scoreboard players set @s uhc.menu.gamemode.mls 0
scoreboard players set @s uhc.menu.gamemode.mls.moles_per_game 0
scoreboard players set @s uhc.menu.gamemode.mls.moles_per_team 0
scoreboard players set @s uhc.menu.gamemode.mls.supermoles_per_team 0
scoreboard players set @s uhc.menu.gamemode.mls.teams_of_moles 0
scoreboard players set @s uhc.menu.gamemode.mls.teams_of_supermoles 0
tag @s remove uhc.menu.lobby
scoreboard players set @s uhc.menu.scenario.main 0
scoreboard players set @s uhc.menu.scenario.blood_diamond 0
scoreboard players set @s uhc.menu.scenario.restricted_area 0
tag @s remove uhc.menu.scenario.enchanting_setup
scoreboard players set @s uhc.menu.settings 0
scoreboard players set @s uhc.menu.settings.pve 0
scoreboard players set @s uhc.menu.settings.pvp 0
scoreboard players set @s uhc.menu.settings.border 0
scoreboard players set @s uhc.menu.settings.inventory 0
scoreboard players set @s uhc.menu.settings.team 0
scoreboard players set @s uhc.menu.settings.potion 0
scoreboard players set @s uhc.menu.settings.misc 0
tag @s remove uhc.menu.start
tag @s remove uhc.menu.tp
tag @s remove uhc.menu.world_check
tag @s remove uhc.menu.world_generation

function uhc:pre_game/menu/load/background/

function uhc:translation/menu/load/host
