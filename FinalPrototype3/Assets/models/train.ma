//Maya ASCII 2014 scene
//Name: train.ma
//Last modified: Wed, Dec 24, 2014 08:07:51 AM
//Codeset: UTF-8
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201310090405-890429";
fileInfo "osv" "Mac OS X 10.9.1";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.615805542832694 -7.0238000201474051 -4.5136038202216646 ;
	setAttr ".r" -type "double3" -102.51707508428183 3.1805546814635176e-15 -240.40506635336985 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 12.318225413904289;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.251361238628053 -1.6431189477776391 -1.559338018519203 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.66624035350517763 -0.46564997707771572 100.12974927652033 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.0704757766147477;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.2364428515098567 -4.5282165074411598 -1.2304806114046352 ;
	setAttr ".r" -type "double3" 90.000000001180936 -0.00036786898817130187 -0.00036786898817888413 ;
	setAttr ".rp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" -1.8570994830960721e-17 -1.1386629362239275e-15 -1.4845980722592646e-15 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 3.8971142137917019;
	setAttr ".ow" 14.239455781161983;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -1.2364178299903872 -0.63110229372978432 -1.2304806113243112 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.3377952874695165 0.83858323368042864 2.760376866419301e-18 ;
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-16 -4.4408920985006262e-16 ;
	setAttr ".rpt" -type "double3" -4.4408920985004945e-16 -1.1795597765554265e-18 4.413288329836436e-16 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 3.8971143170299749;
	setAttr ".ow" 10.201029389027921;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -0.55931902956045843 0.83858323368042864 -8.6533320887260359e-16 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" -2.5858392961734076 -1.6157729575033319 -1.5593379938025251 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.2440311129218633 0.82935407528124205 0.1 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group";
	setAttr ".rp" -type "double3" -1.2364178235818484 -0.63110224430312978 -1.2304806734064293 ;
	setAttr ".sp" -type "double3" -1.2364178235818484 -0.63110224430312978 -1.2304806734064293 ;
createNode transform -n "group1";
	setAttr ".rp" -type "double3" -1.2364178235818484 -0.63110224430312978 -1.2304806734064293 ;
	setAttr ".sp" -type "double3" -1.2364178235818484 -0.63110224430312978 -1.2304806734064293 ;
createNode transform -n "pasted__pCube1" -p "group1";
	setAttr ".t" -type "double3" -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 4.5 3 2.1 ;
createNode transform -n "transform2" -p "|group1|pasted__pCube1";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape1" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group2";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "group3";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__group2" -p "group3";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pCube1" -p "pasted__group2";
	setAttr ".t" -type "double3" -1.4497430929353083 0.36462816595116032 -1.5346007354452602 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.415 1.48 0.05 ;
createNode mesh -n "pasted__pasted__pCubeShape1" -p "|group3|pasted__group2|pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group4";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__group3" -p "group4";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__group2" -p "|group4|pasted__group3";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__pCube1" -p "|group4|pasted__group3|pasted__pasted__group2";
	setAttr ".t" -type "double3" 0.098239783008533976 -0.71914105957617913 -1.5593379938025251 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.2440311129218633 0.82935407528124205 3.6097115184452337 ;
createNode transform -n "transform1" -p "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape1" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group5";
	setAttr ".rp" -type "double3" -2.5858393332484235 -0.71914068305392675 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" -2.5858393332484235 -0.71914068305392675 -1.5593380185192025 ;
createNode transform -n "pasted__pCube1" -p "group5";
	setAttr ".t" -type "double3" -2.5858392961734076 -0.71914105957617924 -1.5593379938025249 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.2440311129218633 0.82935407528124205 3.6097115184452337 ;
createNode transform -n "transform3" -p "|group5|pasted__pCube1";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape1" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface1";
createNode transform -n "transform4" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2";
createNode transform -n "transform6" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group6";
	setAttr ".rp" -type "double3" -1.243799793657453 -4.4734393128070273 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" -1.243799793657453 -4.4734393128070273 -1.5593380185192025 ;
createNode transform -n "pasted__pCube1" -p "group6";
	setAttr ".t" -type "double3" -2.585839296173408 0.40051076814016273 -1.5593379938025229 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -av ".rx";
	setAttr ".s" -type "double3" 1.2440311129218633 0.82935407528124205 0.1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
createNode mesh -n "pasted__pCubeShape1" -p "|group6|pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group3" -p "group6";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__group2" -p "|group6|pasted__group3";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__pCube1" -p "|group6|pasted__group3|pasted__pasted__group2";
	setAttr ".t" -type "double3" -1.2405147493261093 -0.71209819619964598 -1.5357680828581137 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.8440742842723753 1.5056227185285098 4.488843330418482 ;
