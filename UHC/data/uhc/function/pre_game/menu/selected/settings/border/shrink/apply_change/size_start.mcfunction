
#> uhc:pre_game/menu/selected/settings/border/shrink/apply_change/size_start
#
# @within			uhc:pre_game/menu/selected/settings/border/shrink/main
#
#
# @description		Menu
#

execute if score @s uhc.menu.settings.border matches 10..19 run scoreboard players set @s uhc.menu.settings.border 11
execute unless score #shrink_dynamic uhc.data.setup matches 1..1 if score @s uhc.menu.settings.border matches 20..29 run scoreboard players set @s uhc.menu.settings.border 21
execute unless score #shrink_dynamic uhc.data.setup matches 1..2 if score @s uhc.menu.settings.border matches 30..39 run scoreboard players set @s uhc.menu.settings.border 31
scoreboard players set @s uhc.menu.settings 5
