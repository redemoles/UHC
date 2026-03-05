
#> uhc:in_game/player/death/location/item_drop/armor/randomizer
#
# @within			uhc:in_game/player/death/location/item_drop/main
#
#
# @description		
#

execute if score #item_additional_armor uhc.data.setup matches ..3 store result score #armor_4 uhc.data.temp run random value 1..4
execute if score #item_additional_armor uhc.data.setup matches ..2 store result score #armor_3 uhc.data.temp run random value 1..3
execute if score #item_additional_armor uhc.data.setup matches 1 store result score #armor_2 uhc.data.temp run random value 1..2

data modify storage uhc:temp Item_randomizer set value []
data modify storage uhc:temp Item_randomizer append from entity @s equipment.head
data modify storage uhc:temp Item_randomizer append from entity @s equipment.chest
data modify storage uhc:temp Item_randomizer append from entity @s equipment.legs
data modify storage uhc:temp Item_randomizer append from entity @s equipment.feet

execute if data storage uhc:temp Item_randomizer[3] if score #armor_4 uhc.data.temp matches 1 run data remove storage uhc:temp Item_randomizer[0]
execute if data storage uhc:temp Item_randomizer[3] if score #armor_4 uhc.data.temp matches 2 run data remove storage uhc:temp Item_randomizer[1]
execute if data storage uhc:temp Item_randomizer[3] if score #armor_4 uhc.data.temp matches 3 run data remove storage uhc:temp Item_randomizer[2]
execute if data storage uhc:temp Item_randomizer[3] if score #armor_4 uhc.data.temp matches 4 run data remove storage uhc:temp Item_randomizer[3]

execute if data storage uhc:temp Item_randomizer[2] if score #armor_3 uhc.data.temp matches 1 run data remove storage uhc:temp Item_randomizer[0]
execute if data storage uhc:temp Item_randomizer[2] if score #armor_3 uhc.data.temp matches 2 run data remove storage uhc:temp Item_randomizer[1]
execute if data storage uhc:temp Item_randomizer[2] if score #armor_3 uhc.data.temp matches 3 run data remove storage uhc:temp Item_randomizer[2]

execute if data storage uhc:temp Item_randomizer[1] if score #armor_2 uhc.data.temp matches 1 run data remove storage uhc:temp Item_randomizer[0]
execute if data storage uhc:temp Item_randomizer[1] if score #armor_2 uhc.data.temp matches 2 run data remove storage uhc:temp Item_randomizer[1]

execute if data storage uhc:temp Item_randomizer[0] run function uhc:in_game/player/death/location/item_drop/armor/drop