createNode transform -n "transform5" -p "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape1" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group7";
	setAttr ".rp" -type "double3" 0.098239745933517697 -4.4871123131595869 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -4.4871123131595869 -1.5593380185192025 ;
createNode transform -n "pasted__group6" -p "group7";
	setAttr ".rp" -type "double3" -1.243799793657453 -4.4734393128070273 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" -1.243799793657453 -4.4734393128070273 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__group3" -p "|group7|pasted__group6";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__group2" -p "|group7|pasted__group6|pasted__pasted__group3";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube1" -p "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2";
	setAttr ".t" -type "double3" 0.098239783008533532 0.37316476743504268 -1.5593379938025231 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 1.2440311129218633 0.82935407528124205 0.1 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape1" -p "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group8";
	setAttr ".rp" -type "double3" -1.2364177703857422 -0.71209772797679982 -1.2304806113243103 ;
	setAttr ".sp" -type "double3" -1.2364177703857422 -0.71209772797679982 -1.2304806113243103 ;
createNode transform -n "pasted__group1" -p "group8";
	setAttr ".rp" -type "double3" -1.2364178235818484 -0.63110224430312978 -1.2304806734064293 ;
	setAttr ".sp" -type "double3" -1.2364178235818484 -0.63110224430312978 -1.2304806734064293 ;
createNode transform -n "pasted__pasted__pCube1" -p "pasted__group1";
	setAttr ".t" -type "double3" -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 4.5 3 2.1 ;
createNode transform -n "pasted__transform2" -p "|group8|pasted__group1|pasted__pasted__pCube1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape1" -p "pasted__transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group4" -p "group8";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__group3" -p "pasted__group4";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__group2" -p "|group8|pasted__group4|pasted__pasted__group3";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube1" -p "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2";
	setAttr ".t" -type "double3" 0.098239783008533976 -0.71914105957617913 -1.5593379938025251 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.2440311129218633 0.82935407528124205 3.6097115184452337 ;
createNode transform -n "pasted__transform1" -p "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape1" -p "pasted__transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group5" -p "group8";
	setAttr ".rp" -type "double3" -2.5858393332484235 -0.71914068305392675 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" -2.5858393332484235 -0.71914068305392675 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pCube1" -p "pasted__group5";
	setAttr ".t" -type "double3" -2.5858392961734076 -0.71914105957617924 -1.5593379938025249 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.2440311129218633 0.82935407528124205 3.6097115184452337 ;
createNode transform -n "pasted__transform3" -p "|group8|pasted__group5|pasted__pasted__pCube1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape1" -p "pasted__transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__polySurface1" -p "group8";
createNode transform -n "pasted__transform4" -p "pasted__polySurface1";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape1" -p "pasted__transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group6" -p "group8";
	setAttr ".rp" -type "double3" -1.243799793657453 -4.4734393128070273 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" -1.243799793657453 -4.4734393128070273 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__group3" -p "|group8|pasted__group6";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__group2" -p "|group8|pasted__group6|pasted__pasted__group3";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube1" -p "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2";
	setAttr ".t" -type "double3" -1.2405147493261093 -0.67313043062766997 -1.5357680828581137 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 4.3081220924558012 1.5056227185285098 1.9314619562562703 ;
createNode transform -n "transform9" -p "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape1" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface3";
createNode transform -n "transform8" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group9";
	setAttr ".rp" -type "double3" -1.2405147744814831 -0.56553763084871966 -1.5357681277291673 ;
	setAttr ".sp" -type "double3" -1.2405147744814831 -0.56553763084871966 -1.5357681277291673 ;
createNode transform -n "pasted__group8" -p "group9";
	setAttr ".rp" -type "double3" -1.2364177703857422 -0.71209772797679982 -1.2304806113243103 ;
	setAttr ".sp" -type "double3" -1.2364177703857422 -0.71209772797679982 -1.2304806113243103 ;
createNode transform -n "pasted__pasted__group6" -p "pasted__group8";
	setAttr ".rp" -type "double3" -1.243799793657453 -4.4734393128070273 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" -1.243799793657453 -4.4734393128070273 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__group3" -p "pasted__pasted__group6";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__pasted__group2" -p "pasted__pasted__pasted__group3";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__pasted__pasted__pCube1" -p "pasted__pasted__pasted__pasted__group2";
	setAttr ".t" -type "double3" -1.2405147493261093 -0.56553802208630544 -1.5357680828581137 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.8440742842723753 1.5056227185285098 3.7507871346286352 ;
createNode transform -n "transform7" -p "pasted__pasted__pasted__pasted__pasted__pCube1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pasted__pCubeShape1" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4";
createNode transform -n "transform10" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface5";
	setAttr ".rp" -type "double3" -1.236417829990387 -0.6311022937297821 -1.2304806113243103 ;
	setAttr ".sp" -type "double3" -1.236417829990387 -0.6311022937297821 -1.2304806113243103 ;
