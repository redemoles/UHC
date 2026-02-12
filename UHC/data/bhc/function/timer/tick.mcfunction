
#> bhc:timer/tick
#
# @within			uhc:in_game/timer/tick
#
#
# @description		tock
#

## Catégorie Survie
scoreboard players add #tick bhc.data.temp 1
execute if entity @p[tag=test] run scoreboard players add #tick bhc.data.temp 19

## Ère Viking
# Target list
execute if entity @p[scores={bhc.target.list=1..}] run function bhc:scenario/02/target/spec/
# Test
execute if entity @p[scores={bhc.test.target_kill=1..}] as @p[scores={bhc.test.target_kill=1..}] in uhc:lobby run function bhc:test/bhc_2/target_list/kill
