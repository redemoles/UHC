
#> uhc:pre_game/menu/selected/settings/potion/host
#
# @within			uhc:pre_game/menu/selected/settings/host
# 
#
# @description		Redirection
#

execute unless items entity @s[tag=uhc.host] inventory.10 *[minecraft:custom_data={Tags:"settings_potion_fire_resistance"}] run function uhc:pre_game/menu/load/settings/potion/effect_fire_resistance/apply_change
execute unless items entity @s[tag=uhc.host] inventory.11 *[minecraft:custom_data={Tags:"settings_potion_harming"}] run function uhc:pre_game/menu/load/settings/potion/effect_harming/apply_change
execute unless items entity @s[tag=uhc.host] inventory.12 *[minecraft:custom_data={Tags:"settings_potion_healing"}] run function uhc:pre_game/menu/load/settings/potion/effect_healing/apply_change
execute unless items entity @s[tag=uhc.host] inventory.13 *[minecraft:custom_data={Tags:"settings_potion_poison"}] run function uhc:pre_game/menu/load/settings/potion/effect_poison/apply_change
execute unless items entity @s[tag=uhc.host] inventory.14 *[minecraft:custom_data={Tags:"settings_potion_regeneration"}] run function uhc:pre_game/menu/load/settings/potion/effect_regeneration/apply_change
execute unless items entity @s[tag=uhc.host] inventory.15 *[minecraft:custom_data={Tags:"settings_potion_slowness"}] run function uhc:pre_game/menu/load/settings/potion/effect_slowness/apply_change
execute unless items entity @s[tag=uhc.host] inventory.16 *[minecraft:custom_data={Tags:"settings_potion_speed"}] run function uhc:pre_game/menu/load/settings/potion/effect_speed/apply_change

execute unless items entity @s[tag=uhc.host] inventory.19 *[minecraft:custom_data={Tags:"settings_potion_strength"}] run function uhc:pre_game/menu/load/settings/potion/effect_strength/apply_change
execute unless items entity @s[tag=uhc.host] inventory.20 *[minecraft:custom_data={Tags:"settings_potion_weakness"}] run function uhc:pre_game/menu/load/settings/potion/effect_weakness/apply_change
execute unless items entity @s[tag=uhc.host] inventory.21 *[minecraft:custom_data={Tags:"settings_potion_milk_bucket"}] run function uhc:pre_game/menu/load/settings/potion/milk_bucket/apply_change
execute unless items entity @s[tag=uhc.host] inventory.22 *[minecraft:custom_data={Tags:"settings_potion_level_2"}] run function uhc:pre_game/menu/load/settings/potion/effect_level_2/apply_change
execute unless items entity @s[tag=uhc.host] inventory.23 *[minecraft:custom_data={Tags:"settings_potion_extended"}] run function uhc:pre_game/menu/load/settings/potion/effect_extended/apply_change
execute unless items entity @s[tag=uhc.host] inventory.24 *[minecraft:custom_data={Tags:"settings_potion_compatibility"}] run function uhc:pre_game/menu/load/settings/potion/compatibility/apply_change