createNode mesh -n "polySurfaceShape5" -p "polySurface5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group10";
	setAttr ".rp" -type "double3" 0.098239745933517586 -1.6431189477776391 -1.559338018519203 ;
	setAttr ".sp" -type "double3" 0.098239745933517586 -1.6431189477776391 -1.559338018519203 ;
createNode transform -n "pasted__group3" -p "group10";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__group2" -p "|group10|pasted__group3";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__pCube1" -p "|group10|pasted__group3|pasted__pasted__group2";
	setAttr ".t" -type "double3" 0.098239783008533893 -1.643118958208452 -1.5593379938025254 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.2440311129218633 0.82935407528124205 0.1 ;
createNode mesh -n "pasted__pasted__pasted__pCubeShape1" -p "|group10|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group11";
	setAttr ".rp" -type "double3" -1.025623844519215 -1.6320144172425672 -1.5346007795526981 ;
	setAttr ".sp" -type "double3" -1.025623844519215 -1.6320144172425672 -1.5346007795526981 ;
createNode transform -n "pasted__group3" -p "group11";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__group2" -p "|group11|pasted__group3";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__pCube1" -p "|group11|pasted__group3|pasted__pasted__group2";
	setAttr ".t" -type "double3" -1.0318660803432529 0.36462816595116032 -1.5346007354452602 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.415 1.48 0.05 ;
createNode mesh -n "pasted__pasted__pasted__pCubeShape1" -p "|group11|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group12";
	setAttr ".rp" -type "double3" -1.2408045990072463 -1.6320144172425672 -1.5346007795526981 ;
	setAttr ".sp" -type "double3" -1.2408045990072463 -1.6320144172425672 -1.5346007795526981 ;
createNode transform -n "pasted__group3" -p "group12";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__group2" -p "|group12|pasted__group3";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__pCube1" -p "|group12|pasted__group3|pasted__pasted__group2";
	setAttr ".t" -type "double3" -1.4497430929353101 -1.6320144224579736 -1.5346007354452609 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.415 1.48 0.05 ;
createNode mesh -n "pasted__pasted__pasted__pCubeShape1" -p "|group12|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group11" -p "group12";
	setAttr ".rp" -type "double3" -1.025623844519215 -1.6320144172425672 -1.5346007795526981 ;
	setAttr ".sp" -type "double3" -1.025623844519215 -1.6320144172425672 -1.5346007795526981 ;
createNode transform -n "pasted__pasted__group3" -p "pasted__group11";
	setAttr ".rp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.098239745933517697 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__group2" -p "|group12|pasted__group11|pasted__pasted__group3";
	setAttr ".rp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
	setAttr ".sp" -type "double3" 0.059880834325237386 -0.71914068305392664 -1.5593380185192025 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube1" -p "|group12|pasted__group11|pasted__pasted__group3|pasted__pasted__pasted__group2";
	setAttr ".t" -type "double3" -1.0318660803432547 -1.6320144224579736 -1.5346007354452609 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.415 1.48 0.05 ;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape1" -p "|group12|pasted__group11|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBevel -n "polyBevel1";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "polyBevel2";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "polyBevel3";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "polyBevel4";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__polyBevel8";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__polyBevel7";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__polyBevel6";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__polyBevel5";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__polyCube2";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel12";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel11";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel10";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel9";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__pasted__polyCube3";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBevel -n "pasted__polyBevel4";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__polyBevel3";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__polyBevel2";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__polyBevel1";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__polyCube1";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBoolOp -n "polyBoolOp1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:743]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:743]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:919]";
createNode polyBoolOp -n "polyBoolOp2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:743]";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1095]";
createNode polyBevel -n "pasted__pasted__pasted__polyBevel16";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel15";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel14";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel13";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__pasted__polyCube4";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBevel -n "pasted__polyBevel12";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__polyBevel11";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__polyBevel10";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__polyBevel9";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__polyCube3";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel16";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel15";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel14";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel13";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube4";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode groupParts -n "pasted__groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:919]";
createNode polyBoolOp -n "pasted__polyBoolOp1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupParts -n "pasted__groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:743]";
createNode polyBevel -n "pasted__pasted__polyBevel8";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__polyBevel7";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__polyBevel6";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__polyBevel5";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__polyCube2";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:743]";
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel12";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel11";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel10";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel9";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube3";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:743]";
createNode polyBevel -n "pasted__pasted__polyBevel4";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__polyBevel3";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__polyBevel2";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__polyBevel1";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__polyCube1";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode groupId -n "pasted__groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId7";
	setAttr ".ihi" 0;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel20";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel19";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel18";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel17";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube5";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBoolOp -n "polyBoolOp3";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:743]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1239]";
