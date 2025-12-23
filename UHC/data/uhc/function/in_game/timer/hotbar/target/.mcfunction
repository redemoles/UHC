
#> uhc:in_game/timer/hotbar/target/
#
# @within			uhc:in_game/timer/tick
#
#
# @description      Hotbar de target
#

# Test si boussole en main
execute if entity @s[tag=uhc.player,predicate=!uhc:target/tracker] run return run tag @s remove uhc.target.targeter_last_tick
tag @s add uhc.target.targeter

execute if entity @s[tag=!uhc.target.targeter_last_tick,predicate=uhc:target/tracker] run function uhc:in_game/timer/hotbar/target/update
execute unless score #tick uhc.data.temp matches 1..9 unless score #tick uhc.data.temp matches 11..19 run function uhc:in_game/timer/hotbar/target/update

execute if entity @s[tag=uhc.target.targeter_success] run tag @s add uhc.target.targeter_done
tag @s add uhc.target.targeter_last_tick
tag @s remove uhc.target.targeter
