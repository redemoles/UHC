
#> uhc:in_game/inventory/equipment/diamond_armor
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		
#

scoreboard players set #diamond_armor uhc.data.temp 0
scoreboard players set #netherite_armor uhc.data.temp 0

execute if items entity @s armor.head minecraft:diamond_helmet run scoreboard players add #diamond_armor uhc.data.temp 1
execute if items entity @s armor.chest minecraft:diamond_chestplate run scoreboard players add #diamond_armor uhc.data.temp 1
execute if items entity @s armor.legs minecraft:diamond_leggings run scoreboard players add #diamond_armor uhc.data.temp 1
execute if items entity @s armor.feet minecraft:diamond_boots run scoreboard players add #diamond_armor uhc.data.temp 1

execute if items entity @s armor.head minecraft:netherite_helmet run function uhc:in_game/inventory/equipment/netherite_armor
execute if items entity @s armor.chest minecraft:netherite_chestplate run function uhc:in_game/inventory/equipment/netherite_armor
execute if items entity @s armor.legs minecraft:netherite_leggings run function uhc:in_game/inventory/equipment/netherite_armor
execute if items entity @s armor.feet minecraft:netherite_boots run function uhc:in_game/inventory/equipment/netherite_armor

execute if entity @s[tag=!uhc.armor.malus] if score #diamond_armor uhc.data.temp > #diamond_armor uhc.data.setup run tag @s add uhc.armor.malus.temp
execute if entity @s[tag=!uhc.armor.malus] if score #netherite_armor uhc.data.temp > #netherite_armor uhc.data.setup run tag @s add uhc.armor.malus.temp
execute if entity @s[tag=uhc.armor.malus] unless score #diamond_armor uhc.data.temp > #diamond_armor uhc.data.setup unless score #netherite_armor uhc.data.temp > #netherite_armor uhc.data.setup run tag @s remove uhc.armor.malus

execute if entity @s[tag=uhc.armor.malus.temp] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.4 0.5 0.5
execute if entity @s[tag=uhc.armor.malus.temp] run function uhc:translation/in_game/equipment_armor_limit
execute if entity @s[tag=uhc.armor.malus.temp] run attribute @s minecraft:movement_speed modifier add uhc.armor.malus -0.3 add_multiplied_base
execute if entity @s[tag=uhc.armor.malus.temp] run attribute @s minecraft:jump_strength modifier add uhc.armor.malus -1.0 add_multiplied_base
execute if entity @s[tag=uhc.armor.malus.temp] run tag @s add uhc.armor.malus
execute if entity @s[tag=uhc.armor.malus.temp] run return run tag @s remove uhc.armor.malus.temp
execute if entity @s[tag=!uhc.armor.malus] run attribute @s minecraft:movement_speed modifier remove uhc.armor.malus
execute if entity @s[tag=!uhc.armor.malus] run attribute @s minecraft:jump_strength modifier remove uhc.armor.malus
