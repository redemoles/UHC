
#> bhc:scenario/02/target/death/killer/
#
# @within			bhc:scenario/02/target/death/
#
#
# @description		Détection nouveau kill 
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @s add bhc.temp.killer

# Si tueur ciblé
execute if entity @s[predicate=bhc:bhc_2/this_is_targeted,predicate=!bhc:bhc_2/this_is_targeter] as @a[predicate=!uhc:id_team,tag=uhc.spec,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Assassin tué","color":"#CFCFCF","italic":true}]
execute if entity @s[predicate=bhc:bhc_2/this_is_targeted,predicate=!bhc:bhc_2/this_is_targeter] as @a[predicate=uhc:id_team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"+5","color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"},{"text":"Assassin tué","color":"#CFCFCF","italic":true,"bold":false}]
execute if entity @s[predicate=bhc:bhc_2/this_is_targeted,predicate=!bhc:bhc_2/this_is_targeter] as @a[predicate=!uhc:id_team,tag=uhc.spec,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Assassin killed","color":"#CFCFCF","italic":true}]
execute if entity @s[predicate=bhc:bhc_2/this_is_targeted,predicate=!bhc:bhc_2/this_is_targeter] as @a[predicate=uhc:id_team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"+5","color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"},{"text":"Assassin killed","color":"#CFCFCF","italic":true,"bold":false}]
execute if entity @s[predicate=bhc:bhc_2/this_is_targeted,predicate=!bhc:bhc_2/this_is_targeter] run give @s minecraft:golden_apple 2
execute if entity @s[predicate=bhc:bhc_2/this_is_targeted,predicate=!bhc:bhc_2/this_is_targeter] run return run scoreboard players set #points bhc.kills.score.inv 4

# Si tueur assassin
execute if entity @s[predicate=bhc:bhc_2/this_is_targeter] run return run function bhc:scenario/02/target/death/killer/targeter

# Si ni ciblé ni assassin pendant que le Bingo de l'Ère Viking est actif
execute if score #stepb_end bhc.data.temp matches 1.. if entity @s[predicate=!bhc:bhc_2/this_is_targeter,predicate=!bhc:bhc_2/this_is_targeted] run scoreboard players set #points bhc.kills.score.inv -6
execute if score #stepb_end bhc.data.temp matches 1.. if entity @s[predicate=!bhc:bhc_2/this_is_targeter,predicate=!bhc:bhc_2/this_is_targeted] run scoreboard players set #cancel_additional_item uhc.data.temp 1
execute if score #stepb_end bhc.data.temp matches 1.. if entity @s[predicate=!bhc:bhc_2/this_is_targeter,predicate=!bhc:bhc_2/this_is_targeted] as @a[predicate=uhc:id_team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"-5","color":"#FF3F3F","bold":true},{"text":" points ","color":"#DF0000","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"}]
execute if score #stepb_end bhc.data.temp matches 1.. if entity @s[predicate=!bhc:bhc_2/this_is_targeter,predicate=!bhc:bhc_2/this_is_targeted] as @a[predicate=uhc:id_team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"-5","color":"#FF3F3F","bold":true},{"text":" points ","color":"#DF0000","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"}]
execute if score #stepb_end bhc.data.temp matches ..0 if entity @s[predicate=!bhc:bhc_2/this_is_targeter,predicate=!bhc:bhc_2/this_is_targeted] as @a[predicate=uhc:id_team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"+1","color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"}]
execute if score #stepb_end bhc.data.temp matches ..0 if entity @s[predicate=!bhc:bhc_2/this_is_targeter,predicate=!bhc:bhc_2/this_is_targeted] as @a[predicate=uhc:id_team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"+1","color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"}]
