
#> lobby:mini_games/tc/mini_games/_order/marker_summon
#
# @within			lobby:load
#
#
# @description		Fonction générale de la Trial Chamber
#

kill @e[type=minecraft:marker,tag=lobby.tc.mini_games_order,distance=0..]

summon minecraft:marker 0 0 0 {Tags:["lobby","lobby.tc.mini_games_order","lobby.tc.craft"]}
summon minecraft:marker 0 0 0 {Tags:["lobby","lobby.tc.mini_games_order","lobby.tc.ctb"]}
summon minecraft:marker 0 0 0 {Tags:["lobby","lobby.tc.mini_games_order","lobby.tc.memory_build"]}
summon minecraft:marker 0 0 0 {Tags:["lobby","lobby.tc.mini_games_order","lobby.tc.os_pve"]}
summon minecraft:marker 0 0 0 {Tags:["lobby","lobby.tc.mini_games_order","lobby.tc.os_pvp"]}
summon minecraft:marker 0 0 0 {Tags:["lobby","lobby.tc.mini_games_order","lobby.tc.parkour"]}
summon minecraft:marker 0 0 0 {Tags:["lobby","lobby.tc.mini_games_order","lobby.tc.puzzle"]}

scoreboard players set #random_mini_games_order lobby.tc.data 0
execute as @e[type=minecraft:marker,tag=lobby.tc.mini_games_order,distance=0..,sort=random] run function lobby:mini_games/tc/mini_games/_order/randomizer
