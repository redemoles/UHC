
#> uhc:in_game/player/lives_remove/respawn
#
# @within			uhc:in_game/timer/players
#
#
# @description		Cooldown avant de respawn
#

# Décompte textuel
title @s[scores={uhc.timer.respawn=31}] times 0s 2s 0.5s
title @s[scores={uhc.timer.respawn=31}] title [{"text":" 3 ","color":"#FF3F3F","bold":true}]
title @s[scores={uhc.timer.respawn=21}] title [{"text":" 2 ","color":"#FF3F3F","bold":true}]
title @s[scores={uhc.timer.respawn=11}] title [{"text":" 1 ","color":"#FF3F3F","bold":true}]
title @s[scores={uhc.timer.respawn=1}] title [{"text":" GO ! ","color":"#FFE73F","bold":true}]
title @s[scores={uhc.timer.respawn=1}] subtitle [{"text":"","color":"#FF3F3F","bold":false}]

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
effect give @s minecraft:slowness infinite 9 true
effect give @s minecraft:weakness infinite 9 true
effect give @s minecraft:invisibility infinite 0 true
attribute @s minecraft:jump_strength base set 0
execute if score @s uhc.timer.respawn matches 1 run effect clear @s minecraft:resistance
execute if score @s uhc.timer.respawn matches 1 run effect clear @s minecraft:slowness
execute if score @s uhc.timer.respawn matches 1 run effect clear @s minecraft:weakness
execute if score @s uhc.timer.respawn matches 1 run effect clear @s minecraft:invisibility
execute if score @s uhc.timer.respawn matches 1 run attribute @s minecraft:jump_strength base set 0.42

# Absorption
execute if score @s uhc.player.lives matches 1.. run effect give @s minecraft:absorption 10 0
execute if score @s uhc.player.lives matches 1.. run attribute @s minecraft:max_absorption base set 4
execute if score @s uhc.player.lives matches 1.. run scoreboard players set @s uhc.timer.absorption 11
effect clear @s minecraft:absorption

# Timer respawn
scoreboard players remove @s uhc.timer.respawn 1
