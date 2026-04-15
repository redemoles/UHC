
#> bhc:timer/countdown/bingo_b_end
#
# @within			bhc:timer/countdown/text_tellraw
#
#
# @description		Annonce décompte
#

execute if score #bhc bhc.scenario matches 00 run function uhc:translation/bhc/00_vanilla/bingo_b_countdown_end
execute if score #bhc bhc.scenario matches 01 run function uhc:translation/bhc/01_gold_rush/bingo_b_countdown_end
execute if score #bhc bhc.scenario matches 02 run function uhc:translation/bhc/02_viking_era/bingo_b_countdown_end
execute if score #bhc bhc.scenario matches 51 run function uhc:translation/bhc/51_april_fool_26/bingo_b_countdown_end
execute if score #bhc bhc.scenario matches 92 run function uhc:translation/bhc/00_vanilla/bingo_b_countdown_end
