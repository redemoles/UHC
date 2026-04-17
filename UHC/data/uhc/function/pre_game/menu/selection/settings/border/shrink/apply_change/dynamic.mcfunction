
#> uhc:pre_game/menu/selection/settings/border/shrink/apply_change/dynamic
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players operation #temp uhc.menu.settings.border = @s uhc.menu.settings.border
scoreboard players operation #temp uhc.menu.settings.border %= #02 uhc.data.numbers
execute unless score #shrink_dynamic uhc.data.setup matches 1 if score @s uhc.menu.settings.border matches 10..19 if score #temp uhc.menu.settings.border matches 0 run scoreboard players remove @s uhc.menu.settings.border 1
execute unless score #shrink_dynamic uhc.data.setup matches 2 if score @s uhc.menu.settings.border matches 20..29 if score #temp uhc.menu.settings.border matches 0 run scoreboard players remove @s uhc.menu.settings.border 1
execute unless score #shrink_dynamic uhc.data.setup matches 3 if score @s uhc.menu.settings.border matches 30..39 if score #temp uhc.menu.settings.border matches 0 run scoreboard players remove @s uhc.menu.settings.border 1
execute unless score #shrink_dynamic uhc.data.setup matches 1 if score @s uhc.menu.settings.border matches 10..19 run return run scoreboard players set #shrink_dynamic uhc.data.setup 1
execute unless score #shrink_dynamic uhc.data.setup matches 2 if score @s uhc.menu.settings.border matches 20..29 run return run scoreboard players set #shrink_dynamic uhc.data.setup 2
execute unless score #shrink_dynamic uhc.data.setup matches 3 if score @s uhc.menu.settings.border matches 30..39 run return run scoreboard players set #shrink_dynamic uhc.data.setup 3
scoreboard players set #shrink_dynamic uhc.data.setup 0
