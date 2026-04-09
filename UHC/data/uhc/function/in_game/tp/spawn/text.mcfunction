
#> uhc:in_game/tp/spawn/text
#
# @within			uhc:in_game/player/login/main
# @within			uhc:in_game/tp/spawn/default
#
# @description		Configuration du timer 
#

## FRA
# Spawn 00

# Spawn 01-04
$execute if score @s uhc.id.spawn matches 01 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(720) $(720)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 02 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(720) -$(720)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 03 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(720) $(720)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 04 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(720) -$(720)","color":"#FFE73F","bold":true}]
# Spawn 05-08
$execute if score @s uhc.id.spawn matches 05 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(840) $(360)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 06 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(840) -$(360)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 07 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(840) $(360)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 08 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(840) -$(360)","color":"#FFE73F","bold":true}]
# Spawn 09-12
$execute if score @s uhc.id.spawn matches 09 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(360) $(840)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 10 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(360) -$(840)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 11 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(360) $(840)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 12 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(360) -$(840)","color":"#FFE73F","bold":true}]
# Spawn 13-16
$execute if score @s uhc.id.spawn matches 13 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(960) 0","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 14 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(960) 0","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 15 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"0 $(960)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 16 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"0 -$(960)","color":"#FFE73F","bold":true}]

# Spawn 17-20
$execute if score @s uhc.id.spawn matches 17 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(900) $(180)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 18 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(900) -$(180)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 19 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(900) $(180)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 20 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(900) -$(180)","color":"#FFE73F","bold":true}]
# Spawn 21-24
$execute if score @s uhc.id.spawn matches 21 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(780) $(540)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 22 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(780) -$(540)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 23 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(780) $(540)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 24 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(780) -$(540)","color":"#FFE73F","bold":true}]
# Spawn 25-28
$execute if score @s uhc.id.spawn matches 25 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(180) $(900)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 26 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(180) -$(900)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 27 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(180) $(900)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 28 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(180) -$(900)","color":"#FFE73F","bold":true}]
# Spawn 29-32
$execute if score @s uhc.id.spawn matches 29 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(540) $(780)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 30 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(540) -$(780)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 31 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(540) $(780)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 32 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"-$(540) -$(780)","color":"#FFE73F","bold":true}]

## ENG
# Spawn 00

# Spawn 01-04
$execute if score @s uhc.id.spawn matches 01 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(720) $(720)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 02 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(720) -$(720)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 03 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(720) $(720)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 04 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(720) -$(720)","color":"#FFE73F","bold":true}]
# Spawn 05-08
$execute if score @s uhc.id.spawn matches 05 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(840) $(360)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 06 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(840) -$(360)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 07 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(840) $(360)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 08 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(840) -$(360)","color":"#FFE73F","bold":true}]
# Spawn 09-12
$execute if score @s uhc.id.spawn matches 09 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(360) $(840)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 10 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(360) -$(840)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 11 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(360) $(840)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 12 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(360) -$(840)","color":"#FFE73F","bold":true}]
# Spawn 13-16
$execute if score @s uhc.id.spawn matches 13 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(960) 0","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 14 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(960) 0","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 15 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"0 $(960)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 16 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"0 -$(960)","color":"#FFE73F","bold":true}]

# Spawn 17-20
$execute if score @s uhc.id.spawn matches 17 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(900) $(180)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 18 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(900) -$(180)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 19 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(900) $(180)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 20 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(900) -$(180)","color":"#FFE73F","bold":true}]
# Spawn 21-24
$execute if score @s uhc.id.spawn matches 21 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(780) $(540)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 22 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(780) -$(540)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 23 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(780) $(540)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 24 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(780) -$(540)","color":"#FFE73F","bold":true}]
# Spawn 25-28
$execute if score @s uhc.id.spawn matches 25 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(180) $(900)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 26 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(180) -$(900)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 27 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(180) $(900)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 28 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(180) -$(900)","color":"#FFE73F","bold":true}]
# Spawn 29-32
$execute if score @s uhc.id.spawn matches 29 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(540) $(780)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 30 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"$(540) -$(780)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 31 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(540) $(780)","color":"#FFE73F","bold":true}]
$execute if score @s uhc.id.spawn matches 32 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point: ","color":"#FFFFFF"},{"text":"-$(540) -$(780)","color":"#FFE73F","bold":true}]
