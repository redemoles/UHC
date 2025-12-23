
#> nzl:types/evolve/1/starter/---chat
#
# @within			nzl:start/
#
#
# @description		Type de départ
#

## Message Niveau 0 - Stade Starter
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#7FBF9F","bold":true,"obfuscated":true},{"text":"Type : ","color":"#BFDFCF","bold":true},{"text":"???                                ","color":"#7FBF9F","bold":true},{"text":"\nStade : ","color":"#BFDFCF","bold":true},{"text":"Base                                \n                                                ","color":"#7FBF9F","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#BFDFCF","bold":true},{"text":" [","color":"#7FBF9F","bold":true},{"text":"MALÉDICTION","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#7FBF9F","bold":true},{"text":"\nATTAQUE :","color":"#BFDFCF","bold":true},{"text":" [","color":"#7FBF9F","bold":true},{"text":"TREMPETTE","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#7FBF9F","bold":true},{"text":"################################\n","color":"#7FBF9F","bold":true,"obfuscated":true}]
function nzl:inventory/book_--- with storage nzl ---_0_book
