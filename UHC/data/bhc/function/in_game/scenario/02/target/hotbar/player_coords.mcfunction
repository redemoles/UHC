
#> bhc:in_game/scenario/02/target/hotbar/player_coords
#
# @within			uhc:in_game/timer/hotbar/target/team
#
#
# @description		Ajout de l'équipe cible dans la Hotbar 
#

tag @p[tag=uhc.player,predicate=!bhc:bhc_2/safe_target,predicate=!bhc:bhc_2/last_death_same_cycle,predicate=bhc:bhc_2/this_is_targeted,distance=0..] add uhc.target.targeted_current

# Distance x et z
scoreboard players operation @s uhc.player.target.distance.x = @s uhc.player.x
scoreboard players operation @s uhc.player.target.distance.z = @s uhc.player.z
scoreboard players operation @s uhc.player.target.distance.x -= @p[tag=uhc.target.targeted_current] uhc.player.x
scoreboard players operation @s uhc.player.target.distance.z -= @p[tag=uhc.target.targeted_current] uhc.player.z
scoreboard players operation #distance_ab uhc.player.target.cos.a = @s uhc.player.target.distance.x
scoreboard players operation #distance_ac uhc.player.target.cos.a = @s uhc.player.target.distance.z

# Sommes des distances x et z
scoreboard players operation @s uhc.player.target.distance.x *= @s uhc.player.target.distance.x
scoreboard players operation @s uhc.player.target.distance.z *= @s uhc.player.target.distance.z
scoreboard players operation @s uhc.player.target.distance.xxzz = @s uhc.player.target.distance.x
scoreboard players operation @s uhc.player.target.distance.xxzz += @s uhc.player.target.distance.z
scoreboard players set #sqr+1 uhc.player.target.distance 1000000
scoreboard players set #sqr uhc.player.target.distance 0
scoreboard players set #distance uhc.player.target.distance 0
execute if entity @p[tag=uhc.target.targeted_current,distance=0.01..] run function uhc:in_game/timer/hotbar/target/sqr/1000
scoreboard players operation @s uhc.player.target.distance = #distance uhc.player.target.distance
scoreboard players operation #distance_bc uhc.player.target.cos.a = #distance uhc.player.target.distance
# Direction
function uhc:in_game/timer/hotbar/target/angle/
function uhc:in_game/timer/hotbar/target/cos_angle/

execute if entity @s[predicate=uhc:dimension/overworld] if entity @p[tag=uhc.target.targeted_current,predicate=uhc:dimension/overworld] run function bhc:in_game/scenario/02/target/hotbar/dimension_same
execute if entity @s[predicate=uhc:dimension/the_end] if entity @p[tag=uhc.target.targeted_current,predicate=uhc:dimension/the_end] run function bhc:in_game/scenario/02/target/hotbar/dimension_same
execute if entity @s[predicate=uhc:dimension/the_nether] if entity @p[tag=uhc.target.targeted_current,predicate=uhc:dimension/the_nether] run function bhc:in_game/scenario/02/target/hotbar/dimension_same
execute if entity @s[predicate=uhc:dimension/overworld] unless entity @p[tag=uhc.target.targeted_current,predicate=uhc:dimension/overworld] run function bhc:in_game/scenario/02/target/hotbar/dimension_diff
execute if entity @s[predicate=uhc:dimension/the_end] unless entity @p[tag=uhc.target.targeted_current,predicate=uhc:dimension/the_end] run function bhc:in_game/scenario/02/target/hotbar/dimension_diff
execute if entity @s[predicate=uhc:dimension/the_nether] unless entity @p[tag=uhc.target.targeted_current,predicate=uhc:dimension/the_nether] run function bhc:in_game/scenario/02/target/hotbar/dimension_diff

tag @p[tag=uhc.target.targeted_current] add uhc.target.targeted_done
tag @p[tag=uhc.target.targeted_current] remove uhc.target.targeted_current
