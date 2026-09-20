
#> uhc:pre_game/menu/selected/settings/inventory/items_authorization/cobweb/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute store result storage uhc:settings menu.cobweb_text int 1 run scoreboard players get #cobweb uhc.data.setup
execute unless score #cobweb uhc.data.setup matches 1..64 store result storage uhc:settings menu.cobweb_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #cobweb uhc.data.setup matches 1..64 store result storage uhc:settings menu.cobweb_count int 1 run scoreboard players get #cobweb uhc.data.setup

execute store result storage uhc:settings menu.diamond_armor_text int 1 run scoreboard players get #diamond_armor uhc.data.setup
execute unless score #diamond_armor uhc.data.setup matches 1..4 store result storage uhc:settings menu.diamond_armor_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #diamond_armor uhc.data.setup matches 1..4 store result storage uhc:settings menu.diamond_armor_count int 1 run scoreboard players get #diamond_armor uhc.data.setup

execute store result storage uhc:settings menu.netherite_armor_text int 1 run scoreboard players get #netherite_armor uhc.data.setup
execute unless score #netherite_armor uhc.data.setup matches 1..4 store result storage uhc:settings menu.netherite_armor_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #netherite_armor uhc.data.setup matches 1..4 store result storage uhc:settings menu.netherite_armor_count int 1 run scoreboard players get #netherite_armor uhc.data.setup
