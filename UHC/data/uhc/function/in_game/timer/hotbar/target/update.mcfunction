
#> uhc:in_game/timer/hotbar/target/update
#
# @within			uhc:in_game/timer/hotbar/target/
#
#
# @description      Hotbar de target
#

tag @s remove uhc.target.targeter_success
data modify storage uhc:temp target set value {}

# Test si d'autres joueurs dans l'équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute if score #tracker_allies uhc.data.setup matches 1 if entity @p[tag=uhc.player,tag=!uhc.target.targeter,predicate=uhc:id/team] at @s run function uhc:in_game/timer/hotbar/target/team

# Bingo UHC
scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute if score #bhc bhc.scenario matches 02 if score #stepb_start bhc.data.temp matches ..0 in uhc:lobby run function bhc:scenario/02/target/hotbar/

# Hotbar
function uhc:in_game/timer/hotbar/target/hotbar with storage uhc:temp target

tag @a[tag=uhc.target.targeted_done] remove uhc.target.targeted_done
