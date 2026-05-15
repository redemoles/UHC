
#> bhc:start/main
#
# @within			uhc:start/setup_uhc
#
#
# @description		Collectes et modifs de quelques données au démarrage
#

## Configuration de scénario
execute if score #bhc bhc.scenario matches 00 run function bhc:scenario/00/timer/settings
execute if score #bhc bhc.scenario matches 01 run function bhc:scenario/01/timer/settings
execute if score #bhc bhc.scenario matches 02 run function bhc:scenario/02/timer/settings
execute if score #bhc bhc.scenario matches 51 run function bhc:scenario/51/timer/settings
execute if score #bhc bhc.scenario matches 91 run function bhc:scenario/91/timer/settings
execute if score #bhc bhc.scenario matches 92 run function bhc:scenario/92/timer/settings
execute if score #bhc bhc.scenario matches 99 run function bhc:scenario/99/timer/settings
scoreboard objectives setdisplay sidebar

scoreboard players operation #stepa_start bhc.data.temp = #stepa_start bhc.data.setup
scoreboard players operation #stepa_end bhc.data.temp = #stepa_end bhc.data.setup
scoreboard players operation #stepb_start bhc.data.temp = #stepb_start bhc.data.setup
scoreboard players operation #stepb_end bhc.data.temp = #stepb_end bhc.data.setup
execute if score #bhc bhc.scenario matches 01 run scoreboard players operation #stepb_exhaustion bhc.data.temp = #stepb_exhaustion bhc.data.setup
execute if score #stepa_start bhc.data.setup matches -1 run scoreboard players set #start_delay uhc.data.setup 1

## Équipes et joueurs
scoreboard players operation #team bhc.data.temp = #team uhc.data.temp.inv
scoreboard players operation #team/2 bhc.data = #team bhc.data.temp
scoreboard players operation #team/2 bhc.data /= #02 uhc.data.numbers
execute if score #team/2 bhc.data matches 16.. run scoreboard players set #team/2 bhc.data 15

scoreboard players set @a[tag=uhc.player] bhc.stepa.score.inv 0
scoreboard players set @a[tag=uhc.player] bhc.stepb.score.inv 0
scoreboard players set @a[tag=uhc.player] bhc.kills.score.inv 0
scoreboard players set @a[tag=uhc.player] bhc.death.score.inv 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:start/team_config

scoreboard players set #team uhc.id.team 0
scoreboard players set #sb bhc.data.temp 2
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/stepa/rank
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/stepb/rank
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/bingos/rank
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/kills/scores
function bhc:scores_calculator/death/update
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/total/rank

## Corrections des timers lié au démarrage
execute if score #stepa_start bhc.data.setup matches -1 run scoreboard players add #stepa_start bhc.data.temp 1
execute if score #stepa_start bhc.data.setup matches -1 run scoreboard players add #stepa_end bhc.data.temp 1
execute if score #stepa_start bhc.data.setup matches -1 run scoreboard players add #stepb_start bhc.data.temp 1
execute if score #stepa_start bhc.data.setup matches -1 run scoreboard players add #stepb_end bhc.data.temp 1
execute if score #stepa_start bhc.data.setup matches -1 if score #bhc bhc.scenario matches 01 run scoreboard players add #stepb_exhaustion bhc.data.temp 1
scoreboard players add #stepa_start bhc.data.temp 1
scoreboard players add #stepa_end bhc.data.temp 1
scoreboard players add #stepb_start bhc.data.temp 1
scoreboard players add #stepb_end bhc.data.temp 1
execute if score #bhc bhc.scenario matches 01 run scoreboard players add #stepb_exhaustion bhc.data.temp 1

scoreboard objectives add bhc.kills.damage_dealt.rank dummy
scoreboard objectives add bhc.kills.damage_dealt.inv dummy
scoreboard objectives add bhc.kills.damage_dealt dummy [{"text":"Kills ","color":"#FFFFFF"},{"text":">","color":"#00C3DF","bold":true},{"text":" [Dégâts émis]*10","color":"#FFFFFF"}]

## Scoreboard
team join bhc.sb.01 §r§0§1
team join bhc.sb.02 §r§0§2
team join bhc.sb.03 §r§0§3
team join bhc.sb.04 §r§0§4
team join bhc.sb.05 §r§0§5
team join bhc.sb.06 §r§0§6
team join bhc.sb.07 §r§0§7
team join bhc.sb.08 §r§0§8
team join bhc.sb.09 §r§0§9
team join bhc.sb.10 §r§1§0
team join bhc.sb.11 §r§1§1
team join bhc.sb.12 §r§1§2
team join bhc.sb.13 §r§1§3
team join bhc.sb.14 §r§1§4
team join bhc.sb.15 §r§1§5
team join bhc.sb.16 §r§1§6
team join bhc.sb.17 §r§1§7
team join bhc.sb.18 §r§1§8
team join bhc.sb.19 §r§1§9
team join bhc.sb.20 §r§2§0
team join bhc.sb.21 §r§2§1
team join bhc.sb.22 §r§2§2
team join bhc.sb.23 §r§2§3
team join bhc.sb.24 §r§2§4
team join bhc.sb.25 §r§2§5
team join bhc.sb.26 §r§2§6
team join bhc.sb.27 §r§2§7
team join bhc.sb.28 §r§2§8
team join bhc.sb.29 §r§2§9
team join bhc.sb.30 §r§3§0
team join bhc.sb.31 §r§3§1
team join bhc.sb.32 §r§3§2
