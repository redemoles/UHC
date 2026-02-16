
#> uhc:reset
#
# @within			uhc:reset/full
#
#
# @description		Fonction d'initialisation et réinitialisation (partielle) du datapack
#

execute as @e[type=minecraft:marker,tag=mgs.jump.marker,distance=0..] at @s run function lobby:mini_games/rjg/marker/kill

execute if score #reset uhc.data.update matches 2 run return run function uhc:datapack_update/reset/full

execute in minecraft:overworld positioned 0 300 0 positioned over motion_blocking run setworldspawn ~ ~ ~

## Reset des équipes
function uhc:pre_game/player_and_team/team_create

## Reset des scores
scoreboard objectives remove uhc.reset

scoreboard objectives remove uhc.scenario.bats
scoreboard objectives remove uhc.scenario.best_pve.list
scoreboard objectives remove uhc.scenario.best_pve.reward
scoreboard objectives remove uhc.scenario.best_pve.tick
scoreboard objectives remove uhc.scenario.biome_paranoia.team
scoreboard objectives remove uhc.scenario.blood_diamond.damage
scoreboard objectives remove uhc.scenario.blood_diamond.deepslate
scoreboard objectives remove uhc.scenario.blood_diamond.mined
scoreboard objectives remove uhc.scenario.blood_diamond.temp
scoreboard objectives remove uhc.scenario.bookception
scoreboard objectives remove uhc.scenario.cut_clean.random
scoreboard objectives remove uhc.scenario.go_to_hell.damage
scoreboard objectives remove uhc.scenario.go_to_hell.tick
scoreboard objectives remove uhc.scenario.team_health.100
scoreboard objectives remove uhc.scenario.team_health.team
scoreboard objectives remove uhc.scenario.sky_high.damage
scoreboard objectives remove uhc.scenario.sky_high.tick
scoreboard objectives remove uhc.scenario.sound_paranoia.number
scoreboard objectives remove uhc.scenario.sound_paranoia.sound
scoreboard objectives remove uhc.scenario.sound_paranoia.stereo
scoreboard objectives remove uhc.scenario.sound_paranoia.tick
scoreboard objectives remove uhc.scenario.sound_paranoia.wait
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.total_player
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.total_sound
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.creeper
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.ghast
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.zombie
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.piglin_brute
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.player_eat
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.skeleton
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.witch
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.arrow
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.player_fall
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.wind_charge
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.lava
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.enderpearl
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.warden
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.water_bucket
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.wither_skeleton
scoreboard objectives remove uhc.scenario.sound_paranoia.sb.placed_blocks
scoreboard objectives remove uhc.scenario.ironman
scoreboard objectives remove uhc.player.ironman.list
scoreboard objectives remove uhc.player.mined.coal
scoreboard objectives remove uhc.player.mined.copper
scoreboard objectives remove uhc.player.mined.iron
scoreboard objectives remove uhc.player.mined.gold
scoreboard objectives remove uhc.player.mined.lapis
scoreboard objectives remove uhc.player.mined.redstone
scoreboard objectives remove uhc.player.mined.diamond
scoreboard objectives remove uhc.player.mined.temp.coal
scoreboard objectives remove uhc.player.mined.temp.coal_deepslate
scoreboard objectives remove uhc.player.mined.temp.copper
scoreboard objectives remove uhc.player.mined.temp.copper_deepslate
scoreboard objectives remove uhc.player.mined.temp.iron
scoreboard objectives remove uhc.player.mined.temp.iron_deepslate
scoreboard objectives remove uhc.player.mined.temp.gold
scoreboard objectives remove uhc.player.mined.temp.gold_deepslate
scoreboard objectives remove uhc.player.mined.temp.lapis
scoreboard objectives remove uhc.player.mined.temp.lapis_deepslate
scoreboard objectives remove uhc.player.mined.temp.redstone
scoreboard objectives remove uhc.player.mined.temp.redstone_deepslate
scoreboard objectives remove uhc.player.mined.temp.diamond
scoreboard objectives remove uhc.player.mined.temp.diamond_deepslate
scoreboard objectives remove uhc.player.mined.temp.raw_copper_block
scoreboard objectives remove uhc.player.mined.temp.raw_iron_block
scoreboard objectives remove uhc.player.mined.temp.raw_gold_block

