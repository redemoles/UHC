
#> uhc:pre_game/menu/load/settings/pvp/no_clean/
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players set @s uhc.menu.settings 2
execute if score @s uhc.menu.settings.pvp matches 2 run scoreboard players add #reward_kill_absorption uhc.data.setup 1
execute if score @s uhc.menu.settings.pvp matches 2 if score #reward_kill_absorption uhc.data.setup matches 2 run scoreboard players set #reward_kill_absorption uhc.data.setup 0
execute if score @s uhc.menu.settings.pvp matches 41 run scoreboard players add #reward_kill_absorption uhc.data.setup 1
execute if score @s uhc.menu.settings.pvp matches 41 if score #reward_kill_absorption uhc.data.setup matches 2 run scoreboard players set #reward_kill_absorption uhc.data.setup 0
execute if score @s uhc.menu.settings.pvp matches ..10 run scoreboard players set @s uhc.menu.settings.pvp 2
execute if score @s uhc.menu.settings.pvp matches 11.. run scoreboard players set @s uhc.menu.settings.pvp 41
