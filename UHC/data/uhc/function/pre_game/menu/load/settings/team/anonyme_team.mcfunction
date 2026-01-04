
#> uhc:pre_game/menu/load/settings/team/anonyme_team
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

scoreboard players set @s uhc.menu.settings.team 1
scoreboard players add #anonyme_team uhc.data.setup 1
execute if score #anonyme_team uhc.data.setup matches 2 run scoreboard players set #anonyme_team uhc.data.setup 0
execute if score #anonyme_team uhc.data.setup matches 1 run scoreboard players set #random_team_start uhc.data.setup 1
execute if score #anonyme_team uhc.data.setup matches 1 run team join 091 @a[tag=uhc.player,tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 001 @a[scores={uhc.id.team=01},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 002 @a[scores={uhc.id.team=02},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 003 @a[scores={uhc.id.team=03},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 004 @a[scores={uhc.id.team=04},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 005 @a[scores={uhc.id.team=05},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 006 @a[scores={uhc.id.team=06},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 007 @a[scores={uhc.id.team=07},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 008 @a[scores={uhc.id.team=08},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 009 @a[scores={uhc.id.team=09},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 010 @a[scores={uhc.id.team=10},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 011 @a[scores={uhc.id.team=11},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 012 @a[scores={uhc.id.team=12},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 013 @a[scores={uhc.id.team=13},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 014 @a[scores={uhc.id.team=14},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 015 @a[scores={uhc.id.team=15},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 016 @a[scores={uhc.id.team=16},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 017 @a[scores={uhc.id.team=17},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 018 @a[scores={uhc.id.team=18},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 019 @a[scores={uhc.id.team=19},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 020 @a[scores={uhc.id.team=20},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 021 @a[scores={uhc.id.team=21},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 022 @a[scores={uhc.id.team=22},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 023 @a[scores={uhc.id.team=23},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 024 @a[scores={uhc.id.team=24},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 025 @a[scores={uhc.id.team=25},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 026 @a[scores={uhc.id.team=26},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 027 @a[scores={uhc.id.team=27},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 028 @a[scores={uhc.id.team=28},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 029 @a[scores={uhc.id.team=29},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 030 @a[scores={uhc.id.team=30},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 031 @a[scores={uhc.id.team=31},tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 0 run team join 032 @a[scores={uhc.id.team=32},tag=!mgs.backroom]

function uhc:pre_game/menu/load/settings/menu
