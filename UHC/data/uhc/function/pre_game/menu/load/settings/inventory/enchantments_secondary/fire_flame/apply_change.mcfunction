
#> uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/fire_flame/apply_change
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#


scoreboard players add #fire_flame uhc.data.setup 1
execute if score #fire_flame uhc.data.setup matches 2 run scoreboard players set #fire_flame uhc.data.setup 0
