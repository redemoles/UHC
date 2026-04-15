
#> bhc:scenario/02/target/death/killer/main
#
# @within			bhc:scenario/02/target/death/main
#
#
# @description		Détection nouveau kill 
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @s add bhc.temp.killer

# Si tueur ciblé
execute if entity @s[predicate=bhc:bhc_2/this_is_targeted,predicate=!bhc:bhc_2/this_is_targeter] run return run function bhc:scenario/02/target/death/killer/is_targeted
execute if entity @s[predicate=bhc:bhc_2/this_is_targeted,predicate=bhc:bhc_2/this_is_targeter] if score @s bhc.target.known matches 2 run return run function bhc:scenario/02/target/death/killer/is_targeted

# Si tueur assassin
execute if entity @s[predicate=bhc:bhc_2/this_is_targeter] unless score @s bhc.target.known matches 2 run return run function bhc:scenario/02/target/death/killer/is_targeter

# Si ni ciblé ni assassin pendant que le Bingo de l'Ère Viking est actif
execute if score #stepb_end bhc.data.temp matches 1.. run scoreboard players set #points bhc.kills.score.inv -6
execute if score #stepb_end bhc.data.temp matches 1.. run scoreboard players set @p[tag=bhc.temp.dead] uhc.player.death.cancel_additional_item 1
function uhc:translation/bhc/02_viking_era/target_killer_other
