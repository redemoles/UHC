
#> uhc:start/countdown/start
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Lancement de la partie
#

execute as @a[scores={uhc.player.tp=1}] at @s positioned over motion_blocking run tp @s ~ ~ ~
scoreboard players set @a uhc.player.tp 0

# Messages
execute if score #tick_start uhc.data.temp matches 4 run function uhc:start/countdown/text

# Sons
execute if score #tick_start uhc.data.temp matches 4 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 100 1 1
execute if score #tick_start uhc.data.temp matches 81 as @a at @s run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~ 0.8 1 1
execute if score #tick_start uhc.data.temp matches 100 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score #tick_start uhc.data.temp matches 120 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score #tick_start uhc.data.temp matches 140 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5

# Configuration de la partie et démarrage
execute if score #tick_start uhc.data.temp matches 4 run function uhc:start/forceload
execute if score #tick_start uhc.data.temp matches 80 run title @a clear
execute if score #tick_start uhc.data.temp matches 80 run function uhc:start/setup_players
execute if score #tick_start uhc.data.temp matches 159 run function uhc:start/setup_uhc