scoreboard objectives remove uhc.best_pve.list
scoreboard objectives remove uhc.ironman.list
scoreboard objectives remove uhc.night_vision

scoreboard objectives add uhc.gamemode dummy
scoreboard objectives add uhc.scenario dummy
scoreboard objectives add uhc.scenario.bats dummy
scoreboard objectives add uhc.scenario.best_pve.list dummy
scoreboard objectives add uhc.scenario.best_pve.reward dummy
scoreboard objectives add uhc.scenario.best_pve.tick dummy
scoreboard objectives add uhc.scenario.biome_paranoia.team dummy
scoreboard objectives add uhc.scenario.blood_cycle dummy
scoreboard objectives add uhc.scenario.blood_diamond.damage dummy
scoreboard objectives add uhc.scenario.blood_diamond.mined dummy
scoreboard objectives add uhc.scenario.blood_diamond.tier dummy
scoreboard objectives add uhc.scenario.bookception dummy
scoreboard objectives add uhc.scenario.cut_clean.random dummy
scoreboard objectives add uhc.scenario.enchanting_setup dummy
scoreboard objectives add uhc.scenario.go_to_hell.damage dummy
scoreboard objectives add uhc.scenario.go_to_hell.tick dummy
scoreboard objectives add uhc.scenario.team_health.100 dummy "%"
scoreboard objectives add uhc.scenario.team_health.team dummy [{"text":"❤","color":"#FF5F5F"}]
scoreboard objectives add uhc.scenario.sky_high.damage dummy
scoreboard objectives add uhc.scenario.sky_high.tick dummy
scoreboard objectives add uhc.scenario.sound_paranoia.number dummy
scoreboard objectives add uhc.scenario.sound_paranoia.sound dummy
scoreboard objectives add uhc.scenario.sound_paranoia.stereo dummy
scoreboard objectives add uhc.scenario.sound_paranoia.tick dummy
scoreboard objectives add uhc.scenario.sound_paranoia.wait dummy
scoreboard objectives add uhc.scenario.sound_paranoia.sb.total_player dummy "Total"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.total_sound dummy "Total"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.creeper dummy "Creeper"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.ghast dummy "Ghast"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.zombie dummy "Zombie"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.piglin_brute dummy "Piglin brute"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.player_eat dummy "Player eat"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.skeleton dummy "Skeleton"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.witch dummy "Witch"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.arrow dummy "Arrow"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.player_fall dummy "Player fall"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.wind_charge dummy "Wind Charge"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.lava dummy "Lava"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.enderpearl dummy "Enderpearl"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.warden dummy "Warden"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.water_bucket dummy "Water bucket"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.wither_skeleton dummy "Wither Skeleton"
scoreboard objectives add uhc.scenario.sound_paranoia.sb.placed_blocks dummy "Blocks"
scoreboard objectives add uhc.scenario.ironman dummy
scoreboard objectives add uhc.player.ironman.list dummy
scoreboard objectives add bhc.scenario dummy
scoreboard objectives add nzl.scenario dummy

scoreboard objectives add uhc.ironman.list trigger
scoreboard objectives add uhc.night_vision trigger
scoreboard objectives add uhc.best_pve.list trigger
scoreboard objectives add uhc.info.me trigger
scoreboard objectives add uhc.info.team trigger
scoreboard objectives add uhc.info.team.temp trigger

