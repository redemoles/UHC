
#> uhc:start/game_team/marker/team_name/fra
#
# @within			uhc:start/game_team/marker/id
# @within			uhc:in_game/player/spec/revive/new_player/team_joined/team
#
# @description		Création des équipes
#

execute if score #team uhc.id.team matches 01 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["01","UHC"]}
execute if score #team uhc.id.team matches 01 run return run data merge entity @s {CustomName:[{"text":"Équipe Indigo"}],data:{name:"§0§1§1",color:dark_blue,team:{"text":"Équipe Indigo","color":"dark_blue"}}}

execute if score #team uhc.id.team matches 02 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["02","UHC"]}
execute if score #team uhc.id.team matches 02 run return run data merge entity @s {CustomName:[{"text":"Équipe Bleue"}],data:{name:"§0§2§9",color:blue,team:{"text":"Équipe Bleue","color":"blue"}}}

execute if score #team uhc.id.team matches 03 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["03","UHC"]}
execute if score #team uhc.id.team matches 03 run return run data merge entity @s {CustomName:[{"text":"Équipe Azur"}],data:{name:"§0§3§3",color:dark_aqua,team:{"text":"Équipe Azur","color":"dark_aqua"}}}

execute if score #team uhc.id.team matches 04 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["04","UHC"]}
execute if score #team uhc.id.team matches 04 run return run data merge entity @s {CustomName:[{"text":"Équipe Cyan"}],data:{name:"§0§4§b",color:aqua,team:{"text":"Équipe Cyan","color":"aqua"}}}

execute if score #team uhc.id.team matches 05 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["05","UHC"]}
execute if score #team uhc.id.team matches 05 run return run data merge entity @s {CustomName:[{"text":"Équipe Vert f."}],data:{name:"§0§5§2",color:dark_green,team:{"text":"Équipe Vert f.","color":"dark_green"}}}

execute if score #team uhc.id.team matches 06 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["06","UHC"]}
execute if score #team uhc.id.team matches 06 run return run data merge entity @s {CustomName:[{"text":"Équipe Vert c."}],data:{name:"§0§6§a",color:green,team:{"text":"Équipe Vert c.","color":"green"}}}

execute if score #team uhc.id.team matches 07 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["07","UHC"]}
execute if score #team uhc.id.team matches 07 run return run data merge entity @s {CustomName:[{"text":"Équipe Jaune"}],data:{name:"§0§7§e",color:yellow,team:{"text":"Équipe Jaune","color":"yellow"}}}

execute if score #team uhc.id.team matches 08 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["08","UHC"]}
execute if score #team uhc.id.team matches 08 run return run data merge entity @s {CustomName:[{"text":"Équipe Orange"}],data:{name:"§0§8§6",color:gold,team:{"text":"Équipe Orange","color":"gold"}}}

execute if score #team uhc.id.team matches 09 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["09","UHC"]}
execute if score #team uhc.id.team matches 09 run return run data merge entity @s {CustomName:[{"text":"Équipe Rouge c."}],data:{name:"§0§9§c",color:red,team:{"text":"Équipe Rouge c.","color":"red"}}}

execute if score #team uhc.id.team matches 10 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["10","UHC"]}
execute if score #team uhc.id.team matches 10 run return run data merge entity @s {CustomName:[{"text":"Équipe Rouge f."}],data:{name:"§1§0§4",color:dark_red,team:{"text":"Équipe Rouge f.","color":"dark_red"}}}

execute if score #team uhc.id.team matches 11 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["11","UHC"]}
execute if score #team uhc.id.team matches 11 run return run data merge entity @s {CustomName:[{"text":"Équipe Violette"}],data:{name:"§1§1§5",color:dark_purple,team:{"text":"Équipe Violette","color":"dark_purple"}}}

execute if score #team uhc.id.team matches 12 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["12","UHC"]}
execute if score #team uhc.id.team matches 12 run return run data merge entity @s {CustomName:[{"text":"Équipe Rose"}],data:{name:"§1§2§d",color:light_purple,team:{"text":"Équipe Rose","color":"light_purple"}}}

execute if score #team uhc.id.team matches 13 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["13","UHC"]}
execute if score #team uhc.id.team matches 13 run return run data merge entity @s {CustomName:[{"text":"Équipe Blanche"}],data:{name:"§1§3§f",color:white,team:{"text":"Équipe Blanche","color":"white"}}}

execute if score #team uhc.id.team matches 14 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["14","UHC"]}
execute if score #team uhc.id.team matches 14 run return run data merge entity @s {CustomName:[{"text":"Équipe Gris c."}],data:{name:"§1§4§7",color:gray,team:{"text":"Équipe Gris c.","color":"gray"}}}