createNode polyBevel -n "pasted__pasted__pasted__pasted__pasted__polyBevel20";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__pasted__polyBevel19";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__pasted__polyBevel18";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__pasted__polyBevel17";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__pasted__pasted__pasted__polyCube5";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBoolOp -n "polyBoolOp4";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:743]";
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1239]";
createNode polyBoolOp -n "polyBoolOp5";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:743]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1774]";
createNode animCurveTU -n "pasted__pCube1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.2440311129218633;
createNode animCurveTU -n "pasted__pCube1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.82935407528124205;
createNode animCurveTU -n "pasted__pCube1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.1;
createNode animCurveTU -n "pasted__pasted__pasted__pasted__pCube1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.2440311129218633;
createNode animCurveTU -n "pasted__pasted__pasted__pasted__pCube1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.82935407528124205;
createNode animCurveTU -n "pasted__pasted__pasted__pasted__pCube1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.1;
createNode animCurveTU -n "pasted__pasted__pasted__pasted__pCube1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pasted__pasted__pasted__pasted__pCube1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.098239783008533976;
createNode animCurveTL -n "pasted__pasted__pasted__pasted__pCube1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -4.4871123235903996;
createNode animCurveTL -n "pasted__pasted__pasted__pasted__pCube1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.5593379938025251;
createNode animCurveTA -n "pasted__pasted__pasted__pasted__pCube1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 90;
createNode animCurveTA -n "pasted__pasted__pasted__pasted__pCube1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pasted__pasted__pasted__pasted__pCube1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pasted__pCube1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pasted__pCube1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.5858392961734076;
createNode animCurveTL -n "pasted__pCube1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -4.4597663228852795;
createNode animCurveTL -n "pasted__pCube1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.5593379938025249;
createNode animCurveTA -n "pasted__pCube1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 90;
createNode animCurveTA -n "pasted__pCube1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pasted__pCube1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel20";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel19";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel18";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel17";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__pasted__polyCube5";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBevel -n "pasted__pasted__polyBevel12";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__polyBevel11";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__polyBevel10";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__polyBevel9";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__polyCube3";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel24";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel23";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel22";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel21";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__pasted__polyCube6";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel24";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel23";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel22";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__pasted__polyBevel21";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube6";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel28";
	setAttr ".ics" -type "componentList" 38 "e[310]" "e[320]" "e[330]" "e[340]" "e[422]" "e[432]" "e[442]" "e[452]" "e[610]" "e[670]" "e[673]" "e[676]" "e[679]" "e[682]" "e[685]" "e[688]" "e[691]" "e[694]" "e[697]" "e[700]" "e[749]" "e[751]" "e[753]" "e[875]" "e[917]" "e[920]" "e[923]" "e[926]" "e[929]" "e[932]" "e[935]" "e[938]" "e[941]" "e[943]" "e[945]" "e[996]" "e[998]" "e[1000]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel27";
	setAttr ".ics" -type "componentList" 36 "e[320]" "e[331]" "e[342]" "e[353]" "e[436]" "e[447]" "e[458]" "e[469]" "e[632]" "e[685]" "e[689]" "e[693]" "e[697]" "e[701]" "e[705]" "e[709]" "e[713]" "e[773]" "e[775]" "e[777]" "e[829]" "e[831:832]" "e[928]" "e[963]" "e[967]" "e[971]" "e[975]" "e[979]" "e[983]" "e[987]" "e[991]" "e[1051]" "e[1053]" "e[1055]" "e[1107]" "e[1109:1110]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel26";
	setAttr ".ics" -type "componentList" 13 "e[0:9]" "e[100:109]" "e[269]" "e[279:280]" "e[290:291]" "e[301:302]" "e[312:313]" "e[323:324]" "e[334:335]" "e[345:346]" "e[356:357]" "e[367:368]" "e[378]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyBevel -n "pasted__pasted__pasted__polyBevel25";
	setAttr ".ics" -type "componentList" 13 "e[150:159]" "e[250:259]" "e[465]" "e[475:476]" "e[486:487]" "e[497:498]" "e[508:509]" "e[519:520]" "e[530:531]" "e[541:542]" "e[552:553]" "e[563:564]" "e[574]";
	setAttr ".ix" -type "matrix" 4.5 0 0 0 0 6.6613381477509392e-16 3 0 0 -2.1000000000000001 4.6629367034256577e-16 0
		 -1.2364176894713976 -0.63110246335019937 -1.2304805839994619 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 1;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyCube -n "pasted__pasted__pasted__polyCube7";
	setAttr ".sw" 10;
	setAttr ".sh" 10;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 32 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 24 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyBevel4.out" "pCubeShape1.i";
connectAttr "groupParts1.og" "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.i"
		;
