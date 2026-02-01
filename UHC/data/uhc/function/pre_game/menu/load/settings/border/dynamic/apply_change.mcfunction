
#> uhc:pre_game/menu/load/settings/border/dynamic/apply_change
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute unless score #shrink_dynamic uhc.data.setup matches 1 if score @s uhc.menu.settings.border matches 10..19 run return run scoreboard players set #shrink_dynamic uhc.data.setup 1
execute unless score #shrink_dynamic uhc.data.setup matches 2 if score @s uhc.menu.settings.border matches 20..29 run return run scoreboard players set #shrink_dynamic uhc.data.setup 2
execute unless score #shrink_dynamic uhc.data.setup matches 3 if score @s uhc.menu.settings.border matches 30..39 run return run scoreboard players set #shrink_dynamic uhc.data.setup 3
scoreboard players set #shrink_dynamic uhc.data.setup 0
