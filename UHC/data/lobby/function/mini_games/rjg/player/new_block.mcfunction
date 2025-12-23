
#> lobby:mini_games/rjg/player/new_block
#
# @within			lobby:mini_games/rjg/tick
#
#
# @description		Prévoir la génération d'un nouveau block
#

## Score
scoreboard players add @s lobby.rjg.score.sb 1

## Predicates markers
scoreboard players operation #temp lobby.rjg.score.inv = @s lobby.rjg.score.sb
scoreboard players operation #temp+1 lobby.rjg.score.inv = @s lobby.rjg.score.sb
scoreboard players add #temp+1 lobby.rjg.score.inv 1
scoreboard players operation #temp+2 lobby.rjg.score.inv = @s lobby.rjg.score.sb
scoreboard players add #temp+2 lobby.rjg.score.inv 2
scoreboard players operation #cycle_temp+2 lobby.rjg.score.inv = #temp+2 lobby.rjg.score.inv
scoreboard players operation @s lobby.rjg.full_cycle *= #50 uhc.data.numbers
scoreboard players operation #cycle_temp+2 lobby.rjg.score.inv -= @s lobby.rjg.full_cycle
scoreboard players operation @s lobby.rjg.full_cycle /= #50 uhc.data.numbers
scoreboard players operation #temp-1 lobby.rjg.score.inv = @s lobby.rjg.score.sb
scoreboard players remove #temp-1 lobby.rjg.score.inv 1
scoreboard players operation #temp-2 lobby.rjg.score.inv = @s lobby.rjg.score.sb
scoreboard players remove #temp-2 lobby.rjg.score.inv 2

## Nouveau block
scoreboard players set #new_block lobby.rjg.x 0
scoreboard players set #new_block lobby.rjg.y 0
scoreboard players set #wall_jump lobby.rjg.wall_jump 0
execute store result score #new_block lobby.rjg.block_pick run random value 1..100

# moss / tuff / copper / ice / prismarine / red nether brick / purpur / jaune / honey comb-resin / netherrack / blackstone / tuff / quartz
execute if score #cycle_temp+2 lobby.rjg.score.inv matches 000..010 run function lobby:mini_games/rjg/pattern/_level/000-010
execute if score #cycle_temp+2 lobby.rjg.score.inv matches 011..020 run function lobby:mini_games/rjg/pattern/_level/011-020
execute if score #cycle_temp+2 lobby.rjg.score.inv matches 021..030 run function lobby:mini_games/rjg/pattern/_level/021-030
execute if score #cycle_temp+2 lobby.rjg.score.inv matches 031..040 run function lobby:mini_games/rjg/pattern/_level/031-040
execute if score #cycle_temp+2 lobby.rjg.score.inv matches 041..050 run function lobby:mini_games/rjg/pattern/_level/041-050
execute if score #cycle_temp+2 lobby.rjg.score.inv matches 050 run scoreboard players set #pattern lobby.rjg.block_pick 09

execute if score #pattern lobby.rjg.block_pick matches 01 run function lobby:mini_games/rjg/pattern/simple/
execute if score #pattern lobby.rjg.block_pick matches 02 run function lobby:mini_games/rjg/pattern/simple_vine/
execute if score #pattern lobby.rjg.block_pick matches 11 run function lobby:mini_games/rjg/pattern/fence/
execute if score #pattern lobby.rjg.block_pick matches 12 run function lobby:mini_games/rjg/pattern/fence/2_in_a_row
execute if score #pattern lobby.rjg.block_pick matches 21 run function lobby:mini_games/rjg/pattern/neo/
execute if score #pattern lobby.rjg.block_pick matches 31 run function lobby:mini_games/rjg/pattern/wall_jump/
execute if score #pattern lobby.rjg.block_pick matches 09 run function lobby:mini_games/rjg/pattern/end_cycle/

# Mémorisation du pattern nouvellement placé
scoreboard players operation @s lobby.rjg.block_pick = #pattern lobby.rjg.block_pick
scoreboard players operation @s lobby.rjg.wall_jump = #wall_jump lobby.rjg.wall_jump

# Fin de cycle
execute if score #cycle_temp+2 lobby.rjg.score.inv matches 002 if score @s lobby.rjg.full_cycle matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" Infini","color":"#FFE73F","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" "},{"selector":"@s"},{"text":" a terminé "},{"score":{"name":"@s","objective":"lobby.rjg.full_cycle"},"color":"#FFE73F"},{"text":" cycle sans tomber !"}]
execute if score #cycle_temp+2 lobby.rjg.score.inv matches 002 if score @s lobby.rjg.full_cycle matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Infinite ","color":"#FFE73F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" "},{"selector":"@s"},{"text":" completed "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"},{"text":" cycle without falling!"}]

execute if score #cycle_temp+2 lobby.rjg.score.inv matches 002 if score @s lobby.rjg.full_cycle matches 2.. run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" Infini","color":"#FFE73F","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" "},{"selector":"@s"},{"text":" a terminé "},{"score":{"name":"@s","objective":"lobby.rjg.full_cycle"},"color":"#FFE73F"},{"text":" cycles sans tomber !"}]
execute if score #cycle_temp+2 lobby.rjg.score.inv matches 002 if score @s lobby.rjg.full_cycle matches 2.. run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Infinite ","color":"#FFE73F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" "},{"selector":"@s"},{"text":" completed "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"},{"text":" cycles without falling!"}]