execute if score #team uhc.id.team matches 15 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["15","UHC"]}
execute if score #team uhc.id.team matches 15 run return run data merge entity @s {CustomName:[{"text":"Équipe Gris f."}],data:{name:"§1§5§8",color:dark_gray,team:{"text":"Équipe Gris f.","color":"dark_gray"}}}

execute if score #team uhc.id.team matches 16 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["16","UHC"]}
execute if score #team uhc.id.team matches 16 run return run data merge entity @s {CustomName:[{"text":"Équipe Noire"}],data:{name:"§1§6§0",color:black,team:{"text":"Équipe Noire","color":"black"}}}

execute if score #team uhc.id.team matches 17 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["17","UHC"]}
execute if score #team uhc.id.team matches 17 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Indigo"}],data:{name:"§1§7§1",color:dark_blue,team:{"text":"♦ Équipe Indigo","color":"dark_blue"}}}

execute if score #team uhc.id.team matches 18 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["18","UHC"]}
execute if score #team uhc.id.team matches 18 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Bleue"}],data:{name:"§1§8§9",color:blue,team:{"text":"♦ Équipe Bleue","color":"blue"}}}

execute if score #team uhc.id.team matches 19 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["19","UHC"]}
execute if score #team uhc.id.team matches 19 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Azur"}],data:{name:"§1§9§3",color:dark_aqua,team:{"text":"♦ Équipe Azur","color":"dark_aqua"}}}

execute if score #team uhc.id.team matches 20 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["20","UHC"]}
execute if score #team uhc.id.team matches 20 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Cyan"}],data:{name:"§2§0§b",color:aqua,team:{"text":"♦ Équipe Cyan","color":"aqua"}}}

execute if score #team uhc.id.team matches 21 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["21","UHC"]}
execute if score #team uhc.id.team matches 21 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Vert f."}],data:{name:"§2§1§2",color:dark_green,team:{"text":"♦ Équipe Vert f.","color":"dark_green"}}}

execute if score #team uhc.id.team matches 22 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["22","UHC"]}
execute if score #team uhc.id.team matches 22 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Vert c."}],data:{name:"§2§2§a",color:green,team:{"text":"♦ Équipe Vert c.","color":"green"}}}

execute if score #team uhc.id.team matches 23 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["23","UHC"]}
execute if score #team uhc.id.team matches 23 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Jaune"}],data:{name:"§2§3§e",color:yellow,team:{"text":"♦ Équipe Jaune","color":"yellow"}}}

execute if score #team uhc.id.team matches 24 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["24","UHC"]}
execute if score #team uhc.id.team matches 24 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Orange"}],data:{name:"§2§4§6",color:gold,team:{"text":"♦ Équipe Orange","color":"gold"}}}

execute if score #team uhc.id.team matches 25 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["25","UHC"]}
execute if score #team uhc.id.team matches 25 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Rouge c."}],data:{name:"§2§5§c",color:red,team:{"text":"♦ Équipe Rouge c.","color":"red"}}}

execute if score #team uhc.id.team matches 26 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["26","UHC"]}
execute if score #team uhc.id.team matches 26 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Rouge f."}],data:{name:"§2§6§4",color:dark_red,team:{"text":"♦ Équipe Rouge f.","color":"dark_red"}}}

execute if score #team uhc.id.team matches 27 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["27","UHC"]}
execute if score #team uhc.id.team matches 27 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Violette"}],data:{name:"§2§7§5",color:dark_purple,team:{"text":"♦ Équipe Violette","color":"dark_purple"}}}

execute if score #team uhc.id.team matches 28 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["28","UHC"]}
execute if score #team uhc.id.team matches 28 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Rose"}],data:{name:"§2§8§d",color:light_purple,team:{"text":"♦ Équipe Rose","color":"light_purple"}}}

execute if score #team uhc.id.team matches 29 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["29","UHC"]}
execute if score #team uhc.id.team matches 29 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Blanche"}],data:{name:"§2§9§f",color:white,team:{"text":"♦ Équipe Blanche","color":"white"}}}

execute if score #team uhc.id.team matches 30 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["30","UHC"]}
execute if score #team uhc.id.team matches 30 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Gris c."}],data:{name:"§3§0§7",color:gray,team:{"text":"♦ Équipe Gris c.","color":"gray"}}}

execute if score #team uhc.id.team matches 31 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["31","UHC"]}
execute if score #team uhc.id.team matches 31 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Gris f."}],data:{name:"§3§1§8",color:dark_gray,team:{"text":"♦ Équipe Gris f.","color":"dark_gray"}}}

execute if score #team uhc.id.team matches 32 if entity @p[predicate=uhc:id/team] run data merge entity @s {Tags:["32","UHC"]}
execute if score #team uhc.id.team matches 32 run return run data merge entity @s {CustomName:[{"text":"♦ Équipe Noire"}],data:{name:"§3§2§0",color:black,team:{"text":"♦ Équipe Noire","color":"black"}}}
