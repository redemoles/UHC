
#> uhc:in_game/scenario/blood_diamond/step_mid
#
# @within			uhc:in_game/scenario/blood_diamond/progressive_mode
#
#
# @description		Palier 2 - Choix aléatoire de l'effet du Blood Diamond
#

execute at @s run tag @r[distance=0.1..,tag=uhc.player] add uhc.blood_diamond.receive

execute if score #random uhc.scenario.blood_diamond.temp matches 1..25 run damage @s 1
execute if score #random uhc.scenario.blood_diamond.temp matches 26..50 run give @s minecraft:gold_ingot
execute if score #random uhc.scenario.blood_diamond.temp matches 51..75 run give @s minecraft:diamond
execute if score #random uhc.scenario.blood_diamond.temp matches 76..100 run give @p[tag=uhc.blood_diamond.receive] minecraft:diamond

## Joueur
# Msg FRA
$execute if score #random uhc.scenario.blood_diamond.temp matches 1..25 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Blood Diamond ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -1 PV (25%)","color":"#FF3F3F","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 26..50 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Blood Diamond ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 lingot d'or (25%)","color":"#FFE73F","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 51..75 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Blood Diamond ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 diamant (25%)","color":"#3FE7FF","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 76..100 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Blood Diamond ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 diamant pour ","color":"#FF3F3F","bold":false},{"selector":"@p[tag=uhc.blood_diamond.receive]","bold":false},{"text":" (25%)","color":"#FF3F3F","bold":false}]
execute if score #random uhc.scenario.blood_diamond.temp matches 76..100 run tellraw @p[tag=uhc.blood_diamond.receive,scores={uhc.player.lang=061801}] [{"text":"Blood Diamond ","color":"#3FE7FF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Diamant reçu de ","color":"#3FE7FF","bold":false},{"selector":"@s","bold":false}]

# Msg ENG
$execute if score #random uhc.scenario.blood_diamond.temp matches 1..25 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Blood Diamond ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -1 HP (25%)","color":"#FF3F3F","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 26..50 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Blood Diamond ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 gold ingot (25%)","color":"#FFE73F","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 51..75 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Blood Diamond ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 diamond (25%)","color":"#3FE7FF","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 76..100 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Blood Diamond ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 diamond for ","color":"#FF3F3F","bold":false},{"selector":"@p[tag=uhc.blood_diamond.receive]","bold":false},{"text":" (25%)","color":"#FF3F3F","bold":false}]
execute if score #random uhc.scenario.blood_diamond.temp matches 76..100 run tellraw @p[tag=uhc.blood_diamond.receive,scores={uhc.player.lang=051407}] [{"text":"Blood Diamond ","color":"#3FE7FF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Diamond received from ","color":"#3FE7FF","bold":false},{"selector":"@s","bold":false}]

$title @s[scores={uhc.scenario.blood_diamond.mined=$(start_tier_2)}] title [{"text":""}]
$title @s[scores={uhc.scenario.blood_diamond.mined=$(start_tier_2),uhc.player.lang=061801}] subtitle [{"text":"Blood Diamond - Palier 2","color":"#FFE73F"}]
$title @s[scores={uhc.scenario.blood_diamond.mined=$(start_tier_2),uhc.player.lang=051407}] subtitle [{"text":"Blood Diamond - Tier 2","color":"#FFE73F"}]

## Spec Info
# Msg FRA
$execute if score #random uhc.scenario.blood_diamond.temp matches 1..25 run tellraw @a[tag=uhc.spec,tag=uhc.spec_info.blood_diamond,scores={uhc.player.lang=061801}] [{"text":"Blood Diamond ","color":"#CFCFCF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -1 PV (25%) pour ","color":"#FF3F3F","bold":false},{"selector":"@s"},{"text":" ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 26..50 run tellraw @a[tag=uhc.spec,tag=uhc.spec_info.blood_diamond,scores={uhc.player.lang=061801}] [{"text":"Blood Diamond ","color":"#CFCFCF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 lingot d'or (25%) pour ","color":"#FFE73F","bold":false},{"selector":"@s"},{"text":" ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 51..75 run tellraw @a[tag=uhc.spec,tag=uhc.spec_info.blood_diamond,scores={uhc.player.lang=061801}] [{"text":"Blood Diamond ","color":"#CFCFCF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 diamant (25%) pour ","color":"#3FE7FF","bold":false},{"selector":"@s"},{"text":" ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 76..100 run tellraw @a[tag=uhc.spec,tag=uhc.spec_info.blood_diamond,scores={uhc.player.lang=061801}] [{"text":"Blood Diamond ","color":"#CFCFCF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 diamant pour ","color":"#FF3F3F","bold":false},{"selector":"@p[tag=uhc.blood_diamond.receive]","bold":false},{"text":" (25%) de ","color":"#FF3F3F","bold":false},{"selector":"@s"},{"text":" ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false}]

# Msg ENG
$execute if score #random uhc.scenario.blood_diamond.temp matches 1..25 run tellraw @a[tag=uhc.spec,tag=uhc.spec_info.blood_diamond,scores={uhc.player.lang=051407}] [{"text":"Blood Diamond ","color":"#CFCFCF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -1 HP (25%) for ","color":"#FF3F3F","bold":false},{"selector":"@s"},{"text":" ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 26..50 run tellraw @a[tag=uhc.spec,tag=uhc.spec_info.blood_diamond,scores={uhc.player.lang=051407}] [{"text":"Blood Diamond ","color":"#CFCFCF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 gold ingot (25%) for ","color":"#FFE73F","bold":false},{"selector":"@s"},{"text":" ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 51..75 run tellraw @a[tag=uhc.spec,tag=uhc.spec_info.blood_diamond,scores={uhc.player.lang=051407}] [{"text":"Blood Diamond ","color":"#CFCFCF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 diamond (25%) for ","color":"#3FE7FF","bold":false},{"selector":"@s"},{"text":" ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false}]
$execute if score #random uhc.scenario.blood_diamond.temp matches 76..100 run tellraw @a[tag=uhc.spec,tag=uhc.spec_info.blood_diamond,scores={uhc.player.lang=051407}] [{"text":"Blood Diamond ","color":"#CFCFCF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" +1 diamond for ","color":"#FF3F3F","bold":false},{"selector":"@p[tag=uhc.blood_diamond.receive]","bold":false},{"text":" (25%) from ","color":"#FF3F3F","bold":false},{"selector":"@s"},{"text":" ($(mined)/$(end_tier_2)) ","color":"#FFE73F","bold":false}]

tag @p[tag=uhc.blood_diamond.receive] remove uhc.blood_diamond.receive
