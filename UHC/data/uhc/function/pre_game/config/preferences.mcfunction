
#> uhc:pre_game/config/preferences
#
# @within			uhc:pre_game/config/data_setup
#
#
# @description		Initialisation du datapack
#

## Life / Vie
# Timer when 1 life delete.
scoreboard players set #1_life_left uhc.data.setup 30
scoreboard players set #2_lives_left uhc.data.setup 30
scoreboard players set #3_lives_left uhc.data.setup 0
scoreboard players set #lives uhc.data.setup 1
scoreboard players set #start_in_sky uhc.data.setup 0

## PvE
scoreboard players set #pve uhc.data.setup 2
scoreboard players set #absorption uhc.data.setup 2
scoreboard players set #hp_tab uhc.data.setup 1
scoreboard players set #hp_name uhc.data.setup 1
scoreboard players set #hp_100 uhc.data.setup 1

## PvP
scoreboard players set #pvp uhc.data.setup 40
scoreboard players set #version_pvp uhc.data.setup 0
scoreboard players set #shield_percent uhc.data.setup 50
scoreboard players set #shield uhc.data.setup 168
scoreboard players set #horse_limit uhc.data.setup 1
scoreboard players set #wolf_armor uhc.data.setup 1
scoreboard players set #wolf_limit uhc.data.setup 1
scoreboard players set #wolf_count uhc.data.setup 1
scoreboard players set #reward_kill_health uhc.data.setup 0
scoreboard players set #reward_kill_absorption uhc.data.setup 0
execute store result storage uhc:settings reward_kill.health int 1 run scoreboard players get #reward_kill_health uhc.data.setup
scoreboard players set #friendly_fire uhc.data.setup 1
scoreboard players set #tracker_allies uhc.data.setup 0

scoreboard players set #effect_fire_resistance uhc.data.setup 1
scoreboard players set #effect_harming uhc.data.setup 1
scoreboard players set #effect_healing uhc.data.setup 1
scoreboard players set #effect_poison uhc.data.setup 1
scoreboard players set #effect_regeneration uhc.data.setup 1
scoreboard players set #effect_slowness uhc.data.setup 1
scoreboard players set #effect_speed uhc.data.setup 1
scoreboard players set #effect_strength uhc.data.setup 0
scoreboard players set #effect_weakness uhc.data.setup 1

scoreboard players set #milk_bucket uhc.data.setup 1
scoreboard players set #effect_compatibility_speed_strength uhc.data.setup 0
scoreboard players set #effect_level_2 uhc.data.setup 0
scoreboard players set #effect_extended uhc.data.setup 1

## Border / Bordure
scoreboard players set #shrink_1_size_start uhc.data.setup 1000
scoreboard players set #shrink_1_time_left uhc.data.setup 60
scoreboard players set #shrink_1_length uhc.data.setup 20
scoreboard players set #shrink_1_size_end uhc.data.setup 200
scoreboard players set #shrink_2_time_left uhc.data.setup 80
scoreboard players set #shrink_2_length uhc.data.setup 5
scoreboard players set #shrink_2_size_end uhc.data.setup 64
scoreboard players set #shrink_3_time_left uhc.data.setup 100
scoreboard players set #shrink_3_length uhc.data.setup 5
scoreboard players set #shrink_3_size_end uhc.data.setup 32
scoreboard players set #shrink_dynamic uhc.data.setup 0

## Inventory Rules / Règles Inventaire
scoreboard players set #diamond_protection uhc.data.setup 2
scoreboard players set #diamond_sharpness uhc.data.setup 4
scoreboard players set #iron_protection uhc.data.setup 4
scoreboard players set #iron_sharpness uhc.data.setup 4
scoreboard players set #axes_sharpness uhc.data.setup 3
scoreboard players set #bow_power uhc.data.setup 3
scoreboard players set #fire_flame uhc.data.setup 0
scoreboard players set #depth_strider uhc.data.setup 3
scoreboard players set #lunge uhc.data.setup 1

