
#> uhc:in_game/entity/arrow/basic
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Réduction des dégâts des flèches
#

execute store result entity @s damage double 0.65 run data get entity @s damage
tag @s add uhc.checked
