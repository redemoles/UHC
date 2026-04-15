
#> uhc:in_game/scenario/sound_paranoia/long_sound/placed_blocks
#
# @within			uhc:in_game/scenario/sound_paranoia/trigger
#
#
# @description		Son de flèche qui touche le sol sur un joueur
#

scoreboard players add Placed_blocks uhc.scenario.sound_paranoia.sb.total_sound 1
scoreboard players add Total uhc.scenario.sound_paranoia.sb.placed_blocks 1
scoreboard players add @s uhc.scenario.sound_paranoia.sb.placed_blocks 1

scoreboard players set @s uhc.scenario.sound_paranoia.tick 36

function uhc:translation/in_game/scenario/sound_paranoia/stone

scoreboard players set @s[scores={uhc.player.y=..-6}] uhc.scenario.sound_paranoia.sound 12
