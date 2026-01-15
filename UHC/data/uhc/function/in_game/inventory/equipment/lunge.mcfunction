
#> uhc:in_game/inventory/equipment/lunge
#
# @within			uhc:in_game/player/tick
#
#
# @description		
#

execute if entity @s[predicate=!uhc:item_hand/spears] run return fail
$execute if items entity @s weapon.mainhand minecraft:wooden_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:stone_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:copper_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:iron_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:golden_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:diamond_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.mainhand minecraft:netherite_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.mainhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}

$execute if items entity @s weapon.offhand minecraft:wooden_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.offhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.offhand minecraft:stone_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.offhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.offhand minecraft:copper_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.offhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.offhand minecraft:iron_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.offhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.offhand minecraft:golden_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.offhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.offhand minecraft:diamond_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.offhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
$execute if items entity @s weapon.offhand minecraft:netherite_spear[minecraft:enchantments~[{"enchantments":"minecraft:lunge","levels":{"min":$(max_plus_1)}}]] run item modify entity @s weapon.offhand {"function":"minecraft:set_enchantments","enchantments":{"minecraft:lunge":$(max)}}
