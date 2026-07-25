
#> bhc:test/more_than_15_teams/schedule
#
# @within			bhc:test/more_than_15_teams/
#
#
# @description		Simulation d'une partie à plus de 15 équipes
#

function bhc:test/scores/team
scoreboard players operation #team/2 bhc.data = #team bhc.data.temp
scoreboard players operation #team/2 bhc.data /= #02 uhc.data.numbers
scoreboard players operation #temp bhc.stepa.score.inv = #team bhc.data.temp
execute if score #team/2 bhc.data matches 16.. run scoreboard players set #team/2 bhc.data 15

scoreboard players set @a[tag=uhc.player] bhc.stepa.score.inv 0
scoreboard players set @a[tag=uhc.player] bhc.stepb.score.inv 0
scoreboard players set @a[tag=uhc.player] bhc.kills.score.inv 0
scoreboard players set @a[tag=uhc.player] bhc.death.score.inv 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:start/team_config

scoreboard players set #team uhc.id.team 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/scores_calculator/stepa/rank
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/scores_calculator/stepb/rank
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/scores_calculator/bingos/rank
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/scores_calculator/kills/scores
function bhc:in_game/scores_calculator/death/update
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/scores_calculator/total/rank
