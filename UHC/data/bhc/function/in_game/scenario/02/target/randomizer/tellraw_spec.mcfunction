
#> bhc:in_game/scenario/02/target/randomizer/tellraw_spec
#
# @within			bhc:in_game/scenario/02/target/randomizer/main
#
#
# @description		Annonce des nouvelles cibles
#

execute if entity @s[tag=uhc.temp] run return fail

scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute if entity @e[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team,scores={uhc.player.lives=1..}] run return fail
tag @a[predicate=uhc:id/team] add uhc.temp