scoreboard objectives remove uhc.id.team
scoreboard objectives remove uhc.id.team.inverted
scoreboard objectives remove uhc.id.random_team
scoreboard objectives remove uhc.id.random_team.ban
scoreboard objectives remove uhc.id.player
scoreboard objectives remove uhc.id.spawn
scoreboard objectives remove uhc.game_progress
scoreboard objectives remove uhc.data.temp
scoreboard objectives remove uhc.data.temp.inv
scoreboard objectives remove uhc.menu.language
scoreboard objectives remove uhc.menu.main.player
scoreboard objectives remove uhc.menu.gamemode.bhc
scoreboard objectives remove uhc.menu.gamemode.mls
scoreboard objectives remove uhc.menu.gamemode.mls.moles_per_team
scoreboard objectives remove uhc.menu.gamemode.mls.moles_per_game
scoreboard objectives remove uhc.menu.gamemode.mls.teams_of_moles
scoreboard objectives remove uhc.menu.gamemode.mls.teams_of_supermoles
scoreboard objectives remove uhc.menu.gamemode.mls.supermoles_per_team
scoreboard objectives remove uhc.menu.scenario.blood_diamond
scoreboard objectives remove uhc.menu.scenario.main
scoreboard objectives remove uhc.menu.settings.lives
scoreboard objectives remove uhc.menu.settings.pve
scoreboard objectives remove uhc.menu.settings.pvp
scoreboard objectives remove uhc.menu.settings.border
scoreboard objectives remove uhc.menu.settings.inventory
scoreboard objectives remove uhc.menu.settings.team
scoreboard objectives remove uhc.menu.settings.misc
scoreboard objectives remove uhc.menu.tp
scoreboard objectives remove uhc.meetup.activate
scoreboard objectives remove uhc.player.wolf
scoreboard objectives remove uhc.player.online
scoreboard objectives remove uhc.player.disconnect
scoreboard objectives remove uhc.player.tp
scoreboard objectives remove uhc.player.lives
scoreboard objectives remove uhc.player.health.20
scoreboard objectives remove uhc.player.health.100
scoreboard objectives remove uhc.player.health.auto
scoreboard objectives remove uhc.player.health.check
scoreboard objectives remove uhc.player.timer
scoreboard objectives remove uhc.player.border_alert
scoreboard objectives remove uhc.player.map_height.effect
scoreboard objectives remove uhc.player.map_height.sound
scoreboard objectives remove uhc.player.map_height.text
scoreboard objectives remove uhc.player.damage_dealt.total
scoreboard objectives remove uhc.player.damage_dealt.pve
scoreboard objectives remove uhc.player.damage_dealt.pvp
scoreboard objectives remove uhc.player.damage_taken.total
scoreboard objectives remove uhc.player.damage_taken.pve
scoreboard objectives remove uhc.player.damage_taken.pvp
scoreboard objectives remove uhc.player.damage_taken.temp
scoreboard objectives remove uhc.player.kills
scoreboard objectives remove uhc.player.kills.inv
scoreboard objectives remove uhc.player.death
scoreboard objectives remove uhc.player.death_summary
scoreboard objectives remove uhc.player.data.check
scoreboard objectives remove uhc.effect.resistance
scoreboard objectives remove uhc.spec.tp
scoreboard objectives remove uhc.spec_info.all
scoreboard objectives remove uhc.spec_info.none
scoreboard objectives remove uhc.spec_info.blood_diamond
scoreboard objectives remove uhc.spec_info.pvp
scoreboard objectives remove uhc.spec_info.pve
scoreboard objectives remove uhc.team.kills
scoreboard objectives remove uhc.timer.respawn
scoreboard objectives remove uhc.timer.start
scoreboard objectives remove uhc.timer.entities
scoreboard objectives remove uhc.timer.absorption
scoreboard objectives remove uhc.spawn.check
scoreboard objectives remove uhc.world.end

