
#> uhc:in_game/scenario/bookception/kill
#
# @within			uhc:in_game/player/death/location/item_drop/main
#
#
# @description		
#

# Enchantement
execute store result score #random uhc.scenario.bookception run random value 1..19

# Epee
execute if score #random uhc.scenario.bookception matches 1 run return run function uhc:in_game/scenario/bookception/enchantments/sword_spear/sharpness
execute if score #random uhc.scenario.bookception matches 2 run return run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:knockback":1}}}}
execute if score #random uhc.scenario.bookception matches 3 run return run function uhc:in_game/scenario/bookception/enchantments/sword_spear/looting
execute if score #random uhc.scenario.bookception matches 4 run return run function uhc:in_game/scenario/bookception/enchantments/sword_spear/lunge

# Arc
execute if score #random uhc.scenario.bookception matches 5 run return run function uhc:in_game/scenario/bookception/enchantments/bow/power
execute if score #random uhc.scenario.bookception matches 6 run return run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:punch":1}}}}
execute if score #random uhc.scenario.bookception matches 7 run return run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:infinity":1}}}}

# Arbalète
execute if score #random uhc.scenario.bookception matches 8 run return run function uhc:in_game/scenario/bookception/enchantments/crossbow/piercing
execute if score #random uhc.scenario.bookception matches 9 run return run function uhc:in_game/scenario/bookception/enchantments/crossbow/quick_charge

# Outils
execute if score #random uhc.scenario.bookception matches 10 run return run function uhc:in_game/scenario/bookception/enchantments/tools/efficiency
execute if score #random uhc.scenario.bookception matches 11 run return run function uhc:in_game/scenario/bookception/enchantments/tools/fortune

# Armure
execute if score #random uhc.scenario.bookception matches 12 run return run function uhc:in_game/scenario/bookception/enchantments/armor/protection
execute if score #random uhc.scenario.bookception matches 13 run return run function uhc:in_game/scenario/bookception/enchantments/armor/projectile_protection
execute if score #random uhc.scenario.bookception matches 14 run return run function uhc:in_game/scenario/bookception/enchantments/armor/aqua_affinity_respiration
execute if score #random uhc.scenario.bookception matches 15 run return run function uhc:in_game/scenario/bookception/enchantments/armor/depth_strider
execute if score #random uhc.scenario.bookception matches 16 run return run function uhc:in_game/scenario/bookception/enchantments/armor/feather_falling
execute if score #random uhc.scenario.bookception matches 17 run return run function uhc:in_game/scenario/bookception/enchantments/armor/swift_sneak
execute if score #random uhc.scenario.bookception matches 18 run return run function uhc:in_game/scenario/bookception/enchantments/armor/thorns

# Tout
execute if score #random uhc.scenario.bookception matches 19 run return run function uhc:in_game/scenario/bookception/enchantments/all/unbreaking_mending