connectAttr "groupId1.id" "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupId2.id" "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__pasted__polyBevel12.out" "|group3|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.i"
		;
connectAttr "groupParts2.og" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.i"
		;
connectAttr "groupId3.id" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupId4.id" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts4.og" "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.i"
		;
connectAttr "groupId6.id" "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupId7.id" "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts3.og" "polySurfaceShape1.i";
connectAttr "groupId5.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts5.og" "polySurfaceShape2.i";
connectAttr "groupId8.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "pasted__pCube1_translateX.o" "|group6|pasted__pCube1.tx";
connectAttr "pasted__pCube1_translateY.o" "|group6|pasted__pCube1.ty";
connectAttr "pasted__pCube1_translateZ.o" "|group6|pasted__pCube1.tz";
connectAttr "pasted__pCube1_rotateX.o" "|group6|pasted__pCube1.rx";
connectAttr "pasted__pCube1_rotateY.o" "|group6|pasted__pCube1.ry";
connectAttr "pasted__pCube1_rotateZ.o" "|group6|pasted__pCube1.rz";
connectAttr "pasted__pCube1_scaleX.o" "|group6|pasted__pCube1.sx";
connectAttr "pasted__pCube1_scaleY.o" "|group6|pasted__pCube1.sy";
connectAttr "pasted__pCube1_scaleZ.o" "|group6|pasted__pCube1.sz";
connectAttr "pasted__pCube1_visibility.o" "|group6|pasted__pCube1.v";
connectAttr "pasted__polyBevel12.out" "|group6|pasted__pCube1|pasted__pCubeShape1.i"
		;
connectAttr "groupParts6.og" "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.i"
		;
connectAttr "groupId9.id" "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.iog.og[1].gco"
		;
connectAttr "groupId10.id" "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.ciog.cog[1].cgid"
		;
connectAttr "pasted__pasted__pasted__pasted__pCube1_translateX.o" "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1.tx"
		;
connectAttr "pasted__pasted__pasted__pasted__pCube1_translateY.o" "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1.ty"
		;
connectAttr "pasted__pasted__pasted__pasted__pCube1_translateZ.o" "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1.tz"
		;
connectAttr "pasted__pasted__pasted__pasted__pCube1_scaleX.o" "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1.sx"
		;
connectAttr "pasted__pasted__pasted__pasted__pCube1_scaleY.o" "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1.sy"
		;
connectAttr "pasted__pasted__pasted__pasted__pCube1_scaleZ.o" "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1.sz"
		;
connectAttr "pasted__pasted__pasted__pasted__pCube1_visibility.o" "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1.v"
		;
connectAttr "pasted__pasted__pasted__pasted__pCube1_rotateX.o" "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1.rx"
		;
connectAttr "pasted__pasted__pasted__pasted__pCube1_rotateY.o" "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1.ry"
		;
connectAttr "pasted__pasted__pasted__pasted__pCube1_rotateZ.o" "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1.rz"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel16.out" "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.i"
		;
connectAttr "pasted__groupParts1.og" "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.i"
		;
connectAttr "pasted__groupId1.id" "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "pasted__groupId2.id" "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts2.og" "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.i"
		;
connectAttr "pasted__groupId3.id" "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "pasted__groupId4.id" "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts4.og" "|group8|pasted__group5|pasted__pasted__pCube1|pasted__transform3|pasted__pasted__pCubeShape1.i"
		;
connectAttr "pasted__groupId6.id" "|group8|pasted__group5|pasted__pasted__pCube1|pasted__transform3|pasted__pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group8|pasted__group5|pasted__pasted__pCube1|pasted__transform3|pasted__pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "pasted__groupId7.id" "|group8|pasted__group5|pasted__pasted__pCube1|pasted__transform3|pasted__pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "pasted__groupParts3.og" "pasted__polySurfaceShape1.i";
connectAttr "pasted__groupId5.id" "pasted__polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "groupParts10.og" "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.i"
		;
connectAttr "groupId15.id" "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupId16.id" "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts7.og" "polySurfaceShape3.i";
connectAttr "groupId11.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts8.og" "pasted__pasted__pasted__pasted__pasted__pCubeShape1.i"
		;
connectAttr "groupId12.id" "pasted__pasted__pasted__pasted__pasted__pCubeShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__pasted__pasted__pasted__pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupId13.id" "pasted__pasted__pasted__pasted__pasted__pCubeShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts9.og" "polySurfaceShape4.i";
connectAttr "groupId14.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts11.og" "polySurfaceShape5.i";
connectAttr "groupId17.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "pasted__pasted__pasted__polyBevel20.out" "|group10|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.i"
		;
connectAttr "pasted__pasted__pasted__polyBevel24.out" "|group11|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.i"
		;
