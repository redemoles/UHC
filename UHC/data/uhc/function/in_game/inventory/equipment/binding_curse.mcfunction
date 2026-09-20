
#> uhc:in_game/inventory/equipment/binding_curse
#
# @within			uhc:in_game/player/tick
#
#
# @description		
#

execute if items entity @s armor.head *[minecraft:enchantments~[{"enchantments":"minecraft:binding_curse","levels":{"min":1}}]] run item modify entity @s armor.head {"type":"minecraft:set_enchantments","enchantments":{"minecraft:binding_curse":0}}
execute if items entity @s armor.chest *[minecraft:enchantments~[{"enchantments":"minecraft:binding_curse","levels":{"min":1}}]] run item modify entity @s armor.chest {"type":"minecraft:set_enchantments","enchantments":{"minecraft:binding_curse":0}}
execute if items entity @s armor.legs *[minecraft:enchantments~[{"enchantments":"minecraft:binding_curse","levels":{"min":1}}]] run item modify entity @s armor.legs {"type":"minecraft:set_enchantments","enchantments":{"minecraft:binding_curse":0}}
execute if items entity @s armor.feet *[minecraft:enchantments~[{"enchantments":"minecraft:binding_curse","levels":{"min":1}}]] run item modify entity @s armor.feet {"type":"minecraft:set_enchantments","enchantments":{"minecraft:binding_curse":0}}