scoreboard objectives add uhc.id.team dummy
scoreboard objectives add uhc.id.team.inverted dummy
scoreboard objectives add uhc.id.random_team dummy
scoreboard objectives add uhc.id.random_team.ban dummy
scoreboard objectives add uhc.id.player dummy
scoreboard objectives add uhc.id.spawn dummy
scoreboard objectives add uhc.game_progress trigger
scoreboard objectives add uhc.data.update dummy
scoreboard objectives add uhc.data.setup dummy
scoreboard objectives add uhc.data.temp dummy
scoreboard objectives add uhc.data.temp.inv dummy
scoreboard objectives add uhc.data.numbers dummy
scoreboard objectives add uhc.menu.language dummy
scoreboard objectives add uhc.menu.main.player dummy
scoreboard objectives add uhc.menu.gamemode.bhc dummy
scoreboard objectives add uhc.menu.gamemode.mls dummy
scoreboard objectives add uhc.menu.gamemode.mls.moles_per_team dummy
scoreboard objectives add uhc.menu.gamemode.mls.moles_per_game dummy
scoreboard objectives add uhc.menu.gamemode.mls.teams_of_moles dummy
scoreboard objectives add uhc.menu.gamemode.mls.teams_of_supermoles dummy
scoreboard objectives add uhc.menu.gamemode.mls.supermoles_per_team dummy
scoreboard objectives add uhc.menu.scenario.blood_diamond dummy
scoreboard objectives add uhc.menu.scenario.main dummy
scoreboard objectives add uhc.menu.settings dummy
scoreboard objectives add uhc.menu.settings.lives dummy
scoreboard objectives add uhc.menu.settings.pve dummy
scoreboard objectives add uhc.menu.settings.pvp dummy
scoreboard objectives add uhc.menu.settings.border dummy
scoreboard objectives add uhc.menu.settings.inventory dummy
scoreboard objectives add uhc.menu.settings.team dummy
scoreboard objectives add uhc.menu.settings.misc dummy
scoreboard objectives add uhc.menu.tp dummy
scoreboard objectives add uhc.meetup.activate trigger
scoreboard objectives add uhc.player.wolf dummy
scoreboard objectives add uhc.player.online dummy
scoreboard objectives add uhc.player.disconnect minecraft.custom:minecraft.leave_game
scoreboard objectives add uhc.player.tp dummy
scoreboard objectives add uhc.player.lives dummy
scoreboard objectives add uhc.player.health.20 dummy
scoreboard objectives add uhc.player.health.100 dummy "%"
scoreboard objectives add uhc.player.health.auto health [{"text":"❤","color":"#FF5F5F"}]
scoreboard objectives add uhc.player.health.check dummy
scoreboard objectives add uhc.player.timer dummy "Minutes jouées"
scoreboard objectives add uhc.player.x dummy
scoreboard objectives add uhc.player.y dummy
scoreboard objectives add uhc.player.z dummy
scoreboard objectives add uhc.player.rotation dummy
scoreboard objectives add uhc.player.target.cos.a dummy
scoreboard objectives add uhc.player.target.cos.h dummy
scoreboard objectives add uhc.player.target.distance dummy
scoreboard objectives add uhc.player.target.distance.x dummy
scoreboard objectives add uhc.player.target.distance.z dummy
scoreboard objectives add uhc.player.target.distance.xxzz dummy
scoreboard objectives add uhc.player.border_alert dummy
scoreboard objectives add uhc.player.map_height.effect dummy
scoreboard objectives add uhc.player.map_height.sound dummy
scoreboard objectives add uhc.player.map_height.text dummy
scoreboard objectives add uhc.player.death deathCount
scoreboard objectives add uhc.player.death_summary dummy
scoreboard objectives add uhc.player.data.check dummy
scoreboard objectives add uhc.player.lang dummy
scoreboard objectives add uhc.effect.resistance dummy
scoreboard objectives add uhc.spec.tp trigger
scoreboard objectives add uhc.spec_info.all trigger
scoreboard objectives add uhc.spec_info.none trigger
scoreboard objectives add uhc.spec_info.blood_diamond trigger
scoreboard objectives add uhc.spec_info.pvp trigger
scoreboard objectives add uhc.spec_info.pve trigger
scoreboard objectives add uhc.timer.respawn dummy
scoreboard objectives add uhc.timer.start dummy
scoreboard objectives add uhc.timer.entities dummy
scoreboard objectives add uhc.timer.absorption dummy
scoreboard objectives add uhc.spawn.check trigger
scoreboard objectives add uhc.world.end dummy
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list uhc.player.health.auto
kill @e[type=minecraft:marker,tag=!lobby]
kill @e[type=minecraft:falling_block]
title @a reset

