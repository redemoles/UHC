
#> uhc:in_game/scenario/blood_cycle/randomizer
#
# @within			uhc:in_game/timer/minutes
#
#
# @description		
#

scoreboard players remove #minutes uhc.scenario.blood_cycle 10

# Nouveau cycle
execute store result score #random uhc.scenario.blood_cycle run random value 1..6

execute if score #random uhc.scenario.blood_cycle matches 1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Miner du ","color":"#FFFFFF","bold":false},{"text":"Charbon","color":"#6F6F6F","bold":false},{"text":" fait désormais des dégâts","color":"#FFFFFF","bold":false}]
execute if score #random uhc.scenario.blood_cycle matches 2 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Miner du ","color":"#FFFFFF","bold":false},{"text":"Fer","color":"#CFCFCF","bold":false},{"text":" fait désormais des dégâts","color":"#FFFFFF","bold":false}]
execute if score #random uhc.scenario.blood_cycle matches 3 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Miner de l'","color":"#FFFFFF","bold":false},{"text":"Or","color":"#FFE73F","bold":false},{"text":" fait désormais des dégâts","color":"#FFFFFF","bold":false}]
execute if score #random uhc.scenario.blood_cycle matches 4 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Miner du ","color":"#FFFFFF","bold":false},{"text":"Lapis","color":"#3F3FFF","bold":false},{"text":" fait désormais des dégâts","color":"#FFFFFF","bold":false}]
execute if score #random uhc.scenario.blood_cycle matches 5 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Miner de la ","color":"#FFFFFF","bold":false},{"text":"Redstone","color":"#FF3F3F","bold":false},{"text":" fait désormais des dégâts","color":"#FFFFFF","bold":false}]
execute if score #random uhc.scenario.blood_cycle matches 6 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Miner du ","color":"#FFFFFF","bold":false},{"text":"Diamant","color":"#3FE7FF","bold":false},{"text":" fait désormais des dégâts","color":"#FFFFFF","bold":false}]

execute if score #random uhc.scenario.blood_cycle matches 1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Mining ","color":"#FFFFFF","bold":false},{"text":"Coal","color":"#6F6F6F","bold":false},{"text":" now deals damage","color":"#FFFFFF","bold":false}]
execute if score #random uhc.scenario.blood_cycle matches 2 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Mining ","color":"#FFFFFF","bold":false},{"text":"Iron","color":"#CFCFCF","bold":false},{"text":" now deals damage","color":"#FFFFFF","bold":false}]
execute if score #random uhc.scenario.blood_cycle matches 3 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Mining ","color":"#FFFFFF","bold":false},{"text":"Gold","color":"#FFE73F","bold":false},{"text":" now deals damage","color":"#FFFFFF","bold":false}]
execute if score #random uhc.scenario.blood_cycle matches 4 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Mining ","color":"#FFFFFF","bold":false},{"text":"Lapis","color":"#3F3FFF","bold":false},{"text":" now deals damage","color":"#FFFFFF","bold":false}]
execute if score #random uhc.scenario.blood_cycle matches 5 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Mining ","color":"#FFFFFF","bold":false},{"text":"Redstone","color":"#FF3F3F","bold":false},{"text":" now deals damage","color":"#FFFFFF","bold":false}]
execute if score #random uhc.scenario.blood_cycle matches 6 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Blood Cycle ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Mining ","color":"#FFFFFF","bold":false},{"text":"Diamond","color":"#3FE7FF","bold":false},{"text":" now deals damage","color":"#FFFFFF","bold":false}]
