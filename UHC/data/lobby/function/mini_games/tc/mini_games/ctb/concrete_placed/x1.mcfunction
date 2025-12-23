
#> lobby:mini_games/tc/mini_games/ctb/concrete_placed/x1
#
# @within			lobby:mini_games/tc/mini_games/ctb/concrete_placed/
#
#
# @description		Récompense suite à une concrete posée
#

execute if score @s lobby.tc.red_concrete_powder_placed matches 1 run scoreboard players add #team_01 lobby.tc.player.score 1
execute if score @s lobby.tc.red_concrete_powder_placed matches 1 as @a unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run tellraw @s [{"text":"+1","color":"red"},{"text":" [","color":"#FFFFFF"},{"score":{"name":"#team_01","objective":"lobby.tc.player.score"},"color":"red"},{"text":"-","color":"#FFFFFF"},{"score":{"name":"#team_02","objective":"lobby.tc.player.score"},"color":"blue"},{"text":"]","color":"#FFFFFF"}]
execute if score @s lobby.tc.red_concrete_powder_placed matches 1 as @a unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run title @s title [{"text":"+1","color":"red"}]
execute if score @s lobby.tc.red_concrete_powder_placed matches 1 as @a unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run title @s subtitle [{"score":{"name":"#team_01","objective":"lobby.tc.player.score"},"color":"red"},{"text":"-","color":"#FFFFFF"},{"score":{"name":"#team_02","objective":"lobby.tc.player.score"},"color":"blue"}]
execute if score @s lobby.tc.red_concrete_powder_placed matches 1 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1 0.5

execute if score @s lobby.tc.blue_concrete_powder_placed matches 1 run scoreboard players add #team_02 lobby.tc.player.score 1
execute if score @s lobby.tc.blue_concrete_powder_placed matches 1 as @a unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run tellraw @s [{"text":"+1","color":"blue"},{"text":" [","color":"#FFFFFF"},{"score":{"name":"#team_01","objective":"lobby.tc.player.score"},"color":"red"},{"text":"-","color":"#FFFFFF"},{"score":{"name":"#team_02","objective":"lobby.tc.player.score"},"color":"blue"},{"text":"]","color":"#FFFFFF"}]
execute if score @s lobby.tc.blue_concrete_powder_placed matches 1 as @a unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run title @s title [{"text":"+1","color":"blue"}]
execute if score @s lobby.tc.blue_concrete_powder_placed matches 1 as @a unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run title @s subtitle [{"score":{"name":"#team_01","objective":"lobby.tc.player.score"},"color":"red"},{"text":"-","color":"#FFFFFF"},{"score":{"name":"#team_02","objective":"lobby.tc.player.score"},"color":"blue"}]
execute if score @s lobby.tc.blue_concrete_powder_placed matches 1 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1 0.5
