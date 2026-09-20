
#> uhc:in_game/inventory/equipment/bow_power
#
# @within			uhc:in_game/player/tick
#
#
# @description		
#

$execute if items entity @s weapon.mainhand minecraft:bow[minecraft:enchantments~[{"enchantments":"minecraft:power","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"type":"minecraft:set_enchantments","enchantments":{"minecraft:power":$(max)}}
$execute if items entity @s weapon.offhand minecraft:bow[minecraft:enchantments~[{"enchantments":"minecraft:power","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.offhand {"type":"minecraft:set_enchantments","enchantments":{"minecraft:power":$(max)}}
