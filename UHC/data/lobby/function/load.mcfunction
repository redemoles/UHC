
#> lobby:load
#
# @within			uhc:pre_game/timer/tick
#
#
# @description		Création du lobby et des scoreboards au premier démarrage
#

execute if score #lobby lobby.structure.data matches 00..09 run time set 10000
execute if score #lobby lobby.structure.data matches 10..11 run time set 1000
execute if score #lobby lobby.structure.data matches 12..19 run time set 18000
execute if score #lobby lobby.structure.data matches 1.. run return fail

execute in uhc:lobby run fill 12 64 12 -12 64 -12 minecraft:barrier
execute in uhc:lobby run fill 64 159 64 -63 159 -63 minecraft:barrier

scoreboard objectives add lobby.structure.data dummy
scoreboard players set #lobby lobby.structure.data 12
scoreboard players set #loaded lobby.structure.data 0
scoreboard players set #tick lobby.structure.data -1

scoreboard objectives add lobby.data.in_void dummy

scoreboard objectives add lobby.br.timer dummy
scoreboard objectives add lobby.br.data.record dummy "PB - Backroom"
scoreboard objectives add lobby.br.data.record.min dummy
scoreboard objectives add lobby.br.data.record.sec dummy
scoreboard objectives add lobby.br.data.record.ms dummy

scoreboard objectives add lobby.rjg.id.player dummy
scoreboard objectives add lobby.rjg.score.sb dummy "Score"
scoreboard objectives add lobby.rjg.score.inv dummy
scoreboard objectives add lobby.rjg.x dummy
scoreboard objectives add lobby.rjg.y dummy
scoreboard objectives add lobby.rjg.z dummy
scoreboard objectives add lobby.rjg.block_pick dummy
scoreboard objectives add lobby.rjg.full_cycle dummy
scoreboard objectives add lobby.rjg.wall_jump dummy
scoreboard objectives add lobby.rjg.record.battle.score dummy "Score - Jump Battle"
scoreboard objectives add lobby.rjg.record.battle.min dummy
scoreboard objectives add lobby.rjg.record.battle.sec dummy
scoreboard objectives add lobby.rjg.record.battle.ms dummy
scoreboard objectives add lobby.rjg.record.infinite.score dummy "Score - Jump Infini"
scoreboard objectives add lobby.rjg.record.solo.score dummy "Score - Jump 150b"
scoreboard objectives add lobby.rjg.record.solo.min dummy
scoreboard objectives add lobby.rjg.record.solo.sec dummy
scoreboard objectives add lobby.rjg.record.solo.ms dummy
scoreboard objectives add lobby.rjg.temp.min dummy
scoreboard objectives add lobby.rjg.temp.sec dummy
scoreboard objectives add lobby.rjg.temp.ms dummy

execute unless score #record lobby.rjg.record.battle.score matches 0.. run scoreboard players set #record lobby.rjg.record.battle.score 0
execute unless score #record lobby.rjg.record.infinite.score matches 0.. run scoreboard players set #record lobby.rjg.record.infinite.score 0
execute unless score #record lobby.rjg.record.solo.score matches 0.. run scoreboard players set #record lobby.rjg.record.solo.score 0

scoreboard objectives add lobby.tc.data dummy
scoreboard objectives add lobby.tc.inventory dummy
scoreboard objectives add lobby.tc.blue_concrete_powder_mined minecraft.mined:minecraft.blue_concrete_powder
scoreboard objectives add lobby.tc.red_concrete_powder_mined minecraft.mined:minecraft.red_concrete_powder
scoreboard objectives add lobby.tc.blue_concrete_powder_placed minecraft.used:minecraft.blue_concrete_powder
scoreboard objectives add lobby.tc.red_concrete_powder_placed minecraft.used:minecraft.red_concrete_powder
scoreboard objectives add lobby.tc.crying_obsidian_mined minecraft.mined:minecraft.crying_obsidian
scoreboard objectives add lobby.tc.player.click_to_join trigger
scoreboard objectives add lobby.tc.player.score dummy "Win - Trial Chamber"

