
#> nzl:timer/attack/cooldown
#
# @within			nzl:timer/attack/
#
#
# @description		Function executed every tick
#

scoreboard players remove @s nzl.attack.cooldown 1
scoreboard players remove @s[scores={nzl.attack.cooldown.01=1..}] nzl.attack.cooldown.01 1
scoreboard players remove @s[scores={nzl.attack.cooldown.02=1..}] nzl.attack.cooldown.02 1
scoreboard players remove @s[scores={nzl.attack.cooldown.03=1..}] nzl.attack.cooldown.03 1
scoreboard players remove @s[scores={nzl.attack.cooldown.04=1..}] nzl.attack.cooldown.04 1
scoreboard players remove @s[scores={nzl.attack.cooldown.05=1..}] nzl.attack.cooldown.05 1
scoreboard players remove @s[scores={nzl.attack.cooldown.06=1..}] nzl.attack.cooldown.06 1
scoreboard players remove @s[scores={nzl.attack.cooldown.07=1..}] nzl.attack.cooldown.07 1
scoreboard players remove @s[scores={nzl.attack.cooldown.08=1..}] nzl.attack.cooldown.08 1
scoreboard players remove @s[scores={nzl.attack.cooldown.09=1..}] nzl.attack.cooldown.09 1
scoreboard players remove @s[scores={nzl.attack.cooldown.10=1..}] nzl.attack.cooldown.10 1
scoreboard players remove @s[scores={nzl.attack.cooldown.11=1..}] nzl.attack.cooldown.11 1
scoreboard players remove @s[scores={nzl.attack.cooldown.12=1..}] nzl.attack.cooldown.12 1
scoreboard players remove @s[scores={nzl.attack.cooldown.13=1..}] nzl.attack.cooldown.13 1
scoreboard players remove @s[scores={nzl.attack.cooldown.14=1..}] nzl.attack.cooldown.14 1
scoreboard players remove @s[scores={nzl.attack.cooldown.15=1..}] nzl.attack.cooldown.15 1
scoreboard players remove @s[scores={nzl.attack.cooldown.16=1..}] nzl.attack.cooldown.16 1
scoreboard players remove @s[scores={nzl.attack.cooldown.17=1..}] nzl.attack.cooldown.17 1
scoreboard players remove @s[scores={nzl.attack.cooldown.18=1..}] nzl.attack.cooldown.18 1

# Hotbar
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.01,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.01
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.02,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.02
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.03,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.03
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.04,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.04
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.05,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.05
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.06,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.06
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.07,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.07
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.08,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.08
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.09,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.09
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.10,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.10
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.11,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.11
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.12,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.12
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.13,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.13
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.14,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.14
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.15,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.15
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.16,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.16
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.17,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.17
scoreboard players operation @p[tag=uhc.player,tag=nzl.type.18,predicate=uhc:id_team] nzl.attack.cooldown = @s nzl.attack.cooldown.01