connectAttr "pasted__pasted__pasted__polyBevel28.out" "|group12|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.i"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel24.out" "|group12|pasted__group11|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.i"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyBevel1.ip";
connectAttr "pCubeShape1.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "pCubeShape1.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polyBevel3.ip";
connectAttr "pCubeShape1.wm" "polyBevel3.mp";
connectAttr "polyBevel3.out" "polyBevel4.ip";
connectAttr "pCubeShape1.wm" "polyBevel4.mp";
connectAttr "pasted__polyBevel7.out" "pasted__polyBevel8.ip";
connectAttr "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.wm" "pasted__polyBevel8.mp"
		;
connectAttr "pasted__polyBevel6.out" "pasted__polyBevel7.ip";
connectAttr "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.wm" "pasted__polyBevel7.mp"
		;
connectAttr "pasted__polyBevel5.out" "pasted__polyBevel6.ip";
connectAttr "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.wm" "pasted__polyBevel6.mp"
		;
connectAttr "pasted__polyCube2.out" "pasted__polyBevel5.ip";
connectAttr "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.wm" "pasted__polyBevel5.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel11.out" "pasted__pasted__pasted__polyBevel12.ip"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel12.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel10.out" "pasted__pasted__pasted__polyBevel11.ip"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel11.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel9.out" "pasted__pasted__pasted__polyBevel10.ip"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel10.mp"
		;
connectAttr "pasted__pasted__pasted__polyCube3.out" "pasted__pasted__pasted__polyBevel9.ip"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel9.mp"
		;
connectAttr "pasted__polyBevel3.out" "pasted__polyBevel4.ip";
connectAttr "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.wm" "pasted__polyBevel4.mp"
		;
connectAttr "pasted__polyBevel2.out" "pasted__polyBevel3.ip";
connectAttr "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.wm" "pasted__polyBevel3.mp"
		;
connectAttr "pasted__polyBevel1.out" "pasted__polyBevel2.ip";
connectAttr "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.wm" "pasted__polyBevel2.mp"
		;
connectAttr "pasted__polyCube1.out" "pasted__polyBevel1.ip";
connectAttr "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.wm" "pasted__polyBevel1.mp"
		;
connectAttr "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.o" "polyBoolOp1.ip[0]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.o" "polyBoolOp1.ip[1]"
		;
connectAttr "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.wm" "polyBoolOp1.im[0]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.wm" "polyBoolOp1.im[1]"
		;
connectAttr "pasted__polyBevel8.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "pasted__pasted__pasted__polyBevel12.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyBoolOp1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polySurfaceShape1.o" "polyBoolOp2.ip[0]";
connectAttr "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.o" "polyBoolOp2.ip[1]"
		;
connectAttr "polySurfaceShape1.wm" "polyBoolOp2.im[0]";
connectAttr "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.wm" "polyBoolOp2.im[1]"
		;
connectAttr "pasted__polyBevel4.out" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "polyBoolOp2.out" "groupParts5.ig";
connectAttr "groupId8.id" "groupParts5.gi";
connectAttr "pasted__pasted__pasted__polyBevel15.out" "pasted__pasted__pasted__polyBevel16.ip"
		;
connectAttr "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel16.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel14.out" "pasted__pasted__pasted__polyBevel15.ip"
		;
connectAttr "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel15.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel13.out" "pasted__pasted__pasted__polyBevel14.ip"
		;
connectAttr "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel14.mp"
		;
connectAttr "pasted__pasted__pasted__polyCube4.out" "pasted__pasted__pasted__polyBevel13.ip"
		;
connectAttr "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel13.mp"
		;
connectAttr "pasted__polyBevel11.out" "pasted__polyBevel12.ip";
connectAttr "|group6|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyBevel12.mp"
		;
connectAttr "pasted__polyBevel10.out" "pasted__polyBevel11.ip";
connectAttr "|group6|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyBevel11.mp"
		;
connectAttr "pasted__polyBevel9.out" "pasted__polyBevel10.ip";
connectAttr "|group6|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyBevel10.mp"
		;
connectAttr "pasted__polyCube3.out" "pasted__polyBevel9.ip";
connectAttr "|group6|pasted__pCube1|pasted__pCubeShape1.wm" "pasted__polyBevel9.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel15.out" "pasted__pasted__pasted__pasted__polyBevel16.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel16.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel14.out" "pasted__pasted__pasted__pasted__polyBevel15.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel15.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel13.out" "pasted__pasted__pasted__pasted__polyBevel14.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel14.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyCube4.out" "pasted__pasted__pasted__pasted__polyBevel13.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel13.mp"
		;
connectAttr "pasted__polyBoolOp1.out" "pasted__groupParts3.ig";
connectAttr "pasted__groupId5.id" "pasted__groupParts3.gi";
connectAttr "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.o" "pasted__polyBoolOp1.ip[0]"
		;
