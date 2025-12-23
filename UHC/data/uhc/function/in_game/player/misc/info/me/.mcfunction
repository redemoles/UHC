
#> uhc:in_game/player/misc/info/me/
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Donne au joueur ses statistiques
#

scoreboard players operation #integer uhc.player.damage_dealt.pvp = @s uhc.player.damage_dealt.pvp
scoreboard players operation #integer uhc.player.damage_dealt.pvp /= #10 uhc.data.numbers
scoreboard players operation #decimal uhc.player.damage_dealt.pvp = @s uhc.player.damage_dealt.pvp
scoreboard players operation #decimal uhc.player.damage_dealt.pvp %= #10 uhc.data.numbers

scoreboard players operation #integer uhc.player.damage_taken = @s uhc.player.damage_taken
scoreboard players operation #integer uhc.player.damage_taken /= #10 uhc.data.numbers
scoreboard players operation #decimal uhc.player.damage_taken = @s uhc.player.damage_taken
scoreboard players operation #decimal uhc.player.damage_taken %= #10 uhc.data.numbers

function uhc:in_game/player/misc/info/me/macro_text with storage uhc:info me

scoreboard players reset @s uhc.info.me
scoreboard players enable @s uhc.info.me
