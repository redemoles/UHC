
#> uhc:in_game/player/lives_remove/compensation_1
#
# @within			uhc:in_game/player/lives_remove/drop_to_*
#
#
# @description		
#

data modify storage uhc:temp Item_life_loss set from storage uhc:settings Item_life_loss
data modify storage uhc:temp Item_life_loss[0].components merge value {}
function uhc:in_game/player/lives_remove/compensation_2 with storage uhc:temp Item_life_loss[0]
