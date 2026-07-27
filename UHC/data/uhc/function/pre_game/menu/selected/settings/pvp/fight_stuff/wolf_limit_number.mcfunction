
#> uhc:pre_game/menu/selected/settings/pvp/fight_stuff/wolf_limit_number
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players set @s uhc.menu.settings 3
execute if score @s uhc.menu.settings.pvp matches 13 run scoreboard players add #wolf_limit uhc.data.setup 1
execute if score @s uhc.menu.settings.pvp matches 13 if score #wolf_limit uhc.data.setup matches 2 run scoreboard players set #wolf_limit uhc.data.setup 0
scoreboard players set @s uhc.menu.settings.pvp 13
