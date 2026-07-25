
#> uhc:pre_game/menu/selection/language/fra
#
# @within			uhc:pre_game/menu/selection/language/main
#
#
# @description		Français par défaut
#

scoreboard players set #language uhc.player.lang 061801
execute if score @s uhc.player.lang matches 1.. run return run function uhc:pre_game/menu/selection/language/default_lang/default
execute unless score @s uhc.player.lang matches 1.. as @a[tag=uhc.host] run function uhc:pre_game/menu/selection/language/default_lang/default
