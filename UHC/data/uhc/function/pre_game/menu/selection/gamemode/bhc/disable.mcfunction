
#> uhc:pre_game/menu/selection/gamemode/bhc/disable
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Désactivation BHC
#

scoreboard players set #vanilla uhc.gamemode 0
scoreboard players set #bhc uhc.gamemode 0
scoreboard players set #bhc bhc.scenario -1
scoreboard players set #mls uhc.gamemode 0
scoreboard players set #mls mls.scenario 0
scoreboard players set #nzl uhc.gamemode 0
scoreboard players set #nzl nzl.scenario -1

data modify storage uhc:settings gamemode set value [{"text":"Bingo","color":"#B73FFF","bold":true,"italic":false},{"text":" UHC","color":"#FFE73F","bold":true,"italic":false}]

scoreboard players set #vanilla uhc.gamemode 1




execute if score #bhc uhc.gamemode matches 0 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" désactivé","color":"#FF3F3F","bold":false}]
execute if score #bhc uhc.gamemode matches 0 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" disabled","color":"#FF3F3F","bold":false}]

## Configuration du starter give
execute if score #bhc uhc.gamemode matches 0 run data modify storage uhc:settings Item_starter set value [{count: 1, Slot: 0b, id: "minecraft:oak_boat"},{count: 8, Slot: 1b, id: "minecraft:golden_carrot"}]

execute if score #vanilla uhc.gamemode matches 1 run data modify storage uhc:settings gamemode set value [{"text":"Aucun","color":"#E7E7E7","bold":true}]
