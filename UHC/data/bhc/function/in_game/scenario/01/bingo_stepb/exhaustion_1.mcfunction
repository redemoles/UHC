
#> bhc:in_game/scenario/01/bingo_stepb/exhaustion_1
#
# @within			bhc:in_game/scenario/01/bingo_stepb/exhaustion
#
#
# @description		Epuisement des ressources
#

$execute if score #$(namespace)_$(line)_$(column) bhc.case matches -1000.. run scoreboard players operation #$(namespace)_$(line)_$(column) bhc.case -= #temp bhc.case

scoreboard players set #exhausted_send bhc.data.temp 0
$execute if score #$(namespace)_$(line)_$(column) bhc.case matches ..0 run function uhc:translation/bhc/01_gold_rush/bingo_b_exhaustion_square with storage $(namespace) $(line)_$(column)
scoreboard players set #exhausted_send bhc.data.temp 1

$execute if score #$(namespace)_$(line)_$(column) bhc.case matches ..0 run advancement grant @a only $(namespace):$(line)_$(column)
