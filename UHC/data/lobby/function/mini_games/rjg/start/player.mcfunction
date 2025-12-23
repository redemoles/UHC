
#> lobby:mini_games/rjg/start/player
#
# @within			lobby:mini_games/rjg/start/id_player/valid_id
#
#
# @description		Téléportation du joueur
#

$tp @s ~$(x) ~ ~ 0.0 0.0
gamemode adventure @s

scoreboard players set @s lobby.rjg.x 0
scoreboard players set @s lobby.rjg.y 0
scoreboard players set @s lobby.rjg.block_pick 0
scoreboard players set @s lobby.rjg.full_cycle 0
scoreboard players set @s lobby.rjg.wall_jump 0

execute unless score @s lobby.rjg.record.battle.score matches 0.. run scoreboard players set @s lobby.rjg.record.battle.score 0
execute unless score @s lobby.rjg.record.infinite.score matches 0.. run scoreboard players set @s lobby.rjg.record.infinite.score 0
execute unless score @s lobby.rjg.record.solo.score matches 0.. run scoreboard players set @s lobby.rjg.record.solo.score 0

scoreboard players set @s lobby.rjg.temp.min 0
scoreboard players set @s lobby.rjg.temp.sec 0
scoreboard players set @s lobby.rjg.temp.ms 0

scoreboard players operation @s lobby.rjg.id.player = #temp lobby.rjg.id.player
scoreboard players set @s lobby.rjg.score.sb -1
scoreboard players set @s lobby.rjg.x 0
scoreboard players set @s lobby.rjg.y 0

$execute positioned ~$(x) ~ ~ run function lobby:mini_games/rjg/start/block_1
