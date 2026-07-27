
#> uhc:pre_game/menu/selected/language/eng
#
# @within			uhc:pre_game/menu/selected/language/main
#
#
# @description		Français par défaut
#

scoreboard players set #language uhc.player.lang 051407
execute as @a[tag=uhc.host] run function uhc:pre_game/menu/selected/language/default_lang/default
