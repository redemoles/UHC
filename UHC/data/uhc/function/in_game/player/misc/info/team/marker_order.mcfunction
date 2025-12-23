
#> uhc:in_game/player/misc/info/team/marker_order
#
# @within			uhc:in_game/player/misc/info/team/list
#
#
# @description		Donne au joueur la liste des équipes pour lui permettre de regarder leurs statistiques
#

execute as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id_team] run function uhc:in_game/player/misc/info/team/marker_macro_set
scoreboard players add #team uhc.id.team 1
execute if entity @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id_team_superior] run function uhc:in_game/player/misc/info/team/marker_order
