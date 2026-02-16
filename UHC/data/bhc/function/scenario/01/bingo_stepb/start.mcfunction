
#> bhc:scenario/01/bingo_stepb/start
#
# @within			bhc:scenario/01/timer/steps
#
#
# @description		Activation du Bingo, début d'Étape B
#

# Activation du Bingo
scoreboard players set #bingo_1b_enabled bhc.data 1
scoreboard players set #stepb_enabled bhc.data 2
scoreboard players set #case bhc.case 1000

tellraw @a[scores={uhc.player.lang=061801}] [{"text":"[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" Début de la ","color":"#FFFFFF","bold":false},{"text":"Ruée vers l'Or","color":"#FFE73F","bold":true},{"text":" !","color":"#FFFFFF","bold":false}]
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" Start of the ","color":"#FFFFFF","bold":false},{"text":"Gold Rush","color":"#FFE73F","bold":true},{"text":"!","color":"#FFFFFF","bold":false}]

# Scoreboard d'affichage
scoreboard players set #sb bhc.data.temp 5
scoreboard objectives setdisplay sidebar bhc.stepb.score

# Reset des succès
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scenario/01/timer/reset_scores

data modify storage bhc:temp scoreboard.bingo set value "bingo_1b"
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
function bingo_1b:load
scoreboard players operation #line_stepb bhc.data = #line bhc.data
scoreboard players operation #column_stepb bhc.data = #column bhc.data

# Départage égalité
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run scoreboard players operation @s bhc.stepb.score.inv = @s bhc.stepa.rank.score.inv
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scores_calculator/stepb/rank
