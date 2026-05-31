
#> uhc:pre_game/config/data_setup
#
# @within			uhc:reset
#
#
# @description		Initialisation du datapack
#

scoreboard players set #random_team_start uhc.data.setup 1

execute if score #loaded uhc.data.setup matches 1 run return fail
scoreboard players set #loaded uhc.data.setup 1

## Modes de jeu
scoreboard players set #vanilla uhc.gamemode 1
scoreboard players set #bhc uhc.gamemode 0
scoreboard players set #bhc bhc.scenario -1
scoreboard players set #mls uhc.gamemode 0
scoreboard players set #mls mls.scenario 0
scoreboard players set #nzl uhc.gamemode 0
scoreboard players set #nzl nzl.scenario -1
data modify storage uhc:settings gamemode set value [{"text":"Vanilla","color":"#E7E7E7","bold":true,"italic":false}]

# Moles
scoreboard objectives add mls.data.player dummy
scoreboard objectives add mls.data.team dummy
scoreboard objectives add mls.command dummy
scoreboard players set #amount_moles mls.data.player 1
scoreboard players set #amount_moles mls.data.team 1
scoreboard players set #amount_team mls.data.team 1
scoreboard players set #amount_supermoles mls.data.team 0
scoreboard players set #amount_superteam mls.data.team 0
scoreboard players set #/claim mls.command 1
scoreboard players set #/kit mls.command 1
scoreboard players set #/reveal mls.command 2
scoreboard players set #/r mls.command 2
scoreboard players set #/superreveal mls.command 3
scoreboard players set #/sreveal mls.command 3
scoreboard players set #/sr mls.command 3

scoreboard players set #custom_arrow uhc.data.setup 0

## Scénarios
scoreboard players set #bats uhc.scenario 0
scoreboard players set #best_pve uhc.scenario 0
scoreboard players set #biome_paranoia uhc.scenario 0
scoreboard players set #blood_cycle uhc.scenario 0
scoreboard players set #blood_diamond uhc.scenario 0
scoreboard players set #bookception uhc.scenario 0
scoreboard players set #cut_clean uhc.scenario 0

scoreboard players set #double_ores uhc.scenario 0
scoreboard players set #enchanting_setup uhc.scenario 0
scoreboard players set #experienceless uhc.scenario 0
scoreboard players set #go_to_hell uhc.scenario 0
scoreboard players set #gone_fishing uhc.scenario 0
scoreboard players set #hastey_boys uhc.scenario 0
scoreboard players set #no_fall uhc.scenario 0

scoreboard players set #no_fire uhc.scenario 0
scoreboard players set #perma_day uhc.scenario 0
scoreboard players set #perma_night uhc.scenario 0
scoreboard players set #permakill uhc.scenario 0
scoreboard players set #red_arrows uhc.scenario 0
scoreboard players set #rewarding_longshots uhc.scenario 0
scoreboard players set #sky_high uhc.scenario 0

scoreboard players set #sound_paranoia uhc.scenario 0
scoreboard players set #team_health uhc.scenario 0

scoreboard players set #trade_uhc uhc.scenario 0

scoreboard players set #mystery_scenarios uhc.data.setup 0

# Blood Diamond
scoreboard objectives remove uhc.scenario.blood_diamond.setup
scoreboard objectives add uhc.scenario.blood_diamond.setup dummy

# Enchanting Setup
scoreboard players set #100b uhc.scenario.enchanting_setup 0
scoreboard players set #500b uhc.scenario.enchanting_setup 0
scoreboard players set #1000b uhc.scenario.enchanting_setup 0

## Configuration de la partie
scoreboard players set #ffa uhc.data.setup 0
# Hauteur maximal de map
execute in minecraft:overworld run function uhc:pre_game/config/map_height

# Configuration personnalisable
function uhc:pre_game/config/preferences

# Blood Diamond
scoreboard players operation #mined_tier_2 uhc.scenario.blood_diamond.tier = #end_tier_2 uhc.scenario.blood_diamond.tier
scoreboard players operation #mined_tier_2 uhc.scenario.blood_diamond.tier -= #end_tier_1 uhc.scenario.blood_diamond.tier
execute store result storage uhc:scenario blood_diamond.end_tier_1 int 1 run scoreboard players get #end_tier_1 uhc.scenario.blood_diamond.tier
execute store result storage uhc:scenario blood_diamond.end_tier_2 int 1 run scoreboard players get #end_tier_2 uhc.scenario.blood_diamond.tier
scoreboard players add #end_tier_1 uhc.scenario.blood_diamond.tier 1
scoreboard players add #end_tier_2 uhc.scenario.blood_diamond.tier 1
execute store result storage uhc:scenario blood_diamond.start_tier_2 int 1 run scoreboard players get #end_tier_1 uhc.scenario.blood_diamond.tier
execute store result storage uhc:scenario blood_diamond.start_tier_3 int 1 run scoreboard players get #end_tier_2 uhc.scenario.blood_diamond.tier
scoreboard players remove #end_tier_1 uhc.scenario.blood_diamond.tier 1
scoreboard players remove #end_tier_2 uhc.scenario.blood_diamond.tier 1
execute store result storage uhc:scenario blood_diamond.mined_tier_2 int 1 run scoreboard players get #mined_tier_2 uhc.scenario.blood_diamond.tier

execute store result storage uhc:scenario blood_diamond.tier_2_damage int 1 run scoreboard players get #tier_2_damage uhc.scenario.blood_diamond.setup
execute store result storage uhc:scenario blood_diamond.tier_2_gold_ingot int 1 run scoreboard players get #tier_2_gold_ingot uhc.scenario.blood_diamond.setup
execute store result storage uhc:scenario blood_diamond.tier_2_diamond int 1 run scoreboard players get #tier_2_diamond uhc.scenario.blood_diamond.setup
execute store result storage uhc:scenario blood_diamond.tier_2_gift int 1 run scoreboard players get #tier_2_gift uhc.scenario.blood_diamond.setup

execute store result storage uhc:scenario go_to_hell.timer int 1 run scoreboard players get #go_to_hell uhc.data.setup

execute store result storage uhc:scenario sky_high.timer int 1 run scoreboard players get #sky_high uhc.data.setup
execute store result storage uhc:scenario sky_high.height int 1 run scoreboard players get #height uhc.scenario.sky_high.settings
execute store result storage uhc:scenario sky_high.ender_pearl_gift int 1 run scoreboard players get #ender_pearl_gift uhc.scenario.sky_high.settings
execute store result storage uhc:scenario sky_high.ender_pearl_timer int 1 run scoreboard players get #ender_pearl_timer uhc.scenario.sky_high.settings
