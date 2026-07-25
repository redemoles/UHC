
#> bhc:in_game/timer/countdown/bingo_a_end
#
# @within			bhc:in_game/timer/countdown/text_tellraw
#
#
# @description		Annonce décompte
#

execute if score #bhc bhc.scenario matches 51 run return run function uhc:translation/bhc/51_april_fool_26/bingo_a_countdown_end
execute unless score #bhc bhc.scenario matches 51 run function uhc:translation/bhc/00_vanilla/bingo_a_countdown_end
