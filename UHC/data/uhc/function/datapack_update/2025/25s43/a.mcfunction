
#> uhc:datapack_update/2025/25s43/a
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s43a
#

scoreboard objectives add lobby.rjg.id.player dummy
scoreboard objectives add lobby.rjg.score.sb dummy "Score"
scoreboard objectives add lobby.rjg.score.inv dummy
scoreboard objectives add lobby.rjg.x dummy
scoreboard objectives add lobby.rjg.y dummy
scoreboard objectives add lobby.rjg.z dummy
scoreboard objectives add lobby.rjg.block_pick dummy
scoreboard objectives add lobby.rjg.full_cycle dummy
scoreboard objectives add lobby.rjg.wall_jump dummy
scoreboard objectives add lobby.rjg.record.battle.score dummy "Score - Jump Battle"
scoreboard objectives add lobby.rjg.record.battle.min dummy
scoreboard objectives add lobby.rjg.record.battle.sec dummy
scoreboard objectives add lobby.rjg.record.battle.ms dummy
scoreboard objectives add lobby.rjg.record.infinite.score dummy "Score - Jump Infini"
scoreboard objectives add lobby.rjg.record.solo.score dummy "Score - Jump 150b"
scoreboard objectives add lobby.rjg.record.solo.min dummy
scoreboard objectives add lobby.rjg.record.solo.sec dummy
scoreboard objectives add lobby.rjg.record.solo.ms dummy

execute unless score #record lobby.rjg.record.battle.score matches 0.. run scoreboard players set #record lobby.rjg.record.battle.score 0
execute unless score #record lobby.rjg.record.infinite.score matches 0.. run scoreboard players set #record lobby.rjg.record.infinite.score 0
execute unless score #record lobby.rjg.record.solo.score matches 0.. run scoreboard players set #record lobby.rjg.record.solo.score 0

scoreboard players set #update uhc.data.update 25431

execute if score #game_progress uhc.game_progress matches 1.. run tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 25s43a","color":"#FFE73F"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Mise à jour terminée.","color":"#FFFFFF"}]
execute if score #game_progress uhc.game_progress matches 1.. run tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 25s43a","color":"#FFE73F"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":" Update complete.","color":"#FFFFFF"}]
