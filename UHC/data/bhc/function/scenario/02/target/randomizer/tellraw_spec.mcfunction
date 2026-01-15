
#> bhc:scenario/02/target/randomizer/tellraw_spec
#
# @within			bhc:scenario/02/target/
#
#
# @description		Annonce des nouvelles cibles
#

execute if entity @s[tag=uhc.temp] run return fail

scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute if entity @e[type=marker,tag=UHC,distance=0..,predicate=uhc:id_team,scores={uhc.player.lives=1..}] run return fail
tag @a[predicate=uhc:id_team] add uhc.temp
