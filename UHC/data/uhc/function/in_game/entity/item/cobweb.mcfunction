
#> uhc:in_game/entity/item/cobweb
#
# @within			uhc:in_game/entity/item/
#
#
# @description		Modification des stacks de cobweb
#

execute if score #cobweb uhc.data.setup matches 0 run return run data merge entity @s {Item:{components:{"minecraft:max_stack_size":1}}}
$execute if score #cobweb uhc.data.setup matches 1..32 run data merge entity @s {Item:{components:{"minecraft:max_stack_size":$(cobweb)}}}
