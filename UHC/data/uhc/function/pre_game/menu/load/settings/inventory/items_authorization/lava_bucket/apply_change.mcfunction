
#> uhc:pre_game/menu/load/settings/inventory/items_authorization/lava_bucket/apply_change
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #lava_bucket uhc.data.setup 1
execute if score #lava_bucket uhc.data.setup matches 2 run scoreboard players set #lava_bucket uhc.data.setup 0