scoreboard objectives add lobby.tc.data.record.craft dummy "PB - Craft"
scoreboard objectives add lobby.tc.data.record.craft.min dummy
scoreboard objectives add lobby.tc.data.record.craft.sec dummy
scoreboard objectives add lobby.tc.data.record.craft.ms dummy
scoreboard objectives add lobby.tc.data.record.memory_build.taiga dummy "PB - Memory Build Taiga"
scoreboard objectives add lobby.tc.data.record.memory_build.taiga.min dummy
scoreboard objectives add lobby.tc.data.record.memory_build.taiga.sec dummy
scoreboard objectives add lobby.tc.data.record.memory_build.taiga.ms dummy
scoreboard objectives add lobby.tc.data.record.memory_build.jungle dummy "PB - Memory Build Jungle"
scoreboard objectives add lobby.tc.data.record.memory_build.jungle.min dummy
scoreboard objectives add lobby.tc.data.record.memory_build.jungle.sec dummy
scoreboard objectives add lobby.tc.data.record.memory_build.jungle.ms dummy
scoreboard objectives add lobby.tc.data.record.memory_build.cherry dummy "PB - Memory Build Cherry"
scoreboard objectives add lobby.tc.data.record.memory_build.cherry.min dummy
scoreboard objectives add lobby.tc.data.record.memory_build.cherry.sec dummy
scoreboard objectives add lobby.tc.data.record.memory_build.cherry.ms dummy
scoreboard objectives add lobby.tc.data.record.os_pve.classic_01 dummy "PB - OS PvE Classique 01"
scoreboard objectives add lobby.tc.data.record.os_pve.classic_01.min dummy
scoreboard objectives add lobby.tc.data.record.os_pve.classic_01.sec dummy
scoreboard objectives add lobby.tc.data.record.os_pve.classic_01.ms dummy
scoreboard objectives add lobby.tc.data.record.os_pve.temperature_01 dummy "PB - OS PvE Classique 01"
scoreboard objectives add lobby.tc.data.record.os_pve.temperature_01.min dummy
scoreboard objectives add lobby.tc.data.record.os_pve.temperature_01.sec dummy
scoreboard objectives add lobby.tc.data.record.os_pve.temperature_01.ms dummy
scoreboard objectives add lobby.tc.data.record.os_pvp dummy "PB - OS PvP"
scoreboard objectives add lobby.tc.data.record.parkour.classic_01 dummy "PB - Parkour Classique 01"
scoreboard objectives add lobby.tc.data.record.parkour.classic_01.min dummy
scoreboard objectives add lobby.tc.data.record.parkour.classic_01.sec dummy
scoreboard objectives add lobby.tc.data.record.parkour.classic_01.ms dummy
scoreboard objectives add lobby.tc.data.record.parkour.honey_01 dummy "PB - Honey parkour 01"
scoreboard objectives add lobby.tc.data.record.parkour.honey_01.min dummy
scoreboard objectives add lobby.tc.data.record.parkour.honey_01.sec dummy
scoreboard objectives add lobby.tc.data.record.parkour.honey_01.ms dummy
scoreboard objectives add lobby.tc.data.record.parkour.piston_slime_01 dummy "PB - Parkour Piston slime 01"
scoreboard objectives add lobby.tc.data.record.parkour.piston_slime_01.min dummy
scoreboard objectives add lobby.tc.data.record.parkour.piston_slime_01.sec dummy
scoreboard objectives add lobby.tc.data.record.parkour.piston_slime_01.ms dummy
scoreboard objectives add lobby.tc.data.record.parkour.chains dummy "PB - Parkour Chains"
scoreboard objectives add lobby.tc.data.record.parkour.chains.min dummy
scoreboard objectives add lobby.tc.data.record.parkour.chains.sec dummy
scoreboard objectives add lobby.tc.data.record.parkour.chains.ms dummy
scoreboard objectives add lobby.tc.data.record.puzzle dummy "PB - Puzzle"
scoreboard objectives add lobby.tc.data.record.puzzle.min dummy
scoreboard objectives add lobby.tc.data.record.puzzle.sec dummy
scoreboard objectives add lobby.tc.data.record.puzzle.ms dummy

scoreboard objectives add lobby.tc.record.craft dummy "PB - Craft"
scoreboard objectives add lobby.tc.record.ctb.difference.for dummy
scoreboard objectives add lobby.tc.record.ctb.difference.against dummy
scoreboard objectives add lobby.tc.record.ctb.difference.difference dummy "PB - Capture The Blocks (+/-)"
scoreboard objectives add lobby.tc.record.ctb.maximum.for dummy "PB - Capture The Blocks (max.)"
scoreboard objectives add lobby.tc.record.ctb.maximum.against dummy
scoreboard objectives add lobby.tc.record.ctb.maximum.difference dummy
scoreboard objectives add lobby.tc.record.memory_build.taiga dummy "PB - Memory Build Taiga"
scoreboard objectives add lobby.tc.record.memory_build.jungle dummy "PB - Memory Build Jungle"
scoreboard objectives add lobby.tc.record.memory_build.cherry dummy "PB - Memory Build Cherry"
scoreboard objectives add lobby.tc.record.os_pve.classic_01 dummy "PB - OS PvE Classique 01"
scoreboard objectives add lobby.tc.record.os_pve.temperature_01 dummy "PB - OS PvE Classique 01"
scoreboard objectives add lobby.tc.record.os_pvp dummy "PB - OS PvP"
scoreboard objectives add lobby.tc.record.parkour.classic_01 dummy "PB - Parkour Classique 01"
scoreboard objectives add lobby.tc.record.parkour.honey_01 dummy "PB - Honey parkour 01"
scoreboard objectives add lobby.tc.record.parkour.piston_slime_01 dummy "PB - Parkour Piston slime 01"
scoreboard objectives add lobby.tc.record.parkour.chains dummy "PB - Parkour Chains"
scoreboard objectives add lobby.tc.record.puzzle dummy "PB - Puzzle"

scoreboard players set #timer_pre_start_tick lobby.tc.data -1
scoreboard players set #timer_start_tick lobby.tc.data 0
scoreboard players set #timer_end_tick lobby.tc.data 0
scoreboard players set #timer_game lobby.tc.data -1
scoreboard players set #timer_game_min lobby.tc.data -1
scoreboard players set #timer_game_sec lobby.tc.data -1

team add mgs.backroom
team modify mgs.backroom collisionRule never
team modify mgs.backroom color gray
team modify mgs.backroom prefix [{"text":"■■ ","color":"gray","bold":true,"obfuscated":true}]
team modify mgs.backroom seeFriendlyInvisibles false

function lobby:mini_games/tc/mini_games/_order/marker_summon