scoreboard players set #cobweb uhc.data.setup 2
scoreboard players set #flint_and_steel uhc.data.setup 1
scoreboard players set #lava_bucket uhc.data.setup 1
scoreboard players set #diamond_armor uhc.data.setup 4
scoreboard players set #netherite_armor uhc.data.setup 1

scoreboard players set #item_additional_armor uhc.data.setup 2

## Miscellaneous / Divers
scoreboard players set #river_solid uhc.data.setup 0

scoreboard players set #map_height_timer uhc.data.setup 80 
scoreboard players set #map_height_tick_above uhc.data.setup 12
scoreboard players set #map_height_tick_below uhc.data.setup 30

## Team settings / Paramètres d'équipe
scoreboard players set #random_team uhc.data.setup 0
scoreboard players set #random_team_pots uhc.data.setup 1
scoreboard players set #random_team_player uhc.data.setup 0
scoreboard players set #random_team_tick uhc.data.setup -1
scoreboard players set #anonyme_team uhc.data.setup 0
scoreboard players set #team_size uhc.data.setup 4

## Additional items / Items additionels
execute unless score #00 uhc.data.numbers matches 0 run data modify storage uhc:settings Item_starter set value [{count: 1, Slot: 0b, id: "minecraft:oak_boat"},{count: 8, Slot: 1b, id: "minecraft:golden_carrot"}]
execute unless score #00 uhc.data.numbers matches 0 run data modify storage uhc:settings Item_ironman set value [{count: 1, Slot: 0b, id: "minecraft:golden_apple"}]
execute unless score #00 uhc.data.numbers matches 0 run data modify storage uhc:settings Item_notch_totem set value [{count: 4, Slot: 0b, id: "minecraft:gold_block"}]
execute unless score #00 uhc.data.numbers matches 0 run data modify storage uhc:settings Item_life_loss set value [{count: 1, Slot: 0b, id: "minecraft:golden_apple"}]
execute unless score #00 uhc.data.numbers matches 0 run data modify storage uhc:settings Item_additional set value [{count: 1, Slot: 0b, id: "minecraft:golden_apple"}]

## Death message / Message de mort
# 0 : Default message / Message par défaut
# 2 : Dead player only / Joueur mort seulement
# 3 : Killer only / Tueur seulement
# 4 : Killer and dead player not revealed / Tueur et joueur mort non révélés
# 5 : No death announcement / Aucune annonce de mort
scoreboard players set #death_message uhc.data.setup 0

## Scenario
# Blood Diamond
scoreboard players set #end_tier_1 uhc.scenario.blood_diamond.tier 8
scoreboard players set #end_tier_2 uhc.scenario.blood_diamond.tier 20
scoreboard players set #tier_2_damage uhc.scenario.blood_diamond.setup 20
scoreboard players set #tier_2_gold_ingot uhc.scenario.blood_diamond.setup 20
scoreboard players set #tier_2_diamond uhc.scenario.blood_diamond.setup 40
scoreboard players set #tier_2_gift uhc.scenario.blood_diamond.setup 20

# Ores Limit
scoreboard players set #gold_limit uhc.scenario.ores_limit.setup 64
scoreboard players set #diamond_limit uhc.scenario.ores_limit.setup 18

# Go To Hell
#> damage_type > 1 = -1 HP every 30 seconds
#> damage_type > 2 = Progrssive HP loss every 30 seconds with reset
#> damage_type > 3 = Progrssive HP loss every 30 seconds without reset
scoreboard players set #go_to_hell uhc.data.setup 60
scoreboard players set #damage_type uhc.scenario.go_to_hell.settings 3

# Sky High
#> damage_type > 1 = -1 HP every 30 seconds
#> damage_type > 2 = Progrssive HP loss every 30 seconds with reset
#> damage_type > 3 = Progrssive HP loss every 30 seconds without reset
scoreboard players set #sky_high uhc.data.setup 60
scoreboard players set #damage_type uhc.scenario.sky_high.settings 3
scoreboard players set #height uhc.scenario.sky_high.settings 150
scoreboard players set #ender_pearl_gift uhc.scenario.sky_high.settings 0
scoreboard players set #ender_pearl_timer uhc.scenario.sky_high.settings 10
