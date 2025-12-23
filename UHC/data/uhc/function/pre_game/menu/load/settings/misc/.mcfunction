
#> uhc:pre_game/menu/load/settings/misc/
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players set @s[tag=uhc.host] uhc.menu.settings 1
scoreboard players set @s uhc.menu.settings.lives 0
scoreboard players set @s uhc.menu.settings.pve 0
scoreboard players set @s uhc.menu.settings.pvp 0
scoreboard players set @s uhc.menu.settings.border 0
scoreboard players set @s uhc.menu.settings.inventory 0
scoreboard players set @s uhc.menu.settings.misc 1

function uhc:pre_game/menu/load/settings/menu
