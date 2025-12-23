
#> uhc:in_game/player/death/inventory/bhc/item_randomizer
#
# @within			uhc:in_game/player/death/inventory/item_additional
#
#
# @description		
#

execute store result score #armor_4 bhc.data.temp run random value 1..4
execute store result score #armor_3 bhc.data.temp run random value 1..3

data modify storage uhc:temp Item_randomizer set value []

data modify storage uhc:temp Item_randomizer append from entity @s equipment.head
data modify storage uhc:temp Item_randomizer append from entity @s equipment.chest
data modify storage uhc:temp Item_randomizer append from entity @s equipment.legs
data modify storage uhc:temp Item_randomizer append from entity @s equipment.feet

execute if data storage uhc:temp Item_randomizer[3] if score #armor_4 bhc.data.temp matches 1 run data remove storage uhc:temp Item_randomizer[0]
execute if data storage uhc:temp Item_randomizer[3] if score #armor_4 bhc.data.temp matches 2 run data remove storage uhc:temp Item_randomizer[1]
execute if data storage uhc:temp Item_randomizer[3] if score #armor_4 bhc.data.temp matches 3 run data remove storage uhc:temp Item_randomizer[2]
execute if data storage uhc:temp Item_randomizer[3] if score #armor_4 bhc.data.temp matches 4 run data remove storage uhc:temp Item_randomizer[3]

execute if data storage uhc:temp Item_randomizer[2] if score #armor_3 bhc.data.temp matches 1 run data remove storage uhc:temp Item_randomizer[0]
execute if data storage uhc:temp Item_randomizer[2] if score #armor_3 bhc.data.temp matches 2 run data remove storage uhc:temp Item_randomizer[1]
execute if data storage uhc:temp Item_randomizer[2] if score #armor_3 bhc.data.temp matches 3 run data remove storage uhc:temp Item_randomizer[2]

execute if data storage uhc:temp Item_randomizer[0] run function uhc:in_game/player/death/inventory/bhc/item_drop
