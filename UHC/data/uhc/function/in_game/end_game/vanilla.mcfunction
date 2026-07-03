
#> uhc:in_game/end_game/vanilla
#
# @within			uhc:in_game/end_game/main
#
#
# @description		Vérifie le nombre de gagnant si la fin de partie a été forcé
#

execute as @p[tag=uhc.player,tag=!uhc.spec] if entity @s[tag=!uhc.temp] run function uhc:in_game/end_game/if_several_winners

function uhc:translation/in_game/end_game_top_text
execute as @p[tag=uhc.temp] run function uhc:in_game/end_game/several_winners
tellraw @a [{"text":"\n--------------------------------","color":"#3F3F3F"}]
