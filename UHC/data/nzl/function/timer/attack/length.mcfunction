
#> nzl:timer/attack/length
#
# @within			nzl:timer/attack/
#
#
# @description		Function executed every tick
#

scoreboard players remove @s nzl.attack.length 1
scoreboard players remove @s[scores={nzl.attack.length.01=1..}] nzl.attack.length.01 1
scoreboard players remove @s[scores={nzl.attack.length.02=1..}] nzl.attack.length.02 1
scoreboard players remove @s[scores={nzl.attack.length.03=1..}] nzl.attack.length.03 1
scoreboard players remove @s[scores={nzl.attack.length.04=1..}] nzl.attack.length.04 1
scoreboard players remove @s[scores={nzl.attack.length.05=1..}] nzl.attack.length.05 1
scoreboard players remove @s[scores={nzl.attack.length.06=1..}] nzl.attack.length.06 1
scoreboard players remove @s[scores={nzl.attack.length.07=1..}] nzl.attack.length.07 1
scoreboard players remove @s[scores={nzl.attack.length.08=1..}] nzl.attack.length.08 1
scoreboard players remove @s[scores={nzl.attack.length.09=1..}] nzl.attack.length.09 1
scoreboard players remove @s[scores={nzl.attack.length.10=1..}] nzl.attack.length.10 1
scoreboard players remove @s[scores={nzl.attack.length.11=1..}] nzl.attack.length.11 1
scoreboard players remove @s[scores={nzl.attack.length.12=1..}] nzl.attack.length.12 1
scoreboard players remove @s[scores={nzl.attack.length.13=1..}] nzl.attack.length.13 1
scoreboard players remove @s[scores={nzl.attack.length.14=1..}] nzl.attack.length.14 1
scoreboard players remove @s[scores={nzl.attack.length.15=1..}] nzl.attack.length.15 1
scoreboard players remove @s[scores={nzl.attack.length.16=1..}] nzl.attack.length.16 1
scoreboard players remove @s[scores={nzl.attack.length.17=1..}] nzl.attack.length.17 1
scoreboard players remove @s[scores={nzl.attack.length.18=1..}] nzl.attack.length.18 1

# Hotbar
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.01,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.01
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.02,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.02
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.03,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.03
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.04,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.04
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.05,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.05
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.06,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.06
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.07,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.07
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.08,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.08
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.09,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.09
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.10,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.10
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.11,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.11
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.12,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.12
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.13,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.13
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.14,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.14
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.15,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.15
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.16,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.16
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.17,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.17
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.18,predicate=uhc:id/team] nzl.attack.length = @s nzl.attack.length.01
