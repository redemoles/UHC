
#> uhc:start/setup_uhc
#
# @within			uhc:start/countdown/start
#
#
# @description		Dernières configurations et démarrage de la partie
#

scoreboard players set #start_delay uhc.data.setup 0

## Mode de jeu
execute if score #bhc uhc.gamemode matches 1 in uhc:lobby run function bhc:start/
execute if score #mls uhc.gamemode matches 1 run function mls:start/
execute if score #nzl uhc.gamemode matches 1 run function nzl:start/

## Scénarios
execute if score #bats uhc.scenario matches 1.. in uhc:lobby run summon minecraft:marker 0 0 0 {Tags:["uhc.scenario.bats"],CustomName:[{"text":"Bat"}]}
execute if score #biome_paranoia uhc.scenario matches 1.. run scoreboard players set #friendly_fire uhc.data.setup 1
execute if score #blood_cycle uhc.scenario matches 1.. in uhc:lobby run summon minecraft:marker 0 0 0 {Tags:["uhc.scenario.blood_cycle"],CustomName:[{"text":"Blood Cycle"}]}
execute if score #blood_diamond uhc.scenario matches 1.. in uhc:lobby run summon minecraft:marker 0 0 0 {Tags:["uhc.scenario.blood_diamond"],CustomName:[{"text":"Blood Diamond"}]}
execute if score #go_to_hell uhc.scenario matches 1.. in uhc:lobby run summon minecraft:marker 0 0 0 {Tags:["uhc.scenario.go_to_hell"],CustomName:[{"text":"Go To Hell"}]}
execute if score #sky_high uhc.scenario matches 1.. in uhc:lobby run summon minecraft:marker 0 0 0 {Tags:["uhc.scenario.sky_high"],CustomName:[{"text":"Sky High"}]}

## Copie de données dans des scoreboards temporaires
# Minuteurs
scoreboard players operation #pve uhc.data.temp = #pve uhc.data.setup
scoreboard players operation #pvp uhc.data.temp = #pvp uhc.data.setup
scoreboard players operation #shrink_1_time_left uhc.data.temp = #shrink_1_time_left uhc.data.setup
scoreboard players operation #shrink_2_time_left uhc.data.temp = #shrink_2_time_left uhc.data.setup
scoreboard players operation #shrink_3_time_left uhc.data.temp = #shrink_3_time_left uhc.data.setup
scoreboard players operation #live_3 uhc.data.temp = #live_3 uhc.data.setup
scoreboard players operation #live_2 uhc.data.temp = #live_2 uhc.data.setup
scoreboard players operation #live_1 uhc.data.temp = #live_1 uhc.data.setup
scoreboard players operation #map_height_timer uhc.data.temp = #map_height_timer uhc.data.setup
scoreboard players operation #go_to_hell uhc.data.temp = #go_to_hell uhc.data.setup
scoreboard players operation #sky_high uhc.data.temp = #sky_high uhc.data.setup

# Divers paramètres
scoreboard players operation #lives uhc.player.lives = #lives uhc.data.setup
scoreboard players operation #diamond_protection uhc.data.temp = #diamond_protection uhc.data.setup
scoreboard players operation #diamond_sharpness uhc.data.temp = #diamond_sharpness uhc.data.setup
scoreboard players operation #iron_protection uhc.data.temp = #iron_protection uhc.data.setup
scoreboard players operation #iron_sharpness uhc.data.temp = #iron_sharpness uhc.data.setup
scoreboard players operation #axes_sharpness uhc.data.temp = #axes_sharpness uhc.data.setup
scoreboard players operation #bow_power uhc.data.temp = #bow_power uhc.data.setup
scoreboard players operation #depth_strider uhc.data.temp = #depth_strider uhc.data.setup
scoreboard players operation #lunge uhc.data.temp = #lunge uhc.data.setup
execute if score #shrink_dynamic uhc.data.setup matches 1 run scoreboard players set #shrink_dynamic uhc.data.temp 1
execute if score #shrink_dynamic uhc.data.setup matches 2 run scoreboard players set #shrink_dynamic uhc.data.temp 2
execute if score #shrink_dynamic uhc.data.setup matches 3 run scoreboard players set #shrink_dynamic uhc.data.temp 3
execute if score #shrink_dynamic uhc.data.temp matches 1 run scoreboard players set #shrink_2_time_left uhc.data.temp -1
execute if score #shrink_dynamic uhc.data.temp matches 1 run scoreboard players set #shrink_3_time_left uhc.data.temp -1
execute if score #shrink_dynamic uhc.data.temp matches 2 run scoreboard players set #shrink_3_time_left uhc.data.temp -1
scoreboard players add #diamond_protection uhc.data.temp 1
scoreboard players add #diamond_sharpness uhc.data.temp 1
scoreboard players add #iron_protection uhc.data.temp 1
scoreboard players add #iron_sharpness uhc.data.temp 1
scoreboard players add #axes_sharpness uhc.data.temp 1
scoreboard players add #bow_power uhc.data.temp 1
scoreboard players add #depth_strider uhc.data.temp 1
scoreboard players add #lunge uhc.data.temp 1

