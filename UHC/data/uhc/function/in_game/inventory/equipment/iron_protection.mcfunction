
#> uhc:in_game/inventory/equipment/iron_protection
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		
#

$execute if items entity @s armor.head minecraft:iron_helmet[minecraft:enchantments~[{"enchantments":"minecraft:protection","levels":{"min":$(max_plus_1)}}]] run item modify entity @s armor.head {"type":"minecraft:set_enchantments","enchantments":{"minecraft:protection":$(max)}}
$execute if items entity @s armor.chest minecraft:iron_chestplate[minecraft:enchantments~[{"enchantments":"minecraft:protection","levels":{"min":$(max_plus_1)}}]] run item modify entity @s armor.chest {"type":"minecraft:set_enchantments","enchantments":{"minecraft:protection":$(max)}}
$execute if items entity @s armor.legs minecraft:iron_leggings[minecraft:enchantments~[{"enchantments":"minecraft:protection","levels":{"min":$(max_plus_1)}}]] run item modify entity @s armor.legs {"type":"minecraft:set_enchantments","enchantments":{"minecraft:protection":$(max)}}
$execute if items entity @s armor.feet minecraft:iron_boots[minecraft:enchantments~[{"enchantments":"minecraft:protection","levels":{"min":$(max_plus_1)}}]] run item modify entity @s armor.feet {"type":"minecraft:set_enchantments","enchantments":{"minecraft:protection":$(max)}}
