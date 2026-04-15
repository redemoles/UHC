
#> uhc:translation/bhc/02_viking_era/target_killer_other
#
# @within			bhc:scenario/02/target/death/killer/main
#
#
# @description		Annonce dans le chat de la réalisation d'une ligne
#

## FRA - Français / French
execute if score #stepb_end bhc.data.temp matches 1.. as @a[predicate=uhc:id/team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"-5","color":"#FF3F3F","bold":true},{"text":" points ","color":"#DF0000","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"}]
execute if score #stepb_end bhc.data.temp matches ..0 as @a[predicate=uhc:id/team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"+1","color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"}]

## ENG - English
execute if score #stepb_end bhc.data.temp matches 1.. as @a[predicate=uhc:id/team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"-5","color":"#FF3F3F","bold":true},{"text":" points ","color":"#DF0000","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"}]
execute if score #stepb_end bhc.data.temp matches ..0 as @a[predicate=uhc:id/team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"+1","color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"}]
