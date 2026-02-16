
#> uhc:start/game_team/id_marker
#
# @within			uhc:start/game_team/
#
#
# @description		Création des équipes
#

# Id d'équipe des markers
scoreboard players add #team uhc.id.team 1
scoreboard players operation @s uhc.id.team = #team uhc.id.team

execute if entity @p[scores={uhc.id.team=01},predicate=uhc:id/team] run data merge entity @s {Tags:["01","UHC"],CustomName:[{"text":"Équipe Indigo"}],data:{name:"§0§1§1",color:dark_blue,team:{"text":"Équipe Indigo","color":"dark_blue"}}}
execute if entity @p[scores={uhc.id.team=02},predicate=uhc:id/team] run data merge entity @s {Tags:["02","UHC"],CustomName:[{"text":"Équipe Bleue"}],data:{name:"§0§2§9",color:blue,team:{"text":"Équipe Bleue","color":"blue"}}}
execute if entity @p[scores={uhc.id.team=03},predicate=uhc:id/team] run data merge entity @s {Tags:["03","UHC"],CustomName:[{"text":"Équipe Azur"}],data:{name:"§0§3§3",color:dark_aqua,team:{"text":"Équipe Azur","color":"dark_aqua"}}}
execute if entity @p[scores={uhc.id.team=04},predicate=uhc:id/team] run data merge entity @s {Tags:["04","UHC"],CustomName:[{"text":"Équipe Cyan"}],data:{name:"§0§4§b",color:aqua,team:{"text":"Équipe Cyan","color":"aqua"}}}
execute if entity @p[scores={uhc.id.team=05},predicate=uhc:id/team] run data merge entity @s {Tags:["05","UHC"],CustomName:[{"text":"Équipe Vert f."}],data:{name:"§0§5§2",color:dark_green,team:{"text":"Équipe Vert f.","color":"dark_green"}}}
execute if entity @p[scores={uhc.id.team=06},predicate=uhc:id/team] run data merge entity @s {Tags:["06","UHC"],CustomName:[{"text":"Équipe Vert c."}],data:{name:"§0§6§a",color:green,team:{"text":"Équipe Vert c.","color":"green"}}}
execute if entity @p[scores={uhc.id.team=07},predicate=uhc:id/team] run data merge entity @s {Tags:["07","UHC"],CustomName:[{"text":"Équipe Jaune"}],data:{name:"§0§7§e",color:yellow,team:{"text":"Équipe Jaune","color":"yellow"}}}
execute if entity @p[scores={uhc.id.team=08},predicate=uhc:id/team] run data merge entity @s {Tags:["08","UHC"],CustomName:[{"text":"Équipe Orange"}],data:{name:"§0§8§6",color:gold,team:{"text":"Équipe Orange","color":"gold"}}}
execute if entity @p[scores={uhc.id.team=09},predicate=uhc:id/team] run data merge entity @s {Tags:["09","UHC"],CustomName:[{"text":"Équipe Rouge c."}],data:{name:"§0§9§c",color:red,team:{"text":"Équipe Rouge c.","color":"red"}}}
execute if entity @p[scores={uhc.id.team=10},predicate=uhc:id/team] run data merge entity @s {Tags:["10","UHC"],CustomName:[{"text":"Équipe Rouge f."}],data:{name:"§1§0§4",color:dark_red,team:{"text":"Équipe Rouge f.","color":"dark_red"}}}
execute if entity @p[scores={uhc.id.team=11},predicate=uhc:id/team] run data merge entity @s {Tags:["11","UHC"],CustomName:[{"text":"Équipe Violette"}],data:{name:"§1§1§5",color:dark_purple,team:{"text":"Équipe Violette","color":"dark_purple"}}}
execute if entity @p[scores={uhc.id.team=12},predicate=uhc:id/team] run data merge entity @s {Tags:["12","UHC"],CustomName:[{"text":"Équipe Rose"}],data:{name:"§1§2§d",color:light_purple,team:{"text":"Équipe Rose","color":"light_purple"}}}
execute if entity @p[scores={uhc.id.team=13},predicate=uhc:id/team] run data merge entity @s {Tags:["13","UHC"],CustomName:[{"text":"Équipe Blanche"}],data:{name:"§1§3§f",color:white,team:{"text":"Équipe Blanche","color":"white"}}}
execute if entity @p[scores={uhc.id.team=14},predicate=uhc:id/team] run data merge entity @s {Tags:["14","UHC"],CustomName:[{"text":"Équipe Gris c."}],data:{name:"§1§4§7",color:gray,team:{"text":"Équipe Gris c.","color":"gray"}}}
execute if entity @p[scores={uhc.id.team=15},predicate=uhc:id/team] run data merge entity @s {Tags:["15","UHC"],CustomName:[{"text":"Équipe Gris f."}],data:{name:"§1§5§8",color:dark_gray,team:{"text":"Équipe Gris f.","color":"dark_gray"}}}
execute if entity @p[scores={uhc.id.team=16},predicate=uhc:id/team] run data merge entity @s {Tags:["16","UHC"],CustomName:[{"text":"Équipe Noire"}],data:{name:"§1§6§0",color:black,team:{"text":"Équipe Noire","color":"black"}}}

