
#> uhc:in_game/scenario/silent_night/biome_paranoia/root
#
# @within			uhc:in_game/scenario/silent_night/biome_paranoia/root
#
#
# @description		Silent Night
#

$execute if predicate uhc:scenario/silent_night/night_time run team modify biome_paranoia.$(team) nametagVisibility never
$execute if predicate uhc:scenario/silent_night/day_time run team modify biome_paranoia.$(team) nametagVisibility always
