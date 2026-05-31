
#> uhc:start/countdown/start
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Lancement de la partie
#

# Chronomètre de démarrage
scoreboard players add #tick_start uhc.data.temp 1

execute as @a[scores={uhc.player.tp=1}] at @s positioned over motion_blocking run tp @s ~ ~ ~
scoreboard players set @a uhc.player.tp 0

# Messages
execute if score #tick_start uhc.data.temp matches 4 run function uhc:start/countdown/text

# Sons
execute unless score #bhc bhc.scenario matches 51..60 if score #tick_start uhc.data.temp matches 4 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100 1 1
execute if score #bhc bhc.scenario matches 51 if score #tick_start uhc.data.temp matches 4..42 run function uhc:start/countdown/sound/among_us
execute if score #tick_start uhc.data.temp matches 101 as @a at @s run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~ 0.8 1 1
execute if score #tick_start uhc.data.temp matches 120 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score #tick_start uhc.data.temp matches 140 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score #tick_start uhc.data.temp matches 160 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5

# Configuration de la partie et démarrage
execute if score #tick_start uhc.data.temp matches 80 run title @a clear
execute if score #tick_start uhc.data.temp matches 80 as @a run function uhc:start/setup/player/when_tp
execute if score #tick_start uhc.data.temp matches 100 as @p[predicate=uhc:dimension/uhc_lobby] in uhc:lobby run function uhc:start/tp/main
execute if score #tick_start uhc.data.temp matches 180 run function uhc:start/setup/uhc/main

execute if score #tick_start uhc.data.temp matches 180.. if score #start_delay uhc.data.setup matches 0 run return run function uhc:start/countdown/end
execute if score #tick_start uhc.data.temp matches 180.. run function uhc:start/delay/tick
