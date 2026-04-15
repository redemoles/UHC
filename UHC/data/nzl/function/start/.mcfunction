
#> nzl:start/
#
# @within			uhc:start
#
#
# @description		Nuzlocke UHC Start
#

## Config UHC
function nzl:start/config

## Reset Tags pour tous les joueurs (nécessaires en cas de restart)
function nzl:start/marker_summon
execute as @e[type=minecraft:marker,tag=nzl.type] run function nzl:start/marker_type

## Marker de types
execute as @a run function nzl:start/reset_tags

## Message de démarrage
function uhc:translation/nzl/start

## Type ???
execute as @a[tag=uhc.player] run function nzl:types/prefix/---

## Nombre de doubles types autorisés
scoreboard players set #double_type nzl.data -18
scoreboard players operation #double_type nzl.data += #player uhc.data.temp.inv
execute if score #double_type nzl.data matches ..0 run scoreboard players set #double_type nzl.data 0
function nzl:start/type_available
execute if score #double_type nzl.data matches 1.. run function nzl:start/type_available

## Attribution dès le départ des types à tous les joueurs
execute if score #type_start nzl.data matches 1 as @a[tag=uhc.player,sort=random] run function nzl:types/evolve/1/starter/
execute unless score #type_start nzl.data matches 1 as @a[tag=uhc.player] run function nzl:types/evolve/1/starter/--- with storage nzl ---_0_chat
