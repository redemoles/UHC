
#> uhc:pre_game/menu/selection/main/host/config
#
# @within			uhc:pre_game/menu/selection/main/host/main
#
#
# @description		Résumé de la configuration de la partie
#

function uhc:translation/menu/selected/config_world_generation
execute unless score #overworld_finished pregen.world matches 1.. run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Overworld : ","color":"#FFFFFF","bold":false},{"text":"1000/-1000","color":"#CF3F3F","bold":false}]
execute if score #overworld_finished pregen.world matches 2 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Overworld : ","color":"#FFFFFF","bold":false},{"text":"1000/-1000","color":"#3FE7FF","bold":false}]
execute if score #overworld_finished pregen.world matches 4 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Overworld : ","color":"#FFFFFF","bold":false},{"text":"2000/-2000","color":"#3FE7FF","bold":false}]
execute if score #overworld_finished pregen.world matches 6 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Overworld : ","color":"#FFFFFF","bold":false},{"text":"3000/-3000","color":"#3FE7FF","bold":false}]
execute if score #overworld_finished pregen.world matches 8 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Overworld : ","color":"#FFFFFF","bold":false},{"text":"4000/-4000","color":"#3FE7FF","bold":false}]
execute if score #overworld_finished pregen.world matches 10 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Overworld : ","color":"#FFFFFF","bold":false},{"text":"5000/-5000","color":"#3FE7FF","bold":false}]
execute unless score #the_nether_finished pregen.world matches 1.. run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Nether : ","color":"#FF6F3F","bold":false},{"text":"1000/-1000","color":"#CF3F3F","bold":false}]
execute if score #the_nether_finished pregen.world matches 2 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Nether : ","color":"#FF6F3F","bold":false},{"text":"1000/-1000","color":"#3FE7FF","bold":false}]
execute if score #the_nether_finished pregen.world matches 4 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Nether : ","color":"#FF6F3F","bold":false},{"text":"2000/-2000","color":"#3FE7FF","bold":false}]
execute if score #the_nether_finished pregen.world matches 6 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Nether : ","color":"#FF6F3F","bold":false},{"text":"3000/-3000","color":"#3FE7FF","bold":false}]
execute if score #the_nether_finished pregen.world matches 8 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Nether : ","color":"#FF6F3F","bold":false},{"text":"4000/-4000","color":"#3FE7FF","bold":false}]
execute if score #the_nether_finished pregen.world matches 10 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Nether : ","color":"#FF6F3F","bold":false},{"text":"5000/-5000","color":"#3FE7FF","bold":false}]
execute unless score #the_end_finished pregen.world matches 1.. run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"End : ","color":"#E73FFF","bold":false},{"text":"128/-128","color":"#CF3F3F","bold":false}]
execute if score #the_end_finished pregen.world matches 2 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"End : ","color":"#E73FFF","bold":false},{"text":"128/-128","color":"#3FE7FF","bold":false}]
execute if score #the_end_finished pregen.world matches 4 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"End : ","color":"#E73FFF","bold":false},{"text":"2000/-2000","color":"#3FE7FF","bold":false}]
execute if score #the_end_finished pregen.world matches 6 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"End : ","color":"#E73FFF","bold":false},{"text":"3000/-3000","color":"#3FE7FF","bold":false}]
execute if score #the_end_finished pregen.world matches 8 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"End : ","color":"#E73FFF","bold":false},{"text":"4000/-4000","color":"#3FE7FF","bold":false}]
execute if score #the_end_finished pregen.world matches 10 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"End : ","color":"#E73FFF","bold":false},{"text":"5000/-5000","color":"#3FE7FF","bold":false}]
function uhc:translation/menu/selected/config_world_check
tellraw @s[tag=!host.check_biomes] [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Biomes","color":"#FF3F3F","bold":false}]
tellraw @s[tag=host.check_biomes] [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Biomes","color":"#3FE7FF","bold":false}]
tellraw @s[tag=!host.check_spawns] [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Spawns","color":"#FF3F3F","bold":false}]
tellraw @s[tag=host.check_spawns] [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Spawns","color":"#3FE7FF","bold":false}]
function uhc:translation/menu/selected/config_gamemode_and_scenarios with storage uhc:settings gamemode
execute if score #bats uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Bats","color":"#FFFFFF","bold":false}]
execute if score #best_pve uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Best PvE","color":"#FFFFFF","bold":false}]
execute if score #biome_paranoia uhc.scenario matches 1.. run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Biome Paranoia","color":"#FFFFFF","bold":false}]
execute if score #blood_cycle uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Blood Cycle","color":"#FFFFFF","bold":false}]
execute if score #blood_diamond uhc.scenario matches 1.. run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Blood Diamond","color":"#FFFFFF","bold":false}]
execute if score #bookception uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Bookception","color":"#FFFFFF","bold":false}]
execute if score #cut_clean uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Cut Clean","color":"#FFFFFF","bold":false}]
execute if score #double_ores uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Double Ores","color":"#FFFFFF","bold":false}]
execute if score #enchanting_setup uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Enchanting Setup","color":"#FFFFFF","bold":false}]
execute if score #experienceless uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Experienceless","color":"#FFFFFF","bold":false}]
execute if score #go_to_hell uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Go To Hell","color":"#FFFFFF","bold":false}]
execute if score #golden_head uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Golden Head","color":"#FFFFFF","bold":false}]
execute if score #gone_fishing uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Gone Fishing","color":"#FFFFFF","bold":false}]
execute if score #hastey_boys uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Hastey Boys","color":"#FFFFFF","bold":false}]
execute if score #no_fall uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"No Fall","color":"#FFFFFF","bold":false}]
execute if score #no_fire uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"No Fire","color":"#FFFFFF","bold":false}]
execute if score #perma_day uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Perma Day","color":"#FFFFFF","bold":false}]
execute if score #perma_night uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Perma Night","color":"#FFFFFF","bold":false}]
execute if score #permakill uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Permakill","color":"#FFFFFF","bold":false}]
execute if score #red_arrows uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Red Arrows","color":"#FFFFFF","bold":false}]
execute if score #rewarding_longshots uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Rewarding Longshots","color":"#FFFFFF","bold":false}]
execute if score #silent_night uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Silent Night","color":"#FFFFFF","bold":false}]
execute if score #sky_high uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Sky High","color":"#FFFFFF","bold":false}]
execute if score #sound_paranoia uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Sound Paranoia","color":"#FFFFFF","bold":false}]
execute if score #team_health uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Team Health","color":"#FFFFFF","bold":false}]
execute if score #trade_uhc uhc.scenario matches 1 run tellraw @s [{"text":"• ","color":"#3F9FFF","bold":true},{"text":"Trade UHC","color":"#FFFFFF","bold":false}]
