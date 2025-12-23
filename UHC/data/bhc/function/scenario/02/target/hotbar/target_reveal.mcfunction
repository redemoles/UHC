
#> bhc:scenario/02/target/hotbar/target_reveal
#
# @within			bhc:scenario/02/target/hotbar/team_coords
#
#
# @description		Cible révélé dans la hotbar 
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players set @a[predicate=uhc:id_team] bhc.target.known 1
execute as @e[type=marker,tag=UHC,distance=0..,predicate=uhc:id_team] run scoreboard players set @s bhc.target.known 1

execute as @a[predicate=uhc:id_team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"\nÈre Viking ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Cible identifiée : ","color":"#FFE73F"},{"selector":"@e[type=marker,tag=UHC,distance=0..,predicate=bhc:bhc_2/this_is_targeted]"}]
execute as @a[predicate=uhc:id_team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"\nViking Era ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Target indentified: ","color":"#FFE73F"},{"selector":"@e[type=marker,tag=UHC,distance=0..,predicate=bhc:bhc_2/this_is_targeted]"}]
