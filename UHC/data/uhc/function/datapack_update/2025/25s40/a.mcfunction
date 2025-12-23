
#> uhc:datapack_update/2025/25s40/a
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s40a
#

data modify storage uhc:settings item.enchanted_golden_apple set value {item: "enchanted_golden_apple"}
data modify storage uhc:settings item.totem_of_undying set value {item: "totem_of_undying"}
scoreboard players set #milk_bucket uhc.data.setup 1

scoreboard players set #update uhc.data.update 25402
