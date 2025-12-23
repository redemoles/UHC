
#> bhc:timer/scoreboard/displayed/display
#
# @within			bhc:timer/scoreboard/displayed/...
#
#
# @description		Mise à jour du scoreboard
#

$data modify entity @s data.sb set value "§r§$(rank_number_tens)§$(rank_number_units)"
$execute if score #team bhc.data matches ..09 run return run team modify bhc.sb.$(rank_number_tens)$(rank_number_units) prefix [{"text":"$(rank_number_units). "},$(team)]
$execute if score #team bhc.data matches 10.. run return run team modify bhc.sb.$(rank_number_tens)$(rank_number_units) prefix [{"text":"$(rank_number_tens)$(rank_number_units). "},$(team)]
