
#> bhc:scenario/00/bingo_stepb/team_reward/case
#
# @within			bhc:scenario/00/advancement/new_adv
#
#
# @description		Ajout de points
#

# Ajout de points au joueur et à l'équipe
scoreboard players operation @s bhc.stepb.score.inv /= #1m uhc.data.numbers
scoreboard players add @s bhc.stepb.score.inv 1
$execute if score #team_first_line_$(line) bhc.data matches 1 run scoreboard players add @s bhc.stepb.score.inv 2
$execute if score #team_first_column_$(column) bhc.data matches 1 run scoreboard players add @s bhc.stepb.score.inv 2
scoreboard players operation @a[predicate=uhc:id_team] bhc.stepb.score.inv = @s bhc.stepb.score.inv
scoreboard players operation @s bhc.stepb.score.inv *= #1m uhc.data.numbers
scoreboard players add @e[type=marker,tag=UHC,distance=0..] bhc.stepb.score.inv 1
scoreboard players add @s bhc.stepb.case 1

# Classement
execute as @e[type=marker,tag=UHC,distance=0..] run function bhc:scores_calculator/stepb/rank
execute as @e[type=marker,tag=UHC,distance=0..] run function bhc:scores_calculator/bingos/rank
