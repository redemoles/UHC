
#> uhc:pre_game/menu/selected/settings/potion/host
#
# @within			uhc:pre_game/menu/selected/settings/host
# 
#
# @description		Redirection
#

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_potion_fire_resistance"}] run function uhc:pre_game/menu/selected/settings/potion/effect_fire_resistance
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_potion_harming"}] run function uhc:pre_game/menu/selected/settings/potion/effect_harming
execute unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_potion_healing"}] run function uhc:pre_game/menu/selected/settings/potion/effect_healing
execute unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_potion_poison"}] run function uhc:pre_game/menu/selected/settings/potion/effect_poison
execute unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"settings_potion_regeneration"}] run function uhc:pre_game/menu/selected/settings/potion/effect_regeneration
execute unless items entity @s inventory.15 *[minecraft:custom_data={Tags:"settings_potion_slowness"}] run function uhc:pre_game/menu/selected/settings/potion/effect_slowness
execute unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"settings_potion_speed"}] run function uhc:pre_game/menu/selected/settings/potion/effect_speed

execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"settings_potion_strength"}] run function uhc:pre_game/menu/selected/settings/potion/effect_strength
execute unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"settings_potion_weakness"}] run function uhc:pre_game/menu/selected/settings/potion/effect_weakness
execute unless items entity @s inventory.21 *[minecraft:custom_data={Tags:"settings_potion_milk_bucket"}] run function uhc:pre_game/menu/selected/settings/potion/milk_bucket
execute unless items entity @s inventory.22 *[minecraft:custom_data={Tags:"settings_potion_level_2"}] run function uhc:pre_game/menu/selected/settings/potion/effect_level_2
execute unless items entity @s inventory.23 *[minecraft:custom_data={Tags:"settings_potion_extended"}] run function uhc:pre_game/menu/selected/settings/potion/effect_extended
execute unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"settings_potion_compatibility"}] run function uhc:pre_game/menu/selected/settings/potion/compatibility
