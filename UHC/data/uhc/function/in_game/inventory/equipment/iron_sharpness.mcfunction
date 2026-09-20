
#> uhc:in_game/inventory/equipment/iron_sharpness
#
# @within			uhc:in_game/player/tick
#
#
# @description		
#

$execute if items entity @s weapon.mainhand minecraft:iron_sword[minecraft:enchantments~[{"enchantments":"minecraft:sharpness","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"type":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(max)}}
$execute if items entity @s weapon.offhand minecraft:iron_sword[minecraft:enchantments~[{"enchantments":"minecraft:sharpness","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.offhand {"type":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(max)}}
