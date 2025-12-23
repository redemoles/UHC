
#> nzl:timer/scoreboard/marker_name
#
# @within			nzl:timer/scoreboard/types_1
#
#
# @description		Function executed every tick
#

$execute if entity @s[tag=01] run team join nzl.1301 $(name)
$execute if entity @s[tag=02] run team join nzl.1302 $(name)
$execute if entity @s[tag=03] run team join nzl.1303 $(name)
$execute if entity @s[tag=04] run team join nzl.1304 $(name)
$execute if entity @s[tag=05] run team join nzl.1305 $(name)
$execute if entity @s[tag=06] run team join nzl.1306 $(name)
$execute if entity @s[tag=07] run team join nzl.1307 $(name)
$execute if entity @s[tag=08] run team join nzl.1308 $(name)
$execute if entity @s[tag=09] run team join nzl.1309 $(name)
$execute if entity @s[tag=10] run team join nzl.1310 $(name)
$execute if entity @s[tag=11] run team join nzl.1311 $(name)
$execute if entity @s[tag=12] run team join nzl.1312 $(name)
$execute if entity @s[tag=13] run team join nzl.1313 $(name)
$execute if entity @s[tag=14] run team join nzl.1314 $(name)
$execute if entity @s[tag=15] run team join nzl.1315 $(name)
$execute if entity @s[tag=16] run team join nzl.1316 $(name)
$execute if entity @s[tag=17] run team join nzl.1317 $(name)
$execute if entity @s[tag=18] run team join nzl.1318 $(name)
$scoreboard players reset $(name)

$scoreboard players operation $(name) nzl.type.display = @s nzl.type.available
