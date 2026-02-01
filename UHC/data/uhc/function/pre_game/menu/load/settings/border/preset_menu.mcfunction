
#> uhc:pre_game/menu/load/settings/border/preset_menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players set @s[tag=uhc.host] uhc.menu.settings 5
scoreboard players set @s uhc.menu.settings.lives 0
scoreboard players set @s uhc.menu.settings.pve 0
scoreboard players set @s uhc.menu.settings.pvp 0
scoreboard players set @s uhc.menu.settings.border 11
scoreboard players set @s uhc.menu.settings.inventory 0
scoreboard players set @s uhc.menu.settings.team 0
scoreboard players set @s uhc.menu.settings.misc 0

function uhc:pre_game/menu/load/settings/menu
