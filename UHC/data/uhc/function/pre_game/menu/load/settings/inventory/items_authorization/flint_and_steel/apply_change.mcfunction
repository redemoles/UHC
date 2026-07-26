
#> uhc:pre_game/menu/load/settings/inventory/items_authorization/flint_and_steel/apply_change
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #flint_and_steel uhc.data.setup 1
execute if score #flint_and_steel uhc.data.setup matches 2 run scoreboard players set #flint_and_steel uhc.data.setup 0
