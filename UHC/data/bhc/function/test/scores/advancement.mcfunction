
#> bhc:test/scores/advancement
#
# @within			bhc:test/scores/
# @within			bhc:test/scores/advancement
#
# @description		Simulation d'une partie
#

advancement revoke @s[scores={uhc.id.team=1}] from bingo_0a:root
advancement grant @s[scores={uhc.id.team=1}] only bingo_0a:1_1
advancement grant @s[scores={uhc.id.team=2}] only bingo_0a:1_2
advancement grant @s[scores={uhc.id.team=3}] only bingo_0a:1_3
advancement grant @s[scores={uhc.id.team=4}] only bingo_0a:1_4
advancement grant @s[scores={uhc.id.team=5}] only bingo_0a:2_1
advancement grant @s[scores={uhc.id.team=6}] only bingo_0a:2_2
advancement grant @s[scores={uhc.id.team=7}] only bingo_0a:2_3
advancement grant @s[scores={uhc.id.team=8}] only bingo_0a:2_4
advancement grant @s[scores={uhc.id.team=9}] only bingo_0a:3_1
advancement grant @s[scores={uhc.id.team=10}] only bingo_0a:3_2
advancement grant @s[scores={uhc.id.team=11}] only bingo_0a:3_3
advancement grant @s[scores={uhc.id.team=12}] only bingo_0a:3_4
advancement grant @s[scores={uhc.id.team=13}] only bingo_0a:4_1
advancement grant @s[scores={uhc.id.team=14}] only bingo_0a:4_2
advancement grant @s[scores={uhc.id.team=15}] only bingo_0a:4_3
advancement grant @s[scores={uhc.id.team=16}] only bingo_0a:4_4

scoreboard players add @s uhc.id.team 1
execute if score @s uhc.id.team matches ..16 run function bhc:test/scores/advancement
