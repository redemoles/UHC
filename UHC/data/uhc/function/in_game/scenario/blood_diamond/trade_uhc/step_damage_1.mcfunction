
#> uhc:in_game/scenario/blood_diamond/trade_uhc/step_damage_1
#
# @within			uhc:in_game/scenario/blood_diamond/trade_uhc/step_damage
#
#
# @description		Palier 3 - Dégâts progressifs
#

$tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Blood Diamond ($(mined)/∞) ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -$(damage) PV, +1 émeraude (100%)","color":"#FF3F3F","bold":false}]
$tellraw @a[tag=uhc.spec,tag=uhc.spec_info.blood_diamond,scores={uhc.player.lang=061801}] [{"text":"Blood Diamond ","color":"#CFCFCF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -$(damage) PV, +1 émeraude (100%) pour ","color":"#FF3F3F","bold":false},{"selector":"@s"},{"text":" ($(mined)/∞)","color":"#FF3F3F","bold":false}]

$tellraw @s[scores={uhc.player.lang=051407}] [{"text":"Blood Diamond ($(mined)/∞) ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -$(damage) HP, +1 emerald (100%)","color":"#FF3F3F","bold":false}]
$tellraw @a[tag=uhc.spec,tag=uhc.spec_info.blood_diamond,scores={uhc.player.lang=051407}] [{"text":"Blood Diamond ","color":"#CFCFCF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -$(damage) HP, +1 emerald (100%) for ","color":"#FF3F3F","bold":false},{"selector":"@s"},{"text":" ($(mined)/∞)","color":"#FF3F3F","bold":false}]

$title @s[scores={uhc.player.lang=061801}] title [{"text":"-$(damage) PV","color":"#FF3F3F"}]
title @s[scores={uhc.player.lang=061801}] subtitle [{"text":"Blood Diamond - Progressif","color":"#FF3F3F"}]

$title @s[scores={uhc.player.lang=051407}] title [{"text":"-$(damage) HP","color":"#FF3F3F"}]
title @s[scores={uhc.player.lang=051407}] subtitle [{"text":"Blood Diamond - Progressive","color":"#FF3F3F"}]

$damage @s $(damage)
