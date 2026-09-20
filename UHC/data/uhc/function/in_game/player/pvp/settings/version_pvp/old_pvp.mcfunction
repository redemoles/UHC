
#> uhc:in_game/player/pvp/settings/version_pvp/old_pvp
#
# @within			uhc:in_game/player/tick
#
#
# @description		Ancien PvP
#

tag @s add uhc.version_pvp.1_8

# Vitesse d'attaque et recul
attribute @s minecraft:attack_knockback modifier add uhc.pvp_1_8 0.55 add_value
attribute @s minecraft:attack_speed modifier add uhc.pvp_1_8 1024 add_value

execute if entity @s[predicate=!uhc:item_hand/swords,predicate=!uhc:item_hand/axes] run return fail

# Ajout possibilité de bloquer avec une épée
execute if entity @s[predicate=uhc:item_hand/swords,predicate=uhc:item_hand/any_item] run item modify entity @s weapon.mainhand [{"type":"minecraft:set_components","components":{"minecraft:consumable":{"consume_seconds":1000000,"animation":"block","has_consume_particles":false}}}]
execute if entity @s[predicate=uhc:item_hand/swords,predicate=!uhc:item_hand/any_item] run item modify entity @s weapon.mainhand [{"type":"minecraft:set_components","components":{"!minecraft:consumable":{}}}]

# Dégâts des haches anciennes versions
execute if entity @s[predicate=uhc:item_hand/wooden_axe] run item modify entity @s weapon.mainhand [{"type":"minecraft:set_components","components": {"attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{"type":"minecraft:attack_speed","amount":-3.200000047683716,"id":"minecraft:base_attack_speed","operation":"add_value","slot":"mainhand"}]}}]
execute if entity @s[predicate=uhc:item_hand/stone_axe] run item modify entity @s weapon.mainhand [{"type":"minecraft:set_components","components": {"attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{"type":"minecraft:attack_speed","amount":-3.200000047683716,"id":"minecraft:base_attack_speed","operation":"add_value","slot":"mainhand"}]}}]
execute if entity @s[predicate=uhc:item_hand/iron_axe] run item modify entity @s weapon.mainhand [{"type":"minecraft:set_components","components": {"attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{"type":"minecraft:attack_speed","amount":-3.0999999046325684,"id":"minecraft:base_attack_speed","operation":"add_value","slot":"mainhand"}]}}]
execute if entity @s[predicate=uhc:item_hand/golden_axe] run item modify entity @s weapon.mainhand [{"type":"minecraft:set_components","components": {"attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{"type":"minecraft:attack_speed","amount":-3,"id":"minecraft:base_attack_speed","operation":"add_value","slot":"mainhand"}]}}]
execute if entity @s[predicate=uhc:item_hand/diamond_axe] run item modify entity @s weapon.mainhand [{"type":"minecraft:set_components","components": {"attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:5,operation:"add_value",slot:"mainhand"},{"type":"minecraft:attack_speed","amount":-3,"id":"minecraft:base_attack_speed","operation":"add_value","slot":"mainhand"}]}}]
execute if entity @s[predicate=uhc:item_hand/netherite_axe] run item modify entity @s weapon.mainhand [{"type":"minecraft:set_components","components": {"attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:6,operation:"add_value",slot:"mainhand"},{"type":"minecraft:attack_speed","amount":-3,"id":"minecraft:base_attack_speed","operation":"add_value","slot":"mainhand"}]}}]
