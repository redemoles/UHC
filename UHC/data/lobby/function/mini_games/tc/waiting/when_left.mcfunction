
#> lobby:mini_games/tc/waiting/when_left
#
# @within			lobby:mini_games/tc/
#
#
# @description		Joueur détecté voulant quitter la chambre ou la liste d'attente
#

scoreboard players enable @s lobby.tc.player.click_to_join
scoreboard players set @s lobby.tc.player.click_to_join 0
execute if entity @s[tag=!mgs.tc.player] run return fail

execute if score @s[tag=mgs.tc.spec,tag=mgs.tc.player] uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as quitté la liste d'attente.","color":"#FF3F3F"}]
execute if score @s[tag=mgs.tc.spec,tag=mgs.tc.player] uhc.player.lang matches 051407 run tellraw @s [{"text":"You left the waiting list.","color":"#FF3F3F"}]

execute if score @s[tag=!mgs.tc.spec,tag=mgs.tc.player] uhc.player.lang matches 061801 run tellraw @s [{"text":"Tu as quitté la chambre.","color":"#FF3F3F"}]
execute if score @s[tag=!mgs.tc.spec,tag=mgs.tc.player] uhc.player.lang matches 051407 run tellraw @s [{"text":"You left the chamber.","color":"#FF3F3F"}]

execute if entity @s[tag=!mgs.tc.spec,tag=mgs.tc.player] run tp @s 0 49 -23 0 0

# Menu d'inventaire
scoreboard players set @s uhc.player.online 0
tag @s remove mgs.tc.player
tag @s remove mgs.tc.team.01
tag @s remove mgs.tc.team.02
execute as @s[tag=uhc.host] run function uhc:pre_game/menu/reset/host
execute as @s[tag=!uhc.host] run function uhc:pre_game/menu/reset/player
scoreboard players set @s uhc.player.online 1
function lobby:mini_games/tc/spectators_room/when_joined

# Réinitialisation des effets
effect clear @s
effect give @s minecraft:absorption 1 1 true
attribute @s minecraft:max_absorption base set 0
attribute @s minecraft:max_health base set 20
attribute @s minecraft:jump_strength base set 0.42
attribute @s minecraft:movement_speed base set 0.10000000149011612
attribute @s minecraft:attack_damage base set 1
attribute @s minecraft:attack_speed base set 4
attribute @s minecraft:knockback_resistance base set 0
attribute @s minecraft:scale base set 1.0
attribute @s minecraft:fall_damage_multiplier modifier add lobby:fall_damage -1.0 add_value
attribute @s minecraft:safe_fall_distance base set 3.0
attribute @s minecraft:submerged_mining_speed base set 0.2
effect give @s minecraft:saturation infinite 0 true
effect give @s minecraft:fire_resistance infinite 0 true
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:weakness infinite 4 true
effect give @s minecraft:instant_health infinite 1 true
