
#> uhc:pre_game/menu/reset/player
#
# @within			uhc:pre_game/player_and_team/new_player
#
#
# @description		Réinitialisation de l'inventaire
#


function uhc:pre_game/menu/load/main/player/main

tag @s remove uhc.menu.main.host
execute unless score @s uhc.menu.main.player matches 1.. run scoreboard players set @s uhc.menu.main.player 1
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
tag @s remove uhc.menu.scenario.enchanting_setup
scoreboard players set @s uhc.menu.settings 0
scoreboard players set @s uhc.menu.settings.lives 0
scoreboard players set @s uhc.menu.settings.pve 0
scoreboard players set @s uhc.menu.settings.pvp 0
scoreboard players set @s uhc.menu.settings.border 0
scoreboard players set @s uhc.menu.settings.inventory 0
scoreboard players set @s uhc.menu.settings.misc 0
scoreboard players set @s uhc.menu.settings.team 0
tag @s remove uhc.menu.start
tag @s remove uhc.menu.tp
tag @s remove uhc.menu.world_check
tag @s remove uhc.menu.world_generation

advancement revoke @s only uhc:inventory_menu
