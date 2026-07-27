
#> uhc:pre_game/menu/selected/settings/inventory/items_authorization/lava_bucket
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #lava_bucket uhc.data.setup 1
execute if score #lava_bucket uhc.data.setup matches 2 run scoreboard players set #lava_bucket uhc.data.setup 0
