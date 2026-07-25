
#> uhc:pre_game/menu/reset/all
#
# @within			uhc:pre_game/menu/reset/*
#
#
# @description		Réinitialisation de l'inventaire
#

## Modes de jeu
function #plugin:pre_game/menu/reset

## Général
scoreboard players set @s uhc.menu.default_language 0
scoreboard players set @s uhc.menu.language 0
scoreboard players set @s uhc.menu.gamemode.main 0
scoreboard players set @s uhc.menu.gamemode.bhc 0
tag @s remove uhc.menu.lobby
scoreboard players set @s uhc.menu.scenario.main 0
scoreboard players set @s uhc.menu.scenario.blood_diamond 0
tag @s remove uhc.menu.scenario.enchanting_setup
scoreboard players set @s uhc.menu.scenario.ores_limit 0
scoreboard players set @s uhc.menu.scenario.restricted_area 0
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
