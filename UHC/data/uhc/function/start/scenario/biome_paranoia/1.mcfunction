
#> uhc:start/scenario/biome_paranoia/1
#
# @within			uhc:start/setup_players
#
#
# @description		Randomiseur de la liste des joueurs dans le tab
#

$team add biome_paranoia.$(team)
$team join biome_paranoia.$(team) @s
$execute unless score #start_in_sky uhc.data.setup matches 1 run team modify biome_paranoia.$(team) collisionRule always
$execute if score #start_in_sky uhc.data.setup matches 1 run team modify biome_paranoia.$(team) collisionRule never

execute if score #anonyme_team uhc.data.setup matches 1 run return fail

$execute if score #team uhc.id.team matches 01 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":dark_blue,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 02 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":blue,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 03 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":dark_aqua,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 04 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":aqua,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 05 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":dark_green,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 06 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":green,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 07 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":yellow,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 08 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":gold,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 09 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":red,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 10 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":dark_red,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 11 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":dark_purple,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 12 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":light_purple,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 13 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":white,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 14 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":gray,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 15 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":dark_gray,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 16 run team modify biome_paranoia.$(team) prefix [{"text":"■","color":black,"bold":true},{"text":" ","bold":false}]

$execute if score #team uhc.id.team matches 17 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":dark_blue,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 18 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":blue,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 19 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":dark_aqua,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 20 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":aqua,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 21 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":dark_green,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 22 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":green,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 23 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":yellow,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 24 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":gold,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 25 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":red,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 26 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":dark_red,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 27 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":dark_purple,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 28 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":light_purple,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 29 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":white,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 30 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":gray,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 31 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":dark_gray,"bold":true},{"text":" ","bold":false}]
$execute if score #team uhc.id.team matches 32 run team modify biome_paranoia.$(team) prefix [{"text":"♦","color":black,"bold":true},{"text":" ","bold":false}]
