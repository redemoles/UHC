
#> uhc:pre_game/menu/load/settings/inventory/items_authorization/cobweb/
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #cobweb uhc.data.setup matches ..1 run scoreboard players set @s uhc.menu.settings 2
execute if score #cobweb uhc.data.setup matches 2.. run scoreboard players set @s uhc.menu.settings 6
scoreboard players set @s uhc.menu.settings.inventory 32
