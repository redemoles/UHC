
#> uhc:in_game/entity/arrow/
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Réduction des dégâts des flèches
#

execute as @s[tag=!uhc.checked] run function uhc:in_game/entity/arrow/basic
#execute if score #mls uhc.gamemode matches 1 as @s[nbt={weapon:{components:{"minecraft:item_name":[{"color":"#FFFFFF","italic":false,"text":"Arc Tridimensionnel"}]}}}] run function mls:entity/arrow/
