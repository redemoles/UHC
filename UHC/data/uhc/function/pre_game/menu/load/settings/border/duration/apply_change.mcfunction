
#> uhc:pre_game/menu/load/settings/border/duration/apply_change
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute unless score #shrink_dynamic uhc.data.setup matches 1..1 if score @s uhc.menu.settings.border matches 10..19 run scoreboard players set @s uhc.menu.settings.border 14
execute unless score #shrink_dynamic uhc.data.setup matches 1..2 if score @s uhc.menu.settings.border matches 20..29 run scoreboard players set @s uhc.menu.settings.border 24
execute unless score #shrink_dynamic uhc.data.setup matches 1..3 if score @s uhc.menu.settings.border matches 30..39 run scoreboard players set @s uhc.menu.settings.border 34
scoreboard players set @s uhc.menu.settings 3
