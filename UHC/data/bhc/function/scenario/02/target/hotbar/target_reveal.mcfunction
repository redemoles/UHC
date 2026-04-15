
#> bhc:scenario/02/target/hotbar/target_reveal
#
# @within			bhc:scenario/02/target/hotbar/team_coords
#
#
# @description		Cible révélé dans la hotbar 
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players set @a[predicate=uhc:id/team] bhc.target.known 1
execute as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run scoreboard players set @s bhc.target.known 1
function uhc:translation/bhc/02_viking_era/target_reveal
