
#> bhc:in_game/scenario/02/target/death/killer/is_targeted
#
# @within			bhc:in_game/scenario/02/target/death/killer/
#
#
# @description		Récompense si le tueur est l'assassin 
#

function uhc:translation/bhc/02_viking_era/target_killer_is_targeted
give @s minecraft:golden_apple 2
scoreboard players set #points bhc.kills.score.inv 5