connectAttr "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.o" "pasted__polyBoolOp1.ip[1]"
		;
connectAttr "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.wm" "pasted__polyBoolOp1.im[0]"
		;
connectAttr "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__polyBoolOp1.im[1]"
		;
connectAttr "pasted__pasted__polyBevel8.out" "pasted__groupParts1.ig";
connectAttr "pasted__groupId1.id" "pasted__groupParts1.gi";
connectAttr "pasted__pasted__polyBevel7.out" "pasted__pasted__polyBevel8.ip";
connectAttr "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel8.mp"
		;
connectAttr "pasted__pasted__polyBevel6.out" "pasted__pasted__polyBevel7.ip";
connectAttr "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel7.mp"
		;
connectAttr "pasted__pasted__polyBevel5.out" "pasted__pasted__polyBevel6.ip";
connectAttr "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel6.mp"
		;
connectAttr "pasted__pasted__polyCube2.out" "pasted__pasted__polyBevel5.ip";
connectAttr "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel5.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel12.out" "pasted__groupParts2.ig"
		;
connectAttr "pasted__groupId3.id" "pasted__groupParts2.gi";
connectAttr "pasted__pasted__pasted__pasted__polyBevel11.out" "pasted__pasted__pasted__pasted__polyBevel12.ip"
		;
connectAttr "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel12.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel10.out" "pasted__pasted__pasted__pasted__polyBevel11.ip"
		;
connectAttr "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel11.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel9.out" "pasted__pasted__pasted__pasted__polyBevel10.ip"
		;
connectAttr "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel10.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyCube3.out" "pasted__pasted__pasted__pasted__polyBevel9.ip"
		;
connectAttr "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel9.mp"
		;
connectAttr "pasted__pasted__polyBevel4.out" "pasted__groupParts4.ig";
connectAttr "pasted__groupId6.id" "pasted__groupParts4.gi";
connectAttr "pasted__pasted__polyBevel3.out" "pasted__pasted__polyBevel4.ip";
connectAttr "|group8|pasted__group5|pasted__pasted__pCube1|pasted__transform3|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel4.mp"
		;
connectAttr "pasted__pasted__polyBevel2.out" "pasted__pasted__polyBevel3.ip";
connectAttr "|group8|pasted__group5|pasted__pasted__pCube1|pasted__transform3|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel3.mp"
		;
connectAttr "pasted__pasted__polyBevel1.out" "pasted__pasted__polyBevel2.ip";
connectAttr "|group8|pasted__group5|pasted__pasted__pCube1|pasted__transform3|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel2.mp"
		;
connectAttr "pasted__pasted__polyCube1.out" "pasted__pasted__polyBevel1.ip";
connectAttr "|group8|pasted__group5|pasted__pasted__pCube1|pasted__transform3|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel1.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel19.out" "pasted__pasted__pasted__pasted__polyBevel20.ip"
		;
connectAttr "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel20.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel18.out" "pasted__pasted__pasted__pasted__polyBevel19.ip"
		;
connectAttr "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel19.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel17.out" "pasted__pasted__pasted__pasted__polyBevel18.ip"
		;
connectAttr "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel18.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyCube5.out" "pasted__pasted__pasted__pasted__polyBevel17.ip"
		;
connectAttr "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel17.mp"
		;
connectAttr "polySurfaceShape2.o" "polyBoolOp3.ip[0]";
connectAttr "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.o" "polyBoolOp3.ip[1]"
		;
connectAttr "polySurfaceShape2.wm" "polyBoolOp3.im[0]";
connectAttr "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.wm" "polyBoolOp3.im[1]"
		;
connectAttr "pasted__pasted__pasted__polyBevel16.out" "groupParts6.ig";
connectAttr "groupId9.id" "groupParts6.gi";
connectAttr "polyBoolOp3.out" "groupParts7.ig";
connectAttr "groupId11.id" "groupParts7.gi";
connectAttr "pasted__pasted__pasted__pasted__pasted__polyBevel19.out" "pasted__pasted__pasted__pasted__pasted__polyBevel20.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__pasted__polyBevel20.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__polyBevel18.out" "pasted__pasted__pasted__pasted__pasted__polyBevel19.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__pasted__polyBevel19.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__polyBevel17.out" "pasted__pasted__pasted__pasted__pasted__polyBevel18.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__pasted__polyBevel18.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__polyCube5.out" "pasted__pasted__pasted__pasted__pasted__polyBevel17.ip"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__pasted__polyBevel17.mp"
		;
connectAttr "polySurfaceShape3.o" "polyBoolOp4.ip[0]";
connectAttr "pasted__pasted__pasted__pasted__pasted__pCubeShape1.o" "polyBoolOp4.ip[1]"
		;
