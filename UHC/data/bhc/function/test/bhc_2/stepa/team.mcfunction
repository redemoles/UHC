
#> bhc:test/bhc_2/stepa/team
#
# @within			bhc:test/scores/
#
#
# @description		Simulation d'une partie
#

## Markers
# Summon markers d'équipes
execute unless entity @e[type=minecraft:marker,tag=01] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","01","UHC"],CustomName:[{"text":"Équipe Indigo"}],data:{name:"§0§1§1",color:dark_blue,team:{"text":"Équipe Indigo","color":"dark_blue"}}}
execute unless entity @e[type=minecraft:marker,tag=02] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","02","UHC"],CustomName:[{"text":"Équipe Bleue"}],data:{name:"§0§2§9",color:blue,team:{"text":"Équipe Bleue","color":"blue"}}}
execute unless entity @e[type=minecraft:marker,tag=03] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","03","UHC"],CustomName:[{"text":"Équipe Azur"}],data:{name:"§0§3§3",color:dark_aqua,team:{"text":"Équipe Azur","color":"dark_aqua"}}}
execute unless entity @e[type=minecraft:marker,tag=04] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","04","UHC"],CustomName:[{"text":"Équipe Cyan"}],data:{name:"§0§4§b",color:aqua,team:{"text":"Équipe Cyan","color":"aqua"}}}
execute unless entity @e[type=minecraft:marker,tag=05] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","05","UHC"],CustomName:[{"text":"Équipe Vert f."}],data:{name:"§0§5§2",color:dark_green,team:{"text":"Équipe Vert f.","color":"dark_green"}}}
execute unless entity @e[type=minecraft:marker,tag=06] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","06","UHC"],CustomName:[{"text":"Équipe Vert c."}],data:{name:"§0§6§a",color:green,team:{"text":"Équipe Vert c.","color":"green"}}}
execute unless entity @e[type=minecraft:marker,tag=07] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","07","UHC"],CustomName:[{"text":"Équipe Jaune"}],data:{name:"§0§7§e",color:yellow,team:{"text":"Équipe Jaune","color":"yellow"}}}
execute unless entity @e[type=minecraft:marker,tag=08] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","08","UHC"],CustomName:[{"text":"Équipe Orange"}],data:{name:"§0§8§6",color:gold,team:{"text":"Équipe Orange","color":"gold"}}}
execute unless entity @e[type=minecraft:marker,tag=09] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","09","UHC"],CustomName:[{"text":"Équipe Rouge c."}],data:{name:"§0§9§c",color:red,team:{"text":"Équipe Rouge c.","color":"red"}}}
execute unless entity @e[type=minecraft:marker,tag=10] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","10","UHC"],CustomName:[{"text":"Équipe Rouge f."}],data:{name:"§1§0§4",color:dark_red,team:{"text":"Équipe Rouge f.","color":"dark_red"}}}
execute unless entity @e[type=minecraft:marker,tag=11] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","11","UHC"],CustomName:[{"text":"Équipe Violette"}],data:{name:"§1§1§5",color:dark_purple,team:{"text":"Équipe Violette","color":"dark_purple"}}}
execute unless entity @e[type=minecraft:marker,tag=12] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","12","UHC"],CustomName:[{"text":"Équipe Rose"}],data:{name:"§1§2§d",color:light_purple,team:{"text":"Équipe Rose","color":"light_purple"}}}
execute unless entity @e[type=minecraft:marker,tag=13] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","13","UHC"],CustomName:[{"text":"Équipe Blanche"}],data:{name:"§1§3§f",color:white,team:{"text":"Équipe Blanche","color":"white"}}}
execute unless entity @e[type=minecraft:marker,tag=14] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","14","UHC"],CustomName:[{"text":"Équipe Gris c."}],data:{name:"§1§4§7",color:gray,team:{"text":"Équipe Gris c.","color":"gray"}}}
execute unless entity @e[type=minecraft:marker,tag=15] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","15","UHC"],CustomName:[{"text":"Équipe Gris f."}],data:{name:"§1§5§8",color:dark_gray,team:{"text":"Équipe Gris f.","color":"dark_gray"}}}
execute unless entity @e[type=minecraft:marker,tag=16] run summon minecraft:marker 1 0 1 {Tags:["uhc.inactive","16","UHC"],CustomName:[{"text":"Équipe Noire"}],data:{name:"§1§6§0",color:black,team:{"text":"Équipe Noire","color":"black"}}}

scoreboard players set #team uhc.id.team 0
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,tag=uhc.temp] run function bhc:test/bhc_2/stepa/team_1
scoreboard players set #team uhc.id.team 0

# Nombre d'équipes
execute store result score #team bhc.data.temp if entity @e[type=minecraft:marker,tag=UHC,distance=0..]
execute store result score #team uhc.data.temp.inv if entity @e[type=minecraft:marker,tag=UHC,distance=0..]
