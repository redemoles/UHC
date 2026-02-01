
#> uhc:pre_game/menu/load/settings/border/shrink_choice/apply_change
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#


execute if score @s uhc.menu.settings.border matches 10..29 run return run scoreboard players add @s uhc.menu.settings.border 10
execute if score @s uhc.menu.settings.border matches 30..39 run return run scoreboard players remove @s uhc.menu.settings.border 20