connectAttr "polySurfaceShape3.wm" "polyBoolOp4.im[0]";
connectAttr "pasted__pasted__pasted__pasted__pasted__pCubeShape1.wm" "polyBoolOp4.im[1]"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__polyBevel20.out" "groupParts8.ig"
		;
connectAttr "groupId12.id" "groupParts8.gi";
connectAttr "polyBoolOp4.out" "groupParts9.ig";
connectAttr "groupId14.id" "groupParts9.gi";
connectAttr "polySurfaceShape4.o" "polyBoolOp5.ip[0]";
connectAttr "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.o" "polyBoolOp5.ip[1]"
		;
connectAttr "polySurfaceShape4.wm" "polyBoolOp5.im[0]";
connectAttr "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.wm" "polyBoolOp5.im[1]"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel20.out" "groupParts10.ig";
connectAttr "groupId15.id" "groupParts10.gi";
connectAttr "polyBoolOp5.out" "groupParts11.ig";
connectAttr "groupId17.id" "groupParts11.gi";
connectAttr "pasted__pasted__pasted__polyBevel19.out" "pasted__pasted__pasted__polyBevel20.ip"
		;
connectAttr "|group10|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel20.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel18.out" "pasted__pasted__pasted__polyBevel19.ip"
		;
connectAttr "|group10|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel19.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel17.out" "pasted__pasted__pasted__polyBevel18.ip"
		;
connectAttr "|group10|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel18.mp"
		;
connectAttr "pasted__pasted__pasted__polyCube5.out" "pasted__pasted__pasted__polyBevel17.ip"
		;
connectAttr "|group10|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel17.mp"
		;
connectAttr "pasted__pasted__polyBevel11.out" "pasted__pasted__polyBevel12.ip";
connectAttr "|group3|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel12.mp"
		;
connectAttr "pasted__pasted__polyBevel10.out" "pasted__pasted__polyBevel11.ip";
connectAttr "|group3|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel11.mp"
		;
connectAttr "pasted__pasted__polyBevel9.out" "pasted__pasted__polyBevel10.ip";
connectAttr "|group3|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel10.mp"
		;
connectAttr "pasted__pasted__polyCube3.out" "pasted__pasted__polyBevel9.ip";
connectAttr "|group3|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.wm" "pasted__pasted__polyBevel9.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel23.out" "pasted__pasted__pasted__polyBevel24.ip"
		;
connectAttr "|group11|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel24.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel22.out" "pasted__pasted__pasted__polyBevel23.ip"
		;
connectAttr "|group11|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel23.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel21.out" "pasted__pasted__pasted__polyBevel22.ip"
		;
connectAttr "|group11|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel22.mp"
		;
connectAttr "pasted__pasted__pasted__polyCube6.out" "pasted__pasted__pasted__polyBevel21.ip"
		;
connectAttr "|group11|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel21.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel23.out" "pasted__pasted__pasted__pasted__polyBevel24.ip"
		;
connectAttr "|group12|pasted__group11|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel24.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel22.out" "pasted__pasted__pasted__pasted__polyBevel23.ip"
		;
connectAttr "|group12|pasted__group11|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel23.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyBevel21.out" "pasted__pasted__pasted__pasted__polyBevel22.ip"
		;
connectAttr "|group12|pasted__group11|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel22.mp"
		;
connectAttr "pasted__pasted__pasted__pasted__polyCube6.out" "pasted__pasted__pasted__pasted__polyBevel21.ip"
		;
connectAttr "|group12|pasted__group11|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__pasted__polyBevel21.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel27.out" "pasted__pasted__pasted__polyBevel28.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel28.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel26.out" "pasted__pasted__pasted__polyBevel27.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel27.mp"
		;
connectAttr "pasted__pasted__pasted__polyBevel25.out" "pasted__pasted__pasted__polyBevel26.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel26.mp"
		;
connectAttr "pasted__pasted__pasted__polyCube7.out" "pasted__pasted__pasted__polyBevel25.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.wm" "pasted__pasted__pasted__polyBevel25.mp"
		;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group3|pasted__group2|pasted__pasted__pCube1|pasted__pasted__pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pasted__pCube1|transform2|pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform1|pasted__pasted__pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__pCube1|transform3|pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group6|pasted__pCube1|pasted__pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__group1|pasted__pasted__pCube1|pasted__transform2|pasted__pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__transform1|pasted__pasted__pasted__pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|group8|pasted__group5|pasted__pasted__pCube1|pasted__transform3|pasted__pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__group5|pasted__pasted__pCube1|pasted__transform3|pasted__pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|transform5|pasted__pasted__pasted__pCubeShape1.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pasted__pasted__pasted__pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group8|pasted__group6|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|transform9|pasted__pasted__pasted__pasted__pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group10|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group11|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group12|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group12|pasted__group11|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube1|pasted__pasted__pasted__pasted__pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of train.ma
