
#> uhc:pre_game/menu/selection/language/default_lang/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"lang_fra"}] run return run function uhc:pre_game/menu/selection/language/default_lang/fra
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"lang_eng"}] run return run function uhc:pre_game/menu/selection/language/default_lang/eng

execute if score #language uhc.player.lang matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/language/menu
function uhc:pre_game/menu/load/language/default_lang