scoreboard objectives add uhc.id.spawn_check trigger
execute unless score #new uhc.id.spawn_check matches 1 run function uhc:pre_game/world_check/create_spawns_id

## Timer pre-game
scoreboard players set #minutes uhc.data.temp -1
scoreboard players set #seconds uhc.data.temp -1
scoreboard players set #team uhc.data.temp -1
scoreboard players set #player uhc.data.temp -1
scoreboard players set #game_progress uhc.game_progress 0
scoreboard players set #pause uhc.data.temp 0

scoreboard players set #no_pvp_safety uhc.data.temp 1

## Commandes par défaut
execute in minecraft:overworld run function uhc:all_dimension_commands/reset
execute in minecraft:the_nether run function uhc:all_dimension_commands/reset
execute in minecraft:the_end run function uhc:all_dimension_commands/reset
execute in uhc:lobby run function uhc:all_dimension_commands/reset
execute in uhc:lobby run gamerule minecraft:spawn_mobs false
execute in uhc:lobby run gamerule minecraft:spread_vines false
gamerule minecraft:max_command_sequence_length 262144
weather clear 999999

## Load
function uhc:load
scoreboard objectives add pregen.world dummy

## Configuration de la partie, réinitialisation des modes de jeu
function uhc:pre_game/config/data_setup
function bhc:reset
function mls:reset
function nzl:reset/sb

# Team Health
execute if score #hp_name uhc.data.setup matches 0 run scoreboard objectives setdisplay below_name
execute if score #team_health uhc.scenario matches 0 if score #hp_name uhc.data.setup matches 1 run scoreboard objectives setdisplay below_name uhc.player.health.auto
execute if score #team_health uhc.scenario matches 1 if score #hp_name uhc.data.setup matches 1 run scoreboard objectives setdisplay below_name uhc.scenario.team_health.team
execute if score #team_health uhc.scenario matches 0 if score #hp_name uhc.data.setup matches 2 run scoreboard objectives setdisplay below_name uhc.player.health.100
execute if score #team_health uhc.scenario matches 1 if score #hp_name uhc.data.setup matches 2 run scoreboard objectives setdisplay below_name uhc.scenario.team_health.100

execute if score #hp_tab uhc.data.setup matches 0 run scoreboard objectives setdisplay list
execute if score #team_health uhc.scenario matches 0 unless score #hp_tab uhc.data.setup matches 0 unless score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.player.health.auto
execute if score #team_health uhc.scenario matches 1 unless score #hp_tab uhc.data.setup matches 0 unless score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.scenario.team_health.team
execute if score #team_health uhc.scenario matches 0 if score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.player.health.100
execute if score #team_health uhc.scenario matches 1 if score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.scenario.team_health.100

execute if score #hp_tab uhc.data.setup matches 0..2 run scoreboard objectives modify uhc.player.health.auto rendertype integer
execute if score #hp_tab uhc.data.setup matches 0..2 run scoreboard objectives modify uhc.scenario.team_health.team rendertype integer
execute if score #hp_tab uhc.data.setup matches 3 run scoreboard objectives modify uhc.player.health.auto rendertype hearts
execute if score #hp_tab uhc.data.setup matches 3 run scoreboard objectives modify uhc.scenario.team_health.team rendertype hearts

