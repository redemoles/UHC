
#> uhc:in_game/player/death/respawn
#
# @within			uhc:in_game/player/tick
#
#
# @description		Cooldown avant de respawn
#

# Décompte textuel
title @s[scores={uhc.timer.respawn=31}] times 0s 2s 0.5s
title @s[scores={uhc.timer.respawn=31}] title [{"text":" 3 ","color":"#FF3F3F","bold":true}]
title @s[scores={uhc.timer.respawn=21}] title [{"text":" 2 ","color":"#FF3F3F","bold":true}]
title @s[scores={uhc.timer.respawn=11}] title [{"text":" 1 ","color":"#FF3F3F","bold":true}]
title @s[scores={uhc.timer.respawn=01}] title [{"text":" GO ! ","color":"#FFE73F","bold":true}]
title @s[scores={uhc.timer.respawn=01}] subtitle [{"text":"","color":"#FF3F3F","bold":false}]

execute if score #lives uhc.player.lives matches 3 run title @s[scores={uhc.timer.respawn=31,uhc.player.lives=2}] subtitle [{"text":"❤❤","color":"#3FE7FF", "bold":false}, {"text":"❤","color":"#3F9F9F", "bold":false}]
execute if score #lives uhc.player.lives matches 3 run title @s[scores={uhc.timer.respawn=21,uhc.player.lives=2}] subtitle [{"text":"❤❤","color":"#FFE73F", "bold":false}, {"text":"❤","color":"#3F3F3F", "bold":false}]

execute if score #lives uhc.player.lives matches 3 run title @s[scores={uhc.timer.respawn=31,uhc.player.lives=1}] subtitle [{"text":"❤","color":"#FFE73F", "bold":false}, {"text":"❤","color":"#9F933F", "bold":false}, {"text":"❤","color":"#3F3F3F", "bold":false}]
execute if score #lives uhc.player.lives matches 3 run title @s[scores={uhc.timer.respawn=21,uhc.player.lives=1}] subtitle [{"text":"❤","color":"#E73F3F", "bold":false}, {"text":"❤❤","color":"#3F3F3F", "bold":false}]

execute if score #lives uhc.player.lives matches 2 run title @s[scores={uhc.timer.respawn=31,uhc.player.lives=1}] subtitle [{"text":"❤","color":"#FFE73F", "bold":false}, {"text":"❤","color":"#9F933F", "bold":false}]
execute if score #lives uhc.player.lives matches 2 run title @s[scores={uhc.timer.respawn=21,uhc.player.lives=1}] subtitle [{"text":"❤","color":"#E73F3F", "bold":false}, {"text":"❤","color":"#3F3F3F", "bold":false}]

# Décompte sonore
playsound minecraft:block.note_block.pling master @s[scores={uhc.timer.respawn=31}] ~ ~ ~ 0.5 0.5 0.5
playsound minecraft:block.note_block.pling master @s[scores={uhc.timer.respawn=21}] ~ ~ ~ 0.4 0.5 0.4
playsound minecraft:block.note_block.pling master @s[scores={uhc.timer.respawn=11}] ~ ~ ~ 0.4 0.5 0.4
playsound minecraft:block.note_block.pling master @s[scores={uhc.timer.respawn=1}] ~ ~ ~ 0.5 1 0.5

# Effets
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:invisibility infinite 0 true
attribute @s minecraft:attack_damage modifier add uhc.waiting_respawn -1.0 add_multiplied_total
attribute @s minecraft:jump_strength modifier add uhc.waiting_respawn -1.0 add_multiplied_total
attribute @s minecraft:movement_speed modifier add uhc.waiting_respawn -1.0 add_multiplied_total
execute if score @s uhc.timer.respawn matches 1 run effect clear @s minecraft:resistance
execute if score @s uhc.timer.respawn matches 1 run effect clear @s minecraft:invisibility
execute if score @s uhc.timer.respawn matches 1 run attribute @s minecraft:attack_damage modifier remove uhc.waiting_respawn
execute if score @s uhc.timer.respawn matches 1 if score #no_fall uhc.scenario matches 1 run attribute @s minecraft:fall_damage_multiplier modifier add uhc.no_fall -1.0 add_multiplied_total
execute if score @s uhc.timer.respawn matches 1 run attribute @s minecraft:jump_strength modifier remove uhc.waiting_respawn
execute if score @s uhc.timer.respawn matches 1 if score #hastey_boys uhc.scenario matches 1 run attribute @s minecraft:mining_efficiency modifier add uhc.hastey_boys 10 add_value
execute if score @s uhc.timer.respawn matches 1 run attribute @s minecraft:movement_speed modifier remove uhc.waiting_respawn

# Absorption
execute if score @s uhc.player.lives matches 1.. run effect give @s minecraft:absorption 10 1
execute if score @s uhc.player.lives matches 1.. run attribute @s minecraft:max_absorption base set 10
execute if score @s uhc.player.lives matches 1.. run scoreboard players set @s uhc.timer.absorption 11
effect clear @s minecraft:absorption

# Timer respawn
scoreboard players remove @s uhc.timer.respawn 1
