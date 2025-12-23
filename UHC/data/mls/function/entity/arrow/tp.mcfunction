
#> mls:entity/arrow/tp
#
# @within			mls:entity/arrow/
#
#
# @description		TP flèche
#

$execute unless score #$(weapon) mls.player.kit.bow matches 1 run return fail
$execute as @s[nbt={weapon:{components:{"minecraft:custom_data":{Tags:"$(weapon)"}}}}] at @s run function mls:entity/arrow/tp_1 with storage mls:arrow
kill @s[scores={mls.player.kit.bow=2}]
kill @s[scores={mls.player.kit.bow=1},nbt={inGround:1b}]
