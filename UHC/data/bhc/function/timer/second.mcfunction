
#> bhc:timer/second
#
# @within			uhc:in_game/timer/second
#
#
# @description		Function toutes les secondes
#

# Bingo UHC II
execute if score #bhc bhc.scenario matches 02 if score #stepb_start bhc.data.temp matches ..0 if score #tracker_ennemies uhc.data.temp matches ..1000 run function bhc:scenario/02/target/randomizer/cooldown

# Rappel scénario
execute if score #stepb_start bhc.data.temp matches 5 if score #seconds uhc.data.temp matches 10 run function bhc:timer/cooldown/reminder

# Général
execute unless score #team/2 bhc.data matches 8.. unless score #game_progress uhc.game_progress matches 2.. if score #stepb_end bhc.data.temp matches ..-1 run function bhc:timer/scoreboard/less_than_15_teams/
execute if score #team/2 bhc.data matches 8.. unless score #game_progress uhc.game_progress matches 2.. run function bhc:timer/scoreboard/more_than_15_teams/in_game
execute if score #seconds uhc.game_progress matches 1.. run function bhc:timer/scoreboard/after_end_game

execute if score #stepa_start bhc.data.temp matches 5 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepa_start bhc.data.temp matches 2 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepa_start bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepa_start bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 30 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepa_start bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 run scoreboard players set #hotbar_cooldown uhc.data.temp 13

execute if score #stepa_end bhc.data.temp matches 15 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepa_end bhc.data.temp matches 10 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepa_end bhc.data.temp matches 5 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepa_end bhc.data.temp matches 2 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepa_end bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepa_end bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 30 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepa_end bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 run scoreboard players set #hotbar_cooldown uhc.data.temp 13

execute if score #bhc bhc.scenario matches 99 run return fail

execute if score #stepb_start bhc.data.temp matches 10 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_start bhc.data.temp matches 5 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_start bhc.data.temp matches 2 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_start bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_start bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 30 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_start bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 run scoreboard players set #hotbar_cooldown uhc.data.temp 13

execute if score #stepb_exhaustion bhc.data.temp matches 5 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_exhaustion bhc.data.temp matches 2 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_exhaustion bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_exhaustion bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 30 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_exhaustion bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 run scoreboard players set #hotbar_cooldown uhc.data.temp 13

execute if score #stepb_end bhc.data.temp matches 15 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_end bhc.data.temp matches 10 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_end bhc.data.temp matches 5 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_end bhc.data.temp matches 2 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_end bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_end bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 30 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #stepb_end bhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 run scoreboard players set #hotbar_cooldown uhc.data.temp 13
