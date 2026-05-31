
#> uhc:start/item_starter/data
#
# @within			uhc:start/setup/player/when_tp
#
#
# @description		Items de démarrage
#

data modify storage uhc:temp Item_starter set from storage uhc:settings Item_starter
data modify storage uhc:temp Item_starter[0].components merge value {}
execute if data storage uhc:temp Item_starter[0] run function uhc:start/item_starter/give with storage uhc:temp Item_starter[0]