execute if entity @p[scores={uhc.id.team=17},predicate=uhc:id/team] run data merge entity @s {Tags:["17","UHC"],CustomName:[{"text":"♦ Équipe Indigo"}],data:{name:"§1§7§1",color:dark_blue,team:{"text":"♦ Équipe Indigo","color":"dark_blue"}}}
execute if entity @p[scores={uhc.id.team=18},predicate=uhc:id/team] run data merge entity @s {Tags:["18","UHC"],CustomName:[{"text":"♦ Équipe Bleue"}],data:{name:"§1§8§9",color:blue,team:{"text":"♦ Équipe Bleue","color":"blue"}}}
execute if entity @p[scores={uhc.id.team=19},predicate=uhc:id/team] run data merge entity @s {Tags:["19","UHC"],CustomName:[{"text":"♦ Équipe Azur"}],data:{name:"§1§9§3",color:dark_aqua,team:{"text":"♦ Équipe Azur","color":"dark_aqua"}}}
execute if entity @p[scores={uhc.id.team=20},predicate=uhc:id/team] run data merge entity @s {Tags:["20","UHC"],CustomName:[{"text":"♦ Équipe Cyan"}],data:{name:"§2§0§b",color:aqua,team:{"text":"♦ Équipe Cyan","color":"aqua"}}}
execute if entity @p[scores={uhc.id.team=21},predicate=uhc:id/team] run data merge entity @s {Tags:["21","UHC"],CustomName:[{"text":"♦ Équipe Vert f."}],data:{name:"§2§1§2",color:dark_green,team:{"text":"♦ Équipe Vert f.","color":"dark_green"}}}
execute if entity @p[scores={uhc.id.team=22},predicate=uhc:id/team] run data merge entity @s {Tags:["22","UHC"],CustomName:[{"text":"♦ Équipe Vert c."}],data:{name:"§2§2§a",color:green,team:{"text":"♦ Équipe Vert c.","color":"green"}}}
execute if entity @p[scores={uhc.id.team=23},predicate=uhc:id/team] run data merge entity @s {Tags:["23","UHC"],CustomName:[{"text":"♦ Équipe Jaune"}],data:{name:"§2§3§e",color:yellow,team:{"text":"♦ Équipe Jaune","color":"yellow"}}}
execute if entity @p[scores={uhc.id.team=24},predicate=uhc:id/team] run data merge entity @s {Tags:["24","UHC"],CustomName:[{"text":"♦ Équipe Orange"}],data:{name:"§2§4§6",color:gold,team:{"text":"♦ Équipe Orange","color":"gold"}}}
execute if entity @p[scores={uhc.id.team=25},predicate=uhc:id/team] run data merge entity @s {Tags:["25","UHC"],CustomName:[{"text":"♦ Équipe Rouge c."}],data:{name:"§2§5§c",color:red,team:{"text":"♦ Équipe Rouge c.","color":"red"}}}
execute if entity @p[scores={uhc.id.team=26},predicate=uhc:id/team] run data merge entity @s {Tags:["26","UHC"],CustomName:[{"text":"♦ Équipe Rouge f."}],data:{name:"§2§6§4",color:dark_red,team:{"text":"♦ Équipe Rouge f.","color":"dark_red"}}}
execute if entity @p[scores={uhc.id.team=27},predicate=uhc:id/team] run data merge entity @s {Tags:["27","UHC"],CustomName:[{"text":"♦ Équipe Violette"}],data:{name:"§2§7§5",color:dark_purple,team:{"text":"♦ Équipe Violette","color":"dark_purple"}}}
execute if entity @p[scores={uhc.id.team=28},predicate=uhc:id/team] run data merge entity @s {Tags:["28","UHC"],CustomName:[{"text":"♦ Équipe Rose"}],data:{name:"§2§8§d",color:light_purple,team:{"text":"♦ Équipe Rose","color":"light_purple"}}}
execute if entity @p[scores={uhc.id.team=29},predicate=uhc:id/team] run data merge entity @s {Tags:["29","UHC"],CustomName:[{"text":"♦ Équipe Blanche"}],data:{name:"§2§9§f",color:white,team:{"text":"♦ Équipe Blanche","color":"white"}}}
execute if entity @p[scores={uhc.id.team=30},predicate=uhc:id/team] run data merge entity @s {Tags:["30","UHC"],CustomName:[{"text":"♦ Équipe Gris c."}],data:{name:"§3§0§7",color:gray,team:{"text":"♦ Équipe Gris c.","color":"gray"}}}
execute if entity @p[scores={uhc.id.team=31},predicate=uhc:id/team] run data merge entity @s {Tags:["31","UHC"],CustomName:[{"text":"♦ Équipe Gris f."}],data:{name:"§3§1§8",color:dark_gray,team:{"text":"♦ Équipe Gris f.","color":"dark_gray"}}}
execute if entity @p[scores={uhc.id.team=32},predicate=uhc:id/team] run data merge entity @s {Tags:["32","UHC"],CustomName:[{"text":"♦ Équipe Noire"}],data:{name:"§3§2§0",color:black,team:{"text":"♦ Équipe Noire","color":"black"}}}

