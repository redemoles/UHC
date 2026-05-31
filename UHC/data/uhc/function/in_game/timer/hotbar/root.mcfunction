
#> uhc:in_game/timer/hotbar/root
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Fonction tick de base en jeu
#

# Données Worldborder
execute store result score #border_size uhc.data.temp run worldborder get
scoreboard players remove #border_size uhc.data.temp 1
scoreboard players operation #border_size uhc.data.temp /= #02 uhc.data.numbers

# Texte traqueur
execute if score #tracker uhc.data.temp matches 1 as @a[tag=uhc.player] run function uhc:in_game/timer/hotbar/target/

# Texte informations principales
execute if score #hotbar_cooldown uhc.data.temp matches 1.. if score #tick uhc.data.temp matches 0 run function uhc:in_game/timer/hotbar/cooldown/main
execute unless score #hotbar_cooldown uhc.data.temp matches 1.. if score #vanilla uhc.gamemode matches 1 if score #tick uhc.data.temp matches 0.. run function uhc:translation/hotbar/uhc with storage uhc:temp hotbar
execute unless score #hotbar_cooldown uhc.data.temp matches 1.. if score #bhc uhc.gamemode matches 1 if score #tick uhc.data.temp matches 0.. run function bhc:timer/hotbar
execute unless score #hotbar_cooldown uhc.data.temp matches 1.. if score #mls uhc.gamemode matches 1 if score #tick uhc.data.temp matches 0.. run function mls:timer/hotbar with storage uhc:temp hotbar
execute unless score #hotbar_cooldown uhc.data.temp matches 1.. if score #nzl uhc.gamemode matches 1 if score #tick uhc.data.temp matches 0.. run function nzl:timer/hotbar
tag @a[tag=uhc.target.targeter_done] remove uhc.target.targeter_done