execute store result storage uhc:settings enchantments.diamond_protection.max int 1 run scoreboard players get #diamond_protection uhc.data.setup
execute store result storage uhc:settings enchantments.diamond_protection.max_plus_1 int 1 run scoreboard players get #diamond_protection uhc.data.temp
execute store result storage uhc:settings enchantments.diamond_sharpness.max int 1 run scoreboard players get #diamond_sharpness uhc.data.setup
execute store result storage uhc:settings enchantments.diamond_sharpness.max_plus_1 int 1 run scoreboard players get #diamond_sharpness uhc.data.temp
execute store result storage uhc:settings enchantments.iron_protection.max int 1 run scoreboard players get #iron_protection uhc.data.setup
execute store result storage uhc:settings enchantments.iron_protection.max_plus_1 int 1 run scoreboard players get #iron_protection uhc.data.temp
execute store result storage uhc:settings enchantments.iron_sharpness.max int 1 run scoreboard players get #iron_sharpness uhc.data.setup
execute store result storage uhc:settings enchantments.iron_sharpness.max_plus_1 int 1 run scoreboard players get #iron_sharpness uhc.data.temp
execute store result storage uhc:settings enchantments.axes_sharpness.max int 1 run scoreboard players get #axes_sharpness uhc.data.setup
execute store result storage uhc:settings enchantments.axes_sharpness.max_plus_1 int 1 run scoreboard players get #axes_sharpness uhc.data.temp
execute store result storage uhc:settings enchantments.bow_power.max int 1 run scoreboard players get #bow_power uhc.data.setup
execute store result storage uhc:settings enchantments.bow_power.max_plus_1 int 1 run scoreboard players get #bow_power uhc.data.temp
execute store result storage uhc:settings enchantments.depth_strider.max int 1 run scoreboard players get #depth_strider uhc.data.setup
execute store result storage uhc:settings enchantments.depth_strider.max_plus_1 int 1 run scoreboard players get #depth_strider uhc.data.temp
execute store result storage uhc:settings enchantments.lunge.max int 1 run scoreboard players get #lunge uhc.data.setup
execute store result storage uhc:settings enchantments.lunge.max_plus_1 int 1 run scoreboard players get #lunge uhc.data.temp
execute store result storage uhc:settings shield.durability int 1 run scoreboard players get #shield uhc.data.setup
execute store result storage uhc:settings item.cobweb int 1 run scoreboard players get #cobweb uhc.data.setup

execute if score #tracker_allies uhc.data.setup matches 1 run scoreboard players set #tracker uhc.data.temp 1
scoreboard players operation #map_height_limit_above uhc.data.temp = #map_height_limit_above uhc.data.setup
execute if score #sky_high uhc.scenario matches 1 run scoreboard players set #map_height_limit_above uhc.data.temp 257
scoreboard players operation #map_height_limit_below uhc.data.temp = #map_height_limit_below uhc.data.setup

scoreboard players set #tick_start uhc.data.temp 201
scoreboard players set #tick uhc.data.temp 20

## Border Alerte Sonore
scoreboard players operation #shrink_1_timer_end uhc.data.temp = #shrink_1_length uhc.data.setup
scoreboard players operation #shrink_2_timer_end uhc.data.temp = #shrink_2_length uhc.data.setup
scoreboard players operation #shrink_3_timer_end uhc.data.temp = #shrink_3_length uhc.data.setup
scoreboard players operation #shrink_1_timer_end uhc.data.temp += #shrink_1_time_left uhc.data.temp
scoreboard players operation #shrink_2_timer_end uhc.data.temp += #shrink_2_time_left uhc.data.temp
scoreboard players operation #shrink_3_timer_end uhc.data.temp += #shrink_3_time_left uhc.data.temp

## Nombre de vies
scoreboard players operation #lives_start uhc.player.lives = #lives uhc.player.lives

## Points de vie par kill
scoreboard players operation #reward_kill_health uhc.data.temp = #reward_kill_health uhc.data.setup
scoreboard players add #reward_kill_health uhc.data.temp 1
execute store result storage uhc:settings reward_kill.health int 1 run scoreboard players get #reward_kill_health uhc.data.temp

