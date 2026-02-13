
#> uhc:start/item_starter
#
# @within			uhc:start/setup_players
#
#
# @description		Items de démarrage
#

$give @a[tag=uhc.player] $(id) $(count)

# Boucle tant qu'il reste un item dans l'inventaire
data remove storage uhc:temp Item_starter[0]
data modify storage uhc:temp Item_starter[0].components merge value {}
execute if data storage uhc:temp Item_starter[0] run function uhc:start/item_starter with storage uhc:temp Item_starter[0]
