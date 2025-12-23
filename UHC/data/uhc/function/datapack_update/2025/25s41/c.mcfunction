
#> uhc:datapack_update/2025/25s41/c
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s41c
#

scoreboard objectives add lobby.data.in_void dummy

scoreboard objectives add lobby.br.timer dummy
scoreboard objectives add lobby.br.data.record dummy "PB - Backroom"
scoreboard objectives add lobby.br.data.record.min dummy
scoreboard objectives add lobby.br.data.record.sec dummy
scoreboard objectives add lobby.br.data.record.ms dummy

team add mgs.backroom
team modify mgs.backroom collisionRule never
team modify mgs.backroom color gray
team modify mgs.backroom prefix [{"text":"■■ ","color":"gray","bold":true,"obfuscated":true}]
team modify mgs.backroom seeFriendlyInvisibles false
scoreboard players operation #former_lobby lobby.structure.data = #lobby lobby.structure.data

scoreboard players set #update uhc.data.update 25413