## Start direct ou Start 30 secondes après le tp
scoreboard players set #seconds uhc.data.temp 59
execute if score #start_delay uhc.data.setup matches 1 run scoreboard players set #seconds uhc.data.temp 29

## Collision entre joueurs
execute unless score #start_in_sky uhc.data.setup matches 1 run function uhc:in_game/team/collision/always

## Scoreboard spéciaux
scoreboard objectives add uhc.scenario.blood_diamond.deepslate minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add uhc.scenario.blood_diamond.temp minecraft.mined:minecraft.diamond_ore

scoreboard objectives add uhc.player.mined.temp.coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add uhc.player.mined.temp.coal_deepslate minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add uhc.player.mined.temp.copper minecraft.mined:minecraft.copper_ore
scoreboard objectives add uhc.player.mined.temp.copper_deepslate minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add uhc.player.mined.temp.iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add uhc.player.mined.temp.iron_deepslate minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add uhc.player.mined.temp.gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add uhc.player.mined.temp.gold_deepslate minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add uhc.player.mined.temp.lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add uhc.player.mined.temp.lapis_deepslate minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add uhc.player.mined.temp.redstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add uhc.player.mined.temp.redstone_deepslate minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add uhc.player.mined.temp.diamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add uhc.player.mined.temp.diamond_deepslate minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add uhc.player.mined.temp.raw_copper_block minecraft.mined:minecraft.raw_copper_block
scoreboard objectives add uhc.player.mined.temp.raw_gold_block minecraft.mined:minecraft.raw_gold_block
scoreboard objectives add uhc.player.mined.temp.raw_iron_block minecraft.mined:minecraft.raw_iron_block

scoreboard objectives add uhc.player.mined.coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add uhc.player.mined.copper minecraft.mined:minecraft.copper_ore
scoreboard objectives add uhc.player.mined.iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add uhc.player.mined.gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add uhc.player.mined.lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add uhc.player.mined.redstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add uhc.player.mined.diamond minecraft.mined:minecraft.diamond_ore

scoreboard players set @a uhc.player.mined.coal 0
scoreboard players set @a uhc.player.mined.copper 0
scoreboard players set @a uhc.player.mined.iron 0
scoreboard players set @a uhc.player.mined.gold 0
scoreboard players set @a uhc.player.mined.lapis 0
scoreboard players set @a uhc.player.mined.redstone 0
scoreboard players set @a uhc.player.mined.diamond 0

scoreboard objectives add uhc.team.kills dummy "Kills"
execute if score #bhc uhc.gamemode matches 0 run scoreboard objectives add uhc.player.kills dummy "Kills"
execute if score #bhc uhc.gamemode matches 1 run scoreboard objectives add uhc.player.kills dummy [{"text":"Kills ","color":"#FFFFFF"},{"text":">","color":"#00C3DF","bold":true},{"text":" Individuel","color":"#FFFFFF"}]
scoreboard objectives add uhc.player.kills.inv dummy

scoreboard players set @a[tag=uhc.player] uhc.player.kills.inv 0
scoreboard players set §p§v§e uhc.player.kills 0

scoreboard objectives add uhc.player.damage_dealt.total minecraft.custom:minecraft.damage_dealt [{"text":" [Dégâts émis total]*10","color":"#FFFFFF"}]
scoreboard objectives add uhc.player.damage_dealt.pve minecraft.custom:minecraft.damage_dealt [{"text":" [Dégâts émis PvE]*10","color":"#FFFFFF"}]
scoreboard objectives add uhc.player.damage_dealt.pvp dummy [{"text":" [Dégâts émis PvP]*10","color":"#FFFFFF"}]
scoreboard objectives add uhc.player.damage_taken.total minecraft.custom:minecraft.damage_taken
scoreboard objectives add uhc.player.damage_taken.pve minecraft.custom:minecraft.damage_taken
scoreboard objectives add uhc.player.damage_taken.pvp dummy
scoreboard objectives add uhc.player.damage_taken.temp minecraft.custom:minecraft.damage_taken

scoreboard players set @a uhc.player.damage_dealt.total 0
scoreboard players set @a uhc.player.damage_dealt.pve 0
scoreboard players set @a uhc.player.damage_dealt.pvp 0
scoreboard players set @a uhc.player.damage_taken.total 0
scoreboard players set @a uhc.player.damage_taken.pve 0
scoreboard players set @a uhc.player.damage_taken.pvp 0

scoreboard players set @a[tag=uhc.player] uhc.player.timer 0

# Scoreboard trigger
scoreboard players enable @a uhc.ironman.list
scoreboard players enable @a uhc.night_vision
execute if score #best_pve uhc.scenario matches 1 run scoreboard players enable @a uhc.best_pve.list
scoreboard players enable @a[tag=uhc.player] uhc.info.me
