
#> mls:start/set_moles
#
# @within			mls:start/
#
#
# @description		Sélection des taupes
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players operation @r[predicate=uhc:id/team,scores={mls.player.team=0}] mls.player.team = #team mls.player.team
scoreboard players add #team mls.player.team 1
execute unless score #amount_moles mls.data.team <= #team mls.player.team run function mls:start/set_moles
scoreboard players set #team mls.player.team 1
