
#> lobby:mini_games/tc/timer/respawn
#
# @within			lobby:mini_games/tc/timer/playing
#
#
# @description		Cooldown avant respawn
#

# Timer respawn
execute unless entity @s[scores={uhc.timer.respawn=1..}] run scoreboard players set @s uhc.timer.respawn 31
scoreboard players set @s[scores={uhc.timer.respawn=1}] uhc.player.death.temp 0

# Téléportation au point de départ
execute if score #playing_ctb lobby.tc.data matches 1 as @s[scores={uhc.timer.respawn=31},tag=mgs.tc.team.01] run tp @s ~ ~5 ~19 180 0
execute if score #playing_ctb lobby.tc.data matches 1 as @s[scores={uhc.timer.respawn=31},tag=mgs.tc.team.02] run tp @s ~ ~5 ~-19 0 0
execute if score #playing_os_pve lobby.tc.data matches 1 as @s[scores={uhc.timer.respawn=31}] run tp @s ~ ~5 ~-21 0 0

# Capture The Blocks - Clear sables et Give flèches
execute if score #playing_ctb lobby.tc.data matches 1 as @s[scores={uhc.timer.respawn=31}] run clear @s minecraft:red_concrete_powder
execute if score #playing_ctb lobby.tc.data matches 1 as @s[scores={uhc.timer.respawn=31}] run clear @s minecraft:blue_concrete_powder
execute if score #playing_ctb lobby.tc.data matches 1 as @s[scores={uhc.timer.respawn=31}] run clear @s minecraft:arrow
execute if score #playing_ctb lobby.tc.data matches 1 as @s[scores={uhc.timer.respawn=31}] run give @s minecraft:arrow 16

# Décompte textuel
title @s[scores={uhc.timer.respawn=31}] times 0s 2s 0.5s
title @s[scores={uhc.timer.respawn=31}] title [{"text":" 3 ","color":"#FF3F3F","bold":true}]
title @s[scores={uhc.timer.respawn=21}] title [{"text":" 2 ","color":"#FF3F3F","bold":true}]
title @s[scores={uhc.timer.respawn=11}] title [{"text":" 1 ","color":"#FF3F3F","bold":true}]
title @s[scores={uhc.timer.respawn=1}] title [{"text":" GO ! ","color":"#FFE73F","bold":true}]
title @s[scores={uhc.timer.respawn=1}] subtitle [{"text":"","color":"#FF3F3F","bold":false}]

# Décompte sonore
execute as @s[scores={uhc.timer.respawn=31}] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 0.5 0.5
execute as @s[scores={uhc.timer.respawn=21}] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.4 0.5 0.4
execute as @s[scores={uhc.timer.respawn=11}] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.4 0.5 0.4
execute as @s[scores={uhc.timer.respawn=1}] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 1 0.5

# Effets
execute if score @s uhc.timer.respawn matches 31 run function uhc:player_status/attributes_and_effects/respawning/start
execute if score @s uhc.timer.respawn matches 1 run function uhc:player_status/attributes_and_effects/respawning/end
execute if score @s uhc.timer.respawn matches 31 if score #playing_os_pve lobby.tc.data matches 1 run attribute @s minecraft:max_health modifier add lobby.tc.os_pve -1 add_multiplied_total

# Absorption
effect give @s minecraft:absorption 3 0

# Timer respawn
scoreboard players remove @s uhc.timer.respawn 1
