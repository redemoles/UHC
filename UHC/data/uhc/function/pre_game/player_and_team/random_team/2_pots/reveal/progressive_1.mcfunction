
#> uhc:pre_game/player_and_team/random_team/2_pots/reveal/progressive_1
#
# @within			uhc:pre_game/player_and_team/random_team/2_pots/reveal/progressive
#
#
# @description		Génération d'équipes aléatoires
#

execute as @a at @s run playsound minecraft:block.vault.eject_item master @s ~ ~ ~ 0.5 0.8 0
execute store result score #random_team_player uhc.data.setup if entity @a[tag=uhc.player,team=092]
scoreboard players set #random_team_tick uhc.data.setup 0
