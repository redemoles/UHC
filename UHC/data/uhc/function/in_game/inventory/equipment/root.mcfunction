
#> uhc:in_game/inventory/equipment/root
#
# @within			uhc:in_game/player/tick
#
#
# @description		Vérification des équipements des joueurs
#

# Bouclier
execute if score #shield uhc.data.setup matches 1..335 run function uhc:in_game/inventory/equipment/shield_durability with storage uhc:settings shield
execute if score #shield uhc.data.setup matches 0 run clear @s shield

# Enchantements maximum
function uhc:in_game/inventory/equipment/binding_curse
execute if score #diamond_sharpness uhc.data.setup matches ..4 run function uhc:in_game/inventory/equipment/diamond_sharpness with storage uhc:settings enchantments.diamond_sharpness
execute if score #iron_sharpness uhc.data.setup matches ..4 run function uhc:in_game/inventory/equipment/iron_sharpness with storage uhc:settings enchantments.iron_sharpness
execute if score #axes_sharpness uhc.data.setup matches ..4 run function uhc:in_game/inventory/equipment/axes_sharpness with storage uhc:settings enchantments.axes_sharpness
execute if score #bow_power uhc.data.setup matches ..4 run function uhc:in_game/inventory/equipment/bow_power with storage uhc:settings enchantments.bow_power
execute if score #lunge uhc.data.setup matches ..2 run function uhc:in_game/inventory/equipment/lunge with storage uhc:settings enchantments.lunge
# Fire Aspect / Flame
execute if score #fire_flame uhc.data.setup matches 0 if items entity @s[tag=!uhc.fire_flame] weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:fire_aspect"}]] run item modify entity @s weapon.mainhand {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_aspect":-255},add:true}
execute if score #fire_flame uhc.data.setup matches 0 if items entity @s[tag=!uhc.fire_flame] weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:flame"}]] run item modify entity @s weapon.mainhand {function:"minecraft:set_enchantments",enchantments:{"minecraft:flame":-255},add:true}
execute if score #fire_flame uhc.data.setup matches 0 if items entity @s[tag=!uhc.fire_flame] weapon.offhand *[minecraft:enchantments~[{"enchantments":"minecraft:fire_aspect"}]] run item modify entity @s weapon.offhand {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_aspect":-255},add:true}
execute if score #fire_flame uhc.data.setup matches 0 if items entity @s[tag=!uhc.fire_flame] weapon.offhand *[minecraft:enchantments~[{"enchantments":"minecraft:flame"}]] run item modify entity @s weapon.offhand {function:"minecraft:set_enchantments",enchantments:{"minecraft:flame":-255},add:true}
