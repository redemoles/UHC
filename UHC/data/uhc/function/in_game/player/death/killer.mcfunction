
#> uhc:in_game/player/death/killer
#
# @within			uhc:in_game/advancement/player_killed_player/
#
#
# @description		Fonction si morts ou kills à chaque ticks
#

# Msg FRA
execute if score #message uhc.data.setup matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"\n","color":"#3FE7FF"},{"selector":"@s","color":"#B73FFF"},{"text":" a éliminé(e) un joueur. ","color":"#FF3FFF"}]
execute if score #message uhc.data.setup matches 3 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"\n","color":"#3FE7FF"},{"selector":"@s","color":"#B73FFF"},{"text":" a éliminé(e) un joueur. ","color":"#FF3FFF"}]
execute if score #message uhc.data.setup matches 1..4 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Il reste au maximum ","color":"#FFE73F"},{"score":{"name":"#player","objective":"uhc.data.temp"},"color":"#FF9F3F"},{"text":" joueurs en vie.","color":"#FFE73F"},{"text":"\n","color":"#FF3FFF"}]
execute if score #message uhc.data.setup matches 1..8 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as ","color":"#FF3FFF"},{"score":{"name":"@s","objective":"uhc.player.kills"},"color":"#B73FFF","bold":true},{"text":" kill(s)","color":"#FF3FFF"}]

# Msg ENG
execute if score #message uhc.data.setup matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"\n","color":"#3FE7FF"},{"selector":"@s","color":"#B73FFF"},{"text":" killed a player. ","color":"#FF3FFF"}]
execute if score #message uhc.data.setup matches 3 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"\n","color":"#3FE7FF"},{"selector":"@s","color":"#B73FFF"},{"text":" killed a player. ","color":"#FF3FFF"}]
execute if score #message uhc.data.setup matches 1..4 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"There are a maximum of  ","color":"#FFE73F"},{"score":{"name":"#player","objective":"uhc.data.temp"},"color":"#FF9F3F"},{"text":" people left.","color":"#FFE73F"},{"text":"\n","color":"#FF3FFF"}]
execute if score #message uhc.data.setup matches 1..8 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"You have ","color":"#FF3FFF"},{"score":{"name":"@s","objective":"uhc.player.kills"},"color":"#B73FFF","bold":true},{"text":" kill(s)","color":"#FF3FFF"}]

# Attribution d'effets au killer
$execute if score #reward_kill_health uhc.data.temp matches 2.. run effect give @s minecraft:regeneration $(health) 1 true
execute if score #reward_kill_absorption uhc.data.setup matches 1 run effect give @s minecraft:absorption 10 0 true
execute if score #reward_kill_absorption uhc.data.setup matches 1 if score @s uhc.player.lives matches 1.. run attribute @s minecraft:max_absorption base set 4
execute if score #reward_kill_absorption uhc.data.setup matches 1 if score @s uhc.player.lives matches 1.. run scoreboard players set @s uhc.timer.absorption 11
execute if score #reward_kill_absorption uhc.data.setup matches 1 run effect clear @s minecraft:absorption
experience add @s 2 levels
execute if score #experienceless uhc.scenario matches 1 run experience add @s 4 levels

execute unless score #game_progress uhc.game_progress matches 2.. run scoreboard players add @s uhc.player.kills 1
execute unless score #game_progress uhc.game_progress matches 2.. run scoreboard players add @s uhc.player.kills.inv 1
execute unless score #game_progress uhc.game_progress matches 2.. run scoreboard players add @e[type=marker,tag=UHC,distance=0..,predicate=uhc:id_team] uhc.team.kills 1
