
#> uhc:pre_game/menu/selection/settings/team/preset_menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players set @s[tag=uhc.host] uhc.menu.settings 9
scoreboard players set @s uhc.menu.settings.pve 0
scoreboard players set @s uhc.menu.settings.pvp 0
scoreboard players set @s uhc.menu.settings.border 0
scoreboard players set @s uhc.menu.settings.inventory 0
scoreboard players set @s uhc.menu.settings.team 1
scoreboard players set @s uhc.menu.settings.potion 0
scoreboard players set @s uhc.menu.settings.misc 0

function uhc:pre_game/menu/load/settings/menu
