
#> pregen:region/2048x2048
#
# @within			#minecraft:load
#
#
# @description		Fonction de configuration de la partie
#

$execute if score #$(dimension)_finished pregen.world matches 2.. run scoreboard players set #$(dimension)_chunk_pregen_$(area) pregen.world 1126

$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1001 run forceload add -1024 -1024 -897 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1005 run forceload remove -1024 -1024 -897 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1002 run forceload add -1024 -832 -897 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1006 run forceload remove -1024 -832 -897 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1003 run forceload add -1024 -640 -897 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1007 run forceload remove -1024 -640 -897 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1004 run forceload add -1024 -448 -897 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1008 run forceload remove -1024 -448 -897 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1005 run forceload add -1024 -256 -897 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1009 run forceload remove -1024 -256 -897 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1006 run forceload add -1024 -64 -897 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1010 run forceload remove -1024 -64 -897 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1007 run forceload add -1024 128 -897 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1011 run forceload remove -1024 128 -897 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1008 run forceload add -1024 320 -897 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1012 run forceload remove -1024 320 -897 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1009 run forceload add -1024 512 -897 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1013 run forceload remove -1024 512 -897 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1010 run forceload add -1024 704 -897 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1014 run forceload remove -1024 704 -897 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1011 run forceload add -1024 896 -897 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1015 run forceload remove -1024 896 -897 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1012 run forceload add -832 -1024 -705 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1016 run forceload remove -832 -1024 -705 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1013 run forceload add -832 -832 -705 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1017 run forceload remove -832 -832 -705 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1014 run forceload add -832 -640 -705 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1018 run forceload remove -832 -640 -705 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1015 run forceload add -832 -448 -705 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1019 run forceload remove -832 -448 -705 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1016 run forceload add -832 -256 -705 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1020 run forceload remove -832 -256 -705 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1017 run forceload add -832 -64 -705 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1021 run forceload remove -832 -64 -705 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1018 run forceload add -832 128 -705 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1022 run forceload remove -832 128 -705 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1019 run forceload add -832 320 -705 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1023 run forceload remove -832 320 -705 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1020 run forceload add -832 512 -705 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1024 run forceload remove -832 512 -705 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1021 run forceload add -832 704 -705 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1025 run forceload remove -832 704 -705 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1022 run forceload add -832 896 -705 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1026 run forceload remove -832 896 -705 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1023 run forceload add -640 -1024 -513 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1027 run forceload remove -640 -1024 -513 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1024 run forceload add -640 -832 -513 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1028 run forceload remove -640 -832 -513 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1025 run forceload add -640 -640 -513 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1029 run forceload remove -640 -640 -513 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1026 run forceload add -640 -448 -513 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1030 run forceload remove -640 -448 -513 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1027 run forceload add -640 -256 -513 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1031 run forceload remove -640 -256 -513 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1028 run forceload add -640 -64 -513 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1032 run forceload remove -640 -64 -513 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1029 run forceload add -640 128 -513 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1033 run forceload remove -640 128 -513 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1030 run forceload add -640 320 -513 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1034 run forceload remove -640 320 -513 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1031 run forceload add -640 512 -513 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1035 run forceload remove -640 512 -513 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1032 run forceload add -640 704 -513 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1036 run forceload remove -640 704 -513 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1033 run forceload add -640 896 -513 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1037 run forceload remove -640 896 -513 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1034 run forceload add -448 -1024 -321 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1038 run forceload remove -448 -1024 -321 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1035 run forceload add -448 -832 -321 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1039 run forceload remove -448 -832 -321 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1036 run forceload add -448 -640 -321 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1040 run forceload remove -448 -640 -321 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1037 run forceload add -448 -448 -321 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1041 run forceload remove -448 -448 -321 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1038 run forceload add -448 -256 -321 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1042 run forceload remove -448 -256 -321 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1039 run forceload add -448 -64 -321 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1043 run forceload remove -448 -64 -321 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1040 run forceload add -448 128 -321 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1044 run forceload remove -448 128 -321 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1041 run forceload add -448 320 -321 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1045 run forceload remove -448 320 -321 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1042 run forceload add -448 512 -321 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1046 run forceload remove -448 512 -321 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1043 run forceload add -448 704 -321 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1047 run forceload remove -448 704 -321 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1044 run forceload add -448 896 -321 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1048 run forceload remove -448 896 -321 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1045 run forceload add -256 -1024 -129 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1049 run forceload remove -256 -1024 -129 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1046 run forceload add -256 -832 -129 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1050 run forceload remove -256 -832 -129 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1047 run forceload add -256 -640 -129 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1051 run forceload remove -256 -640 -129 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1048 run forceload add -256 -448 -129 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1052 run forceload remove -256 -448 -129 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1049 run forceload add -256 -256 -129 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1053 run forceload remove -256 -256 -129 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1050 run forceload add -256 -64 -129 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1054 run forceload remove -256 -64 -129 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1051 run forceload add -256 128 -129 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1055 run forceload remove -256 128 -129 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1052 run forceload add -256 320 -129 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1056 run forceload remove -256 320 -129 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1053 run forceload add -256 512 -129 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1057 run forceload remove -256 512 -129 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1054 run forceload add -256 704 -129 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1058 run forceload remove -256 704 -129 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1055 run forceload add -256 896 -129 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1059 run forceload remove -256 896 -129 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1056 run forceload add -64 -1024 63 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1060 run forceload remove -64 -1024 63 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1057 run forceload add -64 -832 63 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1061 run forceload remove -64 -832 63 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1058 run forceload add -64 -640 63 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1062 run forceload remove -64 -640 63 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1059 run forceload add -64 -448 63 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1063 run forceload remove -64 -448 63 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1060 run forceload add -64 -256 63 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1064 run forceload remove -64 -256 63 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1061 run forceload add -64 -64 63 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1065 run forceload remove -64 -64 63 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1062 run forceload add -64 128 63 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1066 run forceload remove -64 128 63 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1063 run forceload add -64 320 63 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1067 run forceload remove -64 320 63 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1064 run forceload add -64 512 63 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1068 run forceload remove -64 512 63 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1065 run forceload add -64 704 63 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1069 run forceload remove -64 704 63 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1066 run forceload add -64 896 63 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1070 run forceload remove -64 896 63 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1067 run forceload add 128 -1024 255 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1071 run forceload remove 128 -1024 255 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1068 run forceload add 128 -832 255 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1072 run forceload remove 128 -832 255 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1069 run forceload add 128 -640 255 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1073 run forceload remove 128 -640 255 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1070 run forceload add 128 -448 255 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1074 run forceload remove 128 -448 255 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1071 run forceload add 128 -256 255 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1075 run forceload remove 128 -256 255 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1072 run forceload add 128 -64 255 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1076 run forceload remove 128 -64 255 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1073 run forceload add 128 128 255 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1077 run forceload remove 128 128 255 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1074 run forceload add 128 320 255 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1078 run forceload remove 128 320 255 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1075 run forceload add 128 512 255 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1079 run forceload remove 128 512 255 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1076 run forceload add 128 704 255 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1080 run forceload remove 128 704 255 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1077 run forceload add 128 896 255 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1081 run forceload remove 128 896 255 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1078 run forceload add 320 -1024 447 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1082 run forceload remove 320 -1024 447 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1079 run forceload add 320 -832 447 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1083 run forceload remove 320 -832 447 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1080 run forceload add 320 -640 447 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1084 run forceload remove 320 -640 447 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1081 run forceload add 320 -448 447 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1085 run forceload remove 320 -448 447 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1082 run forceload add 320 -256 447 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1086 run forceload remove 320 -256 447 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1083 run forceload add 320 -64 447 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1087 run forceload remove 320 -64 447 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1084 run forceload add 320 128 447 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1088 run forceload remove 320 128 447 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1085 run forceload add 320 320 447 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1089 run forceload remove 320 320 447 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1086 run forceload add 320 512 447 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1090 run forceload remove 320 512 447 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1087 run forceload add 320 704 447 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1091 run forceload remove 320 704 447 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1088 run forceload add 320 896 447 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1092 run forceload remove 320 896 447 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1089 run forceload add 512 -1024 639 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1093 run forceload remove 512 -1024 639 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1090 run forceload add 512 -832 639 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1094 run forceload remove 512 -832 639 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1091 run forceload add 512 -640 639 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1095 run forceload remove 512 -640 639 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1092 run forceload add 512 -448 639 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1096 run forceload remove 512 -448 639 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1093 run forceload add 512 -256 639 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1097 run forceload remove 512 -256 639 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1094 run forceload add 512 -64 639 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1098 run forceload remove 512 -64 639 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1095 run forceload add 512 128 639 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1099 run forceload remove 512 128 639 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1096 run forceload add 512 320 639 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1100 run forceload remove 512 320 639 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1097 run forceload add 512 512 639 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1101 run forceload remove 512 512 639 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1098 run forceload add 512 704 639 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1102 run forceload remove 512 704 639 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1099 run forceload add 512 896 639 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1103 run forceload remove 512 896 639 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1100 run forceload add 704 -1024 831 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1104 run forceload remove 704 -1024 831 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1101 run forceload add 704 -832 831 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1105 run forceload remove 704 -832 831 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1102 run forceload add 704 -640 831 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1106 run forceload remove 704 -640 831 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1103 run forceload add 704 -448 831 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1107 run forceload remove 704 -448 831 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1104 run forceload add 704 -256 831 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1108 run forceload remove 704 -256 831 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1105 run forceload add 704 -64 831 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1109 run forceload remove 704 -64 831 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1106 run forceload add 704 128 831 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1110 run forceload remove 704 128 831 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1107 run forceload add 704 320 831 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1111 run forceload remove 704 320 831 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1108 run forceload add 704 512 831 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1112 run forceload remove 704 512 831 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1109 run forceload add 704 704 831 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1113 run forceload remove 704 704 831 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1110 run forceload add 704 896 831 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1114 run forceload remove 704 896 831 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1111 run forceload add 896 -1024 1023 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1115 run forceload remove 896 -1024 1023 -897
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1112 run forceload add 896 -832 1023 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1116 run forceload remove 896 -832 1023 -705
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1113 run forceload add 896 -640 1023 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1117 run forceload remove 896 -640 1023 -513
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1114 run forceload add 896 -448 1023 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1118 run forceload remove 896 -448 1023 -321
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1115 run forceload add 896 -256 1023 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1119 run forceload remove 896 -256 1023 -129
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1116 run forceload add 896 -64 1023 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1120 run forceload remove 896 -64 1023 63
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1117 run forceload add 896 128 1023 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1121 run forceload remove 896 128 1023 255
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1118 run forceload add 896 320 1023 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1122 run forceload remove 896 320 1023 447
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1119 run forceload add 896 512 1023 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1123 run forceload remove 896 512 1023 639
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1120 run forceload add 896 704 1023 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1124 run forceload remove 896 704 1023 831
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1121 run forceload add 896 896 1023 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1125 run forceload remove 896 896 1023 1023
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1004 run tellraw @a [$(text),{"text":"2048x2048 (0/48, 0%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1006 run tellraw @a [$(text),{"text":"2048x2048 (1/48, 2%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1009 run tellraw @a [$(text),{"text":"2048x2048 (2/48, 4%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1011 run tellraw @a [$(text),{"text":"2048x2048 (3/48, 6%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1014 run tellraw @a [$(text),{"text":"2048x2048 (4/48, 8%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1016 run tellraw @a [$(text),{"text":"2048x2048 (5/48, 10%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1019 run tellraw @a [$(text),{"text":"2048x2048 (6/48, 12%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1021 run tellraw @a [$(text),{"text":"2048x2048 (7/48, 14%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1024 run tellraw @a [$(text),{"text":"2048x2048 (8/48, 16%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1026 run tellraw @a [$(text),{"text":"2048x2048 (9/48, 18%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1029 run tellraw @a [$(text),{"text":"2048x2048 (10/48, 20%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1031 run tellraw @a [$(text),{"text":"2048x2048 (11/48, 22%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1034 run tellraw @a [$(text),{"text":"2048x2048 (12/48, 25%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1036 run tellraw @a [$(text),{"text":"2048x2048 (13/48, 27%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1039 run tellraw @a [$(text),{"text":"2048x2048 (14/48, 29%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1041 run tellraw @a [$(text),{"text":"2048x2048 (15/48, 31%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1044 run tellraw @a [$(text),{"text":"2048x2048 (16/48, 33%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1046 run tellraw @a [$(text),{"text":"2048x2048 (17/48, 35%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1049 run tellraw @a [$(text),{"text":"2048x2048 (18/48, 37%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1051 run tellraw @a [$(text),{"text":"2048x2048 (19/48, 39%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1054 run tellraw @a [$(text),{"text":"2048x2048 (20/48, 41%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1056 run tellraw @a [$(text),{"text":"2048x2048 (21/48, 43%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1059 run tellraw @a [$(text),{"text":"2048x2048 (22/48, 45%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1061 run tellraw @a [$(text),{"text":"2048x2048 (23/48, 47%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1064 run tellraw @a [$(text),{"text":"2048x2048 (24/48, 50%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1067 run tellraw @a [$(text),{"text":"2048x2048 (25/48, 52%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1069 run tellraw @a [$(text),{"text":"2048x2048 (26/48, 54%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1072 run tellraw @a [$(text),{"text":"2048x2048 (27/48, 56%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1074 run tellraw @a [$(text),{"text":"2048x2048 (28/48, 58%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1077 run tellraw @a [$(text),{"text":"2048x2048 (29/48, 60%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1079 run tellraw @a [$(text),{"text":"2048x2048 (30/48, 62%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1082 run tellraw @a [$(text),{"text":"2048x2048 (31/48, 64%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1084 run tellraw @a [$(text),{"text":"2048x2048 (32/48, 66%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1087 run tellraw @a [$(text),{"text":"2048x2048 (33/48, 68%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1089 run tellraw @a [$(text),{"text":"2048x2048 (34/48, 70%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1092 run tellraw @a [$(text),{"text":"2048x2048 (35/48, 72%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1094 run tellraw @a [$(text),{"text":"2048x2048 (36/48, 75%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1097 run tellraw @a [$(text),{"text":"2048x2048 (37/48, 77%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1099 run tellraw @a [$(text),{"text":"2048x2048 (38/48, 79%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1102 run tellraw @a [$(text),{"text":"2048x2048 (39/48, 81%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1104 run tellraw @a [$(text),{"text":"2048x2048 (40/48, 83%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1107 run tellraw @a [$(text),{"text":"2048x2048 (41/48, 85%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1109 run tellraw @a [$(text),{"text":"2048x2048 (42/48, 87%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1112 run tellraw @a [$(text),{"text":"2048x2048 (43/48, 89%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1114 run tellraw @a [$(text),{"text":"2048x2048 (44/48, 91%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1117 run tellraw @a [$(text),{"text":"2048x2048 (45/48, 93%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1119 run tellraw @a [$(text),{"text":"2048x2048 (46/48, 95%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1122 run tellraw @a [$(text),{"text":"2048x2048 (47/48, 97%)"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1125 run tellraw @a [$(text),{"text":"2048x2048 (48/48, 100%)"}]

$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1126 run tellraw @a [{"text":"La zone de 2048x2048 a entièrement été générée"}]
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1126 run scoreboard players set #$(dimension)_working pregen.world 0
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1126 run scoreboard players set #$(dimension)_finished pregen.world 2
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1126 as @a[tag=uhc.menu.world_generation] run advancement grant @s only uhc:inventory_menu
$execute if score #$(dimension)_chunk_pregen_$(area) pregen.world matches 1126 run scoreboard players set #$(dimension)_chunk_pregen_$(area) pregen.world 0
