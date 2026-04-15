
#> bhc:scenario/51/bingo_stepb/start
#
# @within			bhc:scenario/51/timer/steps
#
#
# @description		Activation du Bingo, début d'Étape B
#

# Activation du Bingo
scoreboard players set #bingo_51b_enabled bhc.data 1
scoreboard players set #stepb_enabled bhc.data 2

function uhc:translation/bhc/51_april_fool_26/bingo_b_start

# Scoreboard d'affichage
scoreboard players set #sb bhc.data.temp 5
scoreboard objectives setdisplay sidebar bhc.stepb.score

# Reset des succès
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scenario/51/timer/reset_scores

data modify storage bhc:temp scoreboard.bingo set value "bingo_51b"
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
function bingo_51b:load
scoreboard players operation #line_stepb bhc.data = #line bhc.data
scoreboard players operation #column_stepb bhc.data = #column bhc.data

# Départage égalité
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run scoreboard players operation @s bhc.stepb.score.inv = @s bhc.stepa.rank.score.inv
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/stepb/rank
