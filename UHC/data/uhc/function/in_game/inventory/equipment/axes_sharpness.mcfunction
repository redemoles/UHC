
#> uhc:in_game/inventory/equipment/axes_sharpness
#
# @within			uhc:in_game/player/tick
#
#
# @description		
#

execute if entity @s[predicate=!uhc:item_hand/axes] run return fail
$execute if items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:enchantments~[{"enchantments":"minecraft:sharpness","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"type":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:stone_axe[minecraft:enchantments~[{"enchantments":"minecraft:sharpness","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"type":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:copper_axe[minecraft:enchantments~[{"enchantments":"minecraft:sharpness","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"type":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:iron_axe[minecraft:enchantments~[{"enchantments":"minecraft:sharpness","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"type":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:golden_axe[minecraft:enchantments~[{"enchantments":"minecraft:sharpness","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"type":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:diamond_axe[minecraft:enchantments~[{"enchantments":"minecraft:sharpness","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"type":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:netherite_axe[minecraft:enchantments~[{"enchantments":"minecraft:sharpness","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"type":"minecraft:set_enchantments","enchantments":{"minecraft:sharpness":$(max)}}
