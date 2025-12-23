
#> nzl:timer/hotbar/
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Configuration du timer 
#

$execute as @a[tag=!uhc.target.targeter_done,tag=uhc.spec,scores={uhc.player.lang=061801}] run title @s actionbar [{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#7FBFFF","bold":true}, {"text":":","color":"#3F9FFF"}, {"text":"$(seconds)","color":"#7FBFFF"}, {"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#7FBFFF"}, {"text":" - ","color":"#3F9FFF"}, {"score":{"name":"#team","objective":"uhc.data.temp"},"color":"#7FBFFF"}, {"text":" équipe$(team)","color":"#3F9FFF"}, {"text":" - ","color":"#3F9FFF"}, {"score":{"name":"#player","objective":"uhc.data.temp"},"color":"#7FBFFF"}, {"text":" joueur$(player)","color":"#3F9FFF"}, {"text":" - ","color":"#3F9FFF"}, {"score":{"name":"#border_size","objective":"uhc.data.temp"},"color":"#7FBFFF"}, {"text":"/","color":"#3F9FFF"}, {"text":"-","color":"#7FBFFF"}, {"score":{"name":"#border_size","objective":"uhc.data.temp"},"color":"#7FBFFF"}]
$execute as @a[tag=!uhc.target.targeter_done,tag=uhc.spec,scores={uhc.player.lang=051407}] run title @s actionbar [{"score":{"name":"#minutes","objective":"uhc.data.temp"},"color":"#7FBFFF","bold":true}, {"text":":","color":"#3F9FFF"}, {"text":"$(seconds)","color":"#7FBFFF"}, {"score":{"name":"#seconds","objective":"uhc.data.temp"},"color":"#7FBFFF"}, {"text":" - ","color":"#3F9FFF"}, {"score":{"name":"#team","objective":"uhc.data.temp"},"color":"#7FBFFF"}, {"text":" team$(team)","color":"#3F9FFF"}, {"text":" - ","color":"#3F9FFF"}, {"score":{"name":"#player","objective":"uhc.data.temp"},"color":"#7FBFFF"}, {"text":" player$(player)","color":"#3F9FFF"}, {"text":" - ","color":"#3F9FFF"}, {"score":{"name":"#border_size","objective":"uhc.data.temp"},"color":"#7FBFFF"}, {"text":"/","color":"#3F9FFF"}, {"text":"-","color":"#7FBFFF"}, {"score":{"name":"#border_size","objective":"uhc.data.temp"},"color":"#7FBFFF"}]

scoreboard players operation @a nzl.attack.cooldown /= #20 uhc.data.numbers
scoreboard players operation @a nzl.attack.length /= #20 uhc.data.numbers

execute if score #shrink_1_time_left uhc.data.temp matches 1.. run function nzl:timer/hotbar/border_off
execute if score #shrink_1_time_left uhc.data.temp matches ..0 run function nzl:timer/hotbar/border_on
