
#> uhc:in_game/timer/border/team_out/
#
# @within			uhc:in_game/player/death/definitive
#
#
# @description		Réduction de la bordure quand une équipe est éliminée
#

execute if score #team uhc.data.temp.inv matches ..1 run return fail
execute if score #shrink_1_dynamic uhc.data.temp matches 1 run function uhc:in_game/timer/border/shrink/1
execute if score #shrink_2_dynamic uhc.data.temp matches 1 run function uhc:in_game/timer/border/shrink/2
execute if score #shrink_3_dynamic uhc.data.temp matches 1 run function uhc:in_game/timer/border/shrink/3

function uhc:in_game/timer/border/team_out/tellraw_update with storage uhc:temp
