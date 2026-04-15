
#> bhc:scenario/00/bingo_stepa/start
#
# @within			bhc:scenario/00/timer/steps
#
#
# @description		Activation du Bingo, début d'Étape A
#

# Activation du Bingo
scoreboard players set #bingo_0a_enabled bhc.data 1
scoreboard players set #stepa_enabled bhc.data 1

function uhc:translation/bhc/00_vanilla/bingo_a_start

# Scoreboard d'affichage
scoreboard players set #sb bhc.data.temp 2
scoreboard objectives setdisplay sidebar bhc.stepa.score

# Reset des succès
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scenario/00/timer/reset_scores

data modify storage bhc:temp scoreboard.bingo set value "bingo_0a"
function bhc:advancement/scoreboard with storage bhc:temp scoreboard

scoreboard players set #line_1 bhc.line 0
scoreboard players set #line_2 bhc.line 0
scoreboard players set #line_3 bhc.line 0
scoreboard players set #line_4 bhc.line 0
scoreboard players set #line_5 bhc.line 0
scoreboard players set #line_6 bhc.line 0
scoreboard players set #line_7 bhc.line 0
scoreboard players set #line_8 bhc.line 0
scoreboard players set #line_9 bhc.line 0

scoreboard players set #column_1 bhc.column 0
scoreboard players set #column_2 bhc.column 0
scoreboard players set #column_3 bhc.column 0
scoreboard players set #column_4 bhc.column 0
scoreboard players set #column_5 bhc.column 0
scoreboard players set #column_6 bhc.column 0
scoreboard players set #column_7 bhc.column 0
scoreboard players set #column_8 bhc.column 0
scoreboard players set #column_9 bhc.column 0

# Enregistrement du nombre de lignes et colonnes
function bingo_0a:load
scoreboard players operation #line_stepa bhc.data = #line bhc.data
scoreboard players operation #column_stepa bhc.data = #column bhc.data