## Multiplicateurs
scoreboard players set #-1m uhc.data.numbers -1000000
scoreboard players set #-1 uhc.data.numbers -1
scoreboard players set #00 uhc.data.numbers 0
scoreboard players set #01 uhc.data.numbers 1
scoreboard players set #02 uhc.data.numbers 2
scoreboard players set #03 uhc.data.numbers 3
scoreboard players set #04 uhc.data.numbers 4
scoreboard players set #05 uhc.data.numbers 5
scoreboard players set #06 uhc.data.numbers 6
scoreboard players set #07 uhc.data.numbers 7
scoreboard players set #08 uhc.data.numbers 8
scoreboard players set #09 uhc.data.numbers 9
scoreboard players set #10 uhc.data.numbers 10
scoreboard players set #15 uhc.data.numbers 15
scoreboard players set #16 uhc.data.numbers 16
scoreboard players set #17 uhc.data.numbers 17
scoreboard players set #20 uhc.data.numbers 20
scoreboard players set #25 uhc.data.numbers 25
scoreboard players set #30 uhc.data.numbers 30
scoreboard players set #35 uhc.data.numbers 35
scoreboard players set #40 uhc.data.numbers 40
scoreboard players set #45 uhc.data.numbers 45
scoreboard players set #50 uhc.data.numbers 50
scoreboard players set #55 uhc.data.numbers 55
scoreboard players set #60 uhc.data.numbers 60
scoreboard players set #100 uhc.data.numbers 100
scoreboard players set #200 uhc.data.numbers 200
scoreboard players set #336 uhc.data.numbers 336
scoreboard players set #1000 uhc.data.numbers 1000
scoreboard players set #1200 uhc.data.numbers 1200
scoreboard players set #2400 uhc.data.numbers 2400
scoreboard players set #12000 uhc.data.numbers 12000
scoreboard players set #10k uhc.data.numbers 10000
scoreboard players set #100k uhc.data.numbers 100000
scoreboard players set #1m uhc.data.numbers 1000000
scoreboard players set #10m uhc.data.numbers 10000000

## Lobby
execute in uhc:lobby run forceload add -128 -128 127 127
execute in uhc:lobby run forceload add -32 -672 31 -609
execute in uhc:lobby run setblock 0 -62 0 minecraft:barrier
execute in uhc:lobby run setblock 0 -61 0 minecraft:oak_sign destroy
function lobby:load

## Définition TP border
execute store result storage uhc:temp tp.xp int 1 run scoreboard players get #00 uhc.data.numbers
execute store result storage uhc:temp tp.xn int 1 run scoreboard players get #00 uhc.data.numbers
execute store result storage uhc:temp tp.zp int 1 run scoreboard players get #00 uhc.data.numbers
execute store result storage uhc:temp tp.zn int 1 run scoreboard players get #00 uhc.data.numbers

## Liste des items cheat
data modify storage uhc:settings item.enchanted_golden_apple set value {item: "enchanted_golden_apple"}
data modify storage uhc:settings item.totem_of_undying set value {item: "totem_of_undying"}

## Liste des morts
data modify storage uhc:temp death set value {}
data modify storage uhc:temp ironman set value {}

## Lieu de respawn
data modify storage uhc:temp respawn_location.720 set value 720
data modify storage uhc:temp respawn_location.840 set value 840
data modify storage uhc:temp respawn_location.360 set value 360
data modify storage uhc:temp respawn_location.960 set value 960
data modify storage uhc:temp respawn_location.0 set value 960
data modify storage uhc:temp respawn_location.900 set value 900
data modify storage uhc:temp respawn_location.180 set value 180
data modify storage uhc:temp respawn_location.780 set value 780
data modify storage uhc:temp respawn_location.540 set value 540
scoreboard players set #respawn_location_720 uhc.data.setup 720
scoreboard players set #respawn_location_840 uhc.data.setup 840
scoreboard players set #respawn_location_360 uhc.data.setup 360
scoreboard players set #respawn_location_960 uhc.data.setup 960
scoreboard players set #respawn_location_0 uhc.data.setup 0
scoreboard players set #respawn_location_900 uhc.data.setup 900
scoreboard players set #respawn_location_180 uhc.data.setup 180
scoreboard players set #respawn_location_780 uhc.data.setup 780
scoreboard players set #respawn_location_540 uhc.data.setup 540

## Mise à jour
scoreboard players set #update uhc.data.update 26021
