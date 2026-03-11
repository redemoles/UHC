
#> uhc:datapack_update/2026/26_3/0
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.3.0
#

scoreboard objectives add uhc.player.death.cancel_additional_item dummy
scoreboard objectives add uhc.player.death.armor_additional_item dummy
scoreboard players set #item_additional_armor uhc.data.setup 2

scoreboard players set #update uhc.data.update 26030
