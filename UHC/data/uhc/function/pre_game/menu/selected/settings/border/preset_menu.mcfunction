
#> uhc:pre_game/menu/selected/settings/border/preset_menu
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players set @s[tag=uhc.host] uhc.menu.settings 5
scoreboard players set @s uhc.menu.settings.pve 0
scoreboard players set @s uhc.menu.settings.pvp 0
scoreboard players set @s uhc.menu.settings.border 1
scoreboard players set @s uhc.menu.settings.inventory 0
scoreboard players set @s uhc.menu.settings.team 0
scoreboard players set @s uhc.menu.settings.potion 0
scoreboard players set @s uhc.menu.settings.misc 0

function uhc:pre_game/menu/load/settings/menu