# Team join des markers
team join 001 @s[tag=01]
team join 002 @s[tag=02]
team join 003 @s[tag=03]
team join 004 @s[tag=04]
team join 005 @s[tag=05]
team join 006 @s[tag=06]
team join 007 @s[tag=07]
team join 008 @s[tag=08]
team join 009 @s[tag=09]
team join 010 @s[tag=10]
team join 011 @s[tag=11]
team join 012 @s[tag=12]
team join 013 @s[tag=13]
team join 014 @s[tag=14]
team join 015 @s[tag=15]
team join 016 @s[tag=16]

team join 001 @s[tag=17]
team join 002 @s[tag=18]
team join 003 @s[tag=19]
team join 004 @s[tag=20]
team join 005 @s[tag=21]
team join 006 @s[tag=22]
team join 007 @s[tag=23]
team join 008 @s[tag=24]
team join 009 @s[tag=25]
team join 010 @s[tag=26]
team join 011 @s[tag=27]
team join 012 @s[tag=28]
team join 013 @s[tag=29]
team join 014 @s[tag=30]
team join 015 @s[tag=31]
team join 016 @s[tag=32]

tp @e[type=minecraft:marker,tag=temp,distance=0..] ~ ~1 ~

# Kill marker si pas de joueur dans l'équipe
execute if entity @s[tag=temp] run return run kill @s

# Nombre d'équipe en jeu
scoreboard players add #team uhc.data.temp 1

# Nombre de joueurs dans l'équipe
execute store result score @s uhc.player.lives if entity @a[tag=uhc.player,predicate=uhc:id/team]
scoreboard players operation @s uhc.scenario.ironman = @s uhc.player.lives
