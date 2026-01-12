
#> uhc:pre_game/player_and_team/random_team/1_pot/reveal/progressive
#
# @within			uhc:pre_game/player_and_team/random_team/1_pot/
#
#
# @description		Génération d'équipes aléatoires
#

scoreboard players remove #random_team_tick uhc.data.setup 1
execute unless score #random_team_tick uhc.data.setup matches 60 unless score #random_team_tick uhc.data.setup matches 50 unless score #random_team_tick uhc.data.setup matches 30 unless score #random_team_tick uhc.data.setup matches 0 run return fail
execute if score #random_team_tick uhc.data.setup matches 60 as @a at @s run return run playsound minecraft:block.vault.insert_item master @s ~ ~ ~ 0.5 1 0
execute if score #random_team_tick uhc.data.setup matches 50 as @a at @s run return run playsound minecraft:block.vault.open_shutter master @s ~ ~ ~ 0.5 1 0
execute if score #random_team_tick uhc.data.setup matches 30 run function uhc:pre_game/player_and_team/random_team/1_pot/reveal/progressive_1

scoreboard players set #random_team_tick uhc.data.setup -1
execute if score #random_team_player uhc.data.setup matches 1.. as @r[tag=uhc.player,team=091] run function uhc:pre_game/player_and_team/random_team/1_pot/reveal/progressive_join
execute if score #random_team_player uhc.data.setup matches 1.. if entity @p[tag=uhc.player,team=091] run return fail
execute as @a at @s run playsound minecraft:block.vault.deactivate master @s ~ ~ ~ 0.5 1 0
execute as @a at @s run playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 0.5 1 0
