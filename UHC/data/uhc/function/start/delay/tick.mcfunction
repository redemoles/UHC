
#> uhc:start/delay/tick
#
# @within			uhc:start/countdown/start
#
#
# @description		Lancement de la partie
#

# Secondes
execute if entity @p[tag=test] run scoreboard players set #tick uhc.data.temp 20
execute if score #tick uhc.data.temp matches 20 if score #sec_cooldown uhc.data.temp matches 1 run function uhc:start/countdown/end
execute if score #tick uhc.data.temp matches 20 run function uhc:in_game/timer/second

## TP
# TP un joueur au sol après spawn ou respawn
execute as @a[scores={uhc.player.tp=1}] at @s positioned over motion_blocking run tp @s ~ ~ ~
scoreboard players set @a uhc.player.tp 0

## Hotbar
function uhc:in_game/timer/hotbar/root
