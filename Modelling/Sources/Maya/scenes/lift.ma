//Maya ASCII 2025 scene
//Name: lift.ma
//Last modified: Tue, Jul 30, 2024 11:35:13 AM
//Codeset: 1252
requires maya "2025";
requires "mtoa" "5.4.1.2";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.28.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202404240506-c155a58772";
fileInfo "osv" "Windows 11 IoT Enterprise LTSC 2024 v2009 (Build: 26100)";
fileInfo "UUID" "F57AD7C6-4B9D-B333-6BE6-DA851EBDB833";
createNode transform -s -n "persp";
	rename -uid "B69D4E06-4617-3B00-FF16-648D543563E8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -640.35717814766758 -93.125574894932527 -612.46929039936458 ;
	setAttr ".r" -type "double3" 363.261647269371 -1938.6000000000722 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8639E6BB-4E60-E032-51D6-B8B55851DCD6";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 927.6576508029766;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 27.000001907348629 -12.5 134.75005340576172 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "06C5194A-4B4E-F6A0-4F90-A8BDCE678FE9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BF470286-4D27-9FB6-E6F9-389FED32B790";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "DC7622C6-4747-83FE-A46A-3A9056C10B8F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7922FA1F-4EF0-B260-9A03-A390265C8553";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "77BDDF16-44E9-AB5F-5DA5-C4979439C108";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3CCD1D08-40CE-3120-BA51-CAA53D8DB471";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "9858BF25-4FD9-D6BE-C619-F3A17C29F42B";
createNode transform -n "polySurface2" -p "pCube1";
	rename -uid "5558C0DE-49FE-811C-CA26-11B0B896E2B6";
	setAttr ".t" -type "double3" 0 0 84.218392931780627 ;
createNode transform -n "polySurface3" -p "polySurface2";
	rename -uid "887B0093-4096-1542-43A9-C0B0F746F741";
	setAttr ".t" -type "double3" 0 -19.967881510357451 -45.218370043597048 ;
	setAttr ".s" -type "double3" 1 1 0.37704393325998486 ;
	setAttr ".rp" -type "double3" 54.000003814697266 -125 107.24997711181641 ;
	setAttr ".sp" -type "double3" 54.000003814697266 -125 107.24997711181641 ;
createNode mesh -n "polySurfaceShape3" -p "polySurface3";
	rename -uid "8CB8F7E7-4F9C-BEAB-583B-0D88DA94AB00";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:9]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.53374999761581421 0.11249999701976776 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.5675 0 0.5675 0.125
		 0.5 0.125 0.5 0 0.5675 0.22499999 0.5 0.22499999 0.5675 0 0.5 0 0.5 0.125 0.5675
		 0.125 0.5 0.22499999 0.5675 0.22499999 0.5675 0 0.5 0 0.5 0.125 0.5675 0.125 0.5
		 0.22499999 0.5675 0.22499999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt[0:9]" -type "float3"  0 0 14.999966 0 0 15.000011 
		0 0 15.000011 0 0 15.000011 0 0 14.999966 0 0 15.000011 0 0 4.5776367e-05 0 0 4.5776367e-05 
		0 0 4.5776367e-05 0 0 4.5776367e-05;
	setAttr -s 12 ".vt[0:11]"  54.000003814697 -125 99.99998474 54.000003814697 2.7942927e-14 99.99998474
		 54.000003814697 100 99.99998474 1.5352913e-15 -1.4210855e-14 99.99998474 7.1054274e-15 -125 99.99998474
		 -4.0348448e-15 100 99.99998474 7.1054274e-15 -125 99.49998474 54.000003814697 -125 99.49998474
		 1.5352913e-15 -1.4210855e-14 99.49998474 54.000003814697 2.7942927e-14 99.49998474
		 -4.0348448e-15 100 99.49998474 54.000003814697 100 99.49998474;
	setAttr -s 20 ".ed[0:19]"  1 3 1 0 1 0 4 0 0 1 2 0 5 2 0 4 3 0 3 5 0
		 4 6 0 0 7 0 6 7 0 3 8 1 6 8 0 1 9 1 9 8 1 7 9 0 5 10 0 8 10 0 2 11 0 10 11 0 9 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 -10 11 -14 -15
		mu 0 4 12 13 14 15
		f 4 13 16 18 -20
		mu 0 4 15 14 16 17
		f 4 1 0 -6 2
		mu 0 4 6 9 8 7
		f 4 3 -5 -7 -1
		mu 0 4 9 11 10 8
		f 4 -3 7 9 -9
		mu 0 4 0 3 13 12
		f 4 5 10 -12 -8
		mu 0 4 3 2 14 13
		f 4 -2 8 14 -13
		mu 0 4 1 0 12 15
		f 4 6 15 -17 -11
		mu 0 4 2 5 16 14
		f 4 4 17 -19 -16
		mu 0 4 5 4 17 16
		f 4 -4 12 19 -18
		mu 0 4 4 1 15 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface4" -p "polySurface2";
	rename -uid "72E72125-495A-9CD3-B827-3A89E66A6BBA";
	setAttr ".t" -type "double3" 0 -19.967881510357451 -45.21837004359702 ;
	setAttr ".s" -type "double3" 1 1 0.37704393325998486 ;
	setAttr ".rp" -type "double3" -54.000003814697266 -125 107.24997711181641 ;
	setAttr ".sp" -type "double3" -54.000003814697266 -125 107.24997711181641 ;
createNode mesh -n "polySurfaceShape4" -p "polySurface4";
	rename -uid "DF8E443C-45C7-E04E-1DA3-C0B657B6218E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:15]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.43250000476837158 0.0625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.5 0.125 0.4325
		 0.125 0.4325 0 0.5 0 0.5 0.22499999 0.4325 0.22499999 0.5 0.125 0.5 0 0.4325 0 0.4325
		 0.125 0.5 0.22499999 0.4325 0.22499999 0.5 0.125 0.5 0 0.4325 0 0.4325 0.125 0.5
		 0.22499999 0.4325 0.22499999 0.5 0 0.5 0.125 0.5 0.22499999 0.4325 0.22499999 0.4325
		 0.125 0.4325 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0 -7.1054274e-15 114.99994659 0 -125 114.99994659
		 0 100 114.99994659 -54.000003814697 100 114.99994659 -54.000003814697 1.3971464e-14 114.99994659
		 -54.000003814697 -125 114.99994659 4.5019219e-16 -125 99.49998474 4.5019219e-16 -7.1054274e-15 99.49998474
		 -54.000003814697 -125 99.49998474 -54.000003814697 1.3971464e-14 99.49998474 0 100 99.49998474
		 -54.000003814697 100 99.49998474 2.2509609e-16 -125 107.24996948 2.2509609e-16 -7.1054274e-15 107.24996948
		 0 100 107.24996948 -54.000003814697 100 107.24996948 -54.000003814697 1.3971464e-14 107.24996948
		 -54.000003814697 -125 107.24996948;
	setAttr -s 32 ".ed[0:31]"  1 0 0 0 2 0 0 4 1 3 2 0 4 3 0 5 4 0 5 1 0
		 1 12 0 0 13 1 6 7 0 5 17 0 8 6 0 4 16 1 8 9 0 7 9 1 2 14 0 7 10 0 3 15 0 9 11 0 11 10 0
		 12 6 0 13 7 1 14 10 0 15 11 0 16 9 1 17 8 0 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 -10 -12 13 -15
		mu 0 4 12 13 14 15
		f 4 -17 14 18 19
		mu 0 4 16 12 15 17
		f 4 2 -6 6 0
		mu 0 4 6 9 8 7
		f 4 -4 -5 -3 1
		mu 0 4 10 11 9 6
		f 4 -1 7 26 -9
		mu 0 4 0 3 18 19
		f 4 -7 10 31 -8
		mu 0 4 3 2 23 18
		f 4 5 12 30 -11
		mu 0 4 2 1 22 23
		f 4 -2 8 27 -16
		mu 0 4 4 0 19 20
		f 4 4 17 29 -13
		mu 0 4 1 5 21 22
		f 4 3 15 28 -18
		mu 0 4 5 4 20 21
		f 4 -27 20 9 -22
		mu 0 4 19 18 13 12
		f 4 -28 21 16 -23
		mu 0 4 20 19 12 16
		f 4 -29 22 -20 -24
		mu 0 4 21 20 16 17
		f 4 -30 23 -19 -25
		mu 0 4 22 21 17 15
		f 4 -31 24 -14 -26
		mu 0 4 23 22 15 14
		f 4 -32 25 11 -21
		mu 0 4 18 23 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface1";
	rename -uid "B9CD1DDE-464F-F121-2AC0-A6A7DD3A85C2";
createNode mesh -n "polySurface1Shape" -p "polySurface1";
	rename -uid "87CA4289-4DD8-40DE-A6B1-F2901940C322";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:177]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 15 "f[2]" "f[7]" "f[11]" "f[15]" "f[18:21]" "f[60:63]" "f[68:70]" "f[80:82]" "f[87]" "f[104]" "f[112]" "f[122]" "f[127:130]" "f[141:144]" "f[154:157]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 16 "f[3]" "f[8]" "f[12]" "f[16]" "f[29:32]" "f[47:50]" "f[71:73]" "f[83:85]" "f[88]" "f[92]" "f[96]" "f[105:107]" "f[113:115]" "f[119:121]" "f[164:165]" "f[175:176]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 10 "f[0]" "f[9]" "f[13]" "f[23:26]" "f[54:56]" "f[64]" "f[74:76]" "f[162:163]" "f[166:174]" "f[177]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 10 "f[5]" "f[17]" "f[27:28]" "f[39:40]" "f[51:53]" "f[90:91]" "f[95]" "f[124:126]" "f[138:140]" "f[158:160]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 11 "f[4]" "f[22]" "f[33:34]" "f[45:46]" "f[57:59]" "f[89]" "f[93]" "f[97]" "f[131:133]" "f[145:147]" "f[151:153]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 15 "f[1]" "f[6]" "f[10]" "f[14]" "f[35:38]" "f[41:44]" "f[65:67]" "f[77:79]" "f[86]" "f[94]" "f[98]" "f[101:103]" "f[109:111]" "f[116:117]" "f[123]";
	setAttr ".pv" -type "double2" 0.37187498807907104 0.12800000607967377 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 228 ".uvst[0].uvsp[0:227]" -type "float2" 0.375 0 0.38749999
		 0 0.38749999 0.125 0.375 0.125 0.375 0.25 0.38749999 0.25 0.38749999 0.375 0.375
		 0.375 0.375 0.625 0.38749999 0.625 0.38749999 0.74999994 0.375 0.75 0.375 0.875 0.38749999
		 0.875 0.38749999 1 0.375 1 0.625 0 0.75 0 0.75 0.125 0.625 0.125 0.25 0.125 0.25
		 0 0.5675 0.25 0.5675 0.375 0.5 0.375 0.5 0.25 0.5 0.75 0.5 0.625 0.5675 0.625 0.5675
		 0.75 0.5 1 0.5 0.875 0.5675 0.875 0.5675 1 0.4325 0.5 0.4325 0.125 0.4325 0.25 0.4325
		 0.375 0.4325 0.625 0.4325 0.75 0.4325 0.875 0.61250001 0.125 0.61250001 0 0.625 0.375
		 0.61250001 0.375 0.61250001 0.25 0.625 0.25 0.61250001 0.75 0.61250001 0.625 0.625
		 0.625 0.625 0.75 0.61250001 1 0.61250001 0.875 0.625 0.875 0.625 1 0.25 0.25 0.25
		 0.22500001 0.375 0.22499999 0.375 0.5 0.38749999 0.5 0.38749999 0.52499998 0.375
		 0.52499998 0.4325 0.5 0.4325 0.52499998 0.5675 0.5 0.5675 0.52499998 0.5 0.52499998
		 0.5 0.5 0.625 0.52499998 0.61250001 0.52499998 0.61250001 0.5 0.625 0.5 0.625 0.22499999
		 0.75 0.22499999 0.75 0.25 0.61250001 0.22499999 0.5 0.22499999 0.5675 0.22499999
		 0.38749999 0.22499999 0.4325 0.22499999 0.125 0.22500001 0.1375 0.22499999 0.1375
		 0.25 0.125 0.25 0.125 0 0.1375 0 0.1375 0.125 0.125 0.125 0.38749996 0.76249993 0.37499997
		 0.76249993 0.43249997 0.76249993 0.5675 0.76249993 0.5 0.76249993 0.625 0.76249993
		 0.61249995 0.76249993 0.86249995 0.125 0.86249995 0 0.875 0 0.875 0.125 0.86249995
		 0.25 0.86250001 0.22500001 0.875 0.22500001 0.875 0.25 0.61250001 0.48750001 0.625
		 0.48750001 0.5 0.48750001 0.5675 0.48750001 0.38749999 0.48750001 0.4325 0.48750001
		 0.375 0.48750001 0.5675 0.125 0.5675 0 0.375 0.25 0.625 0.25 0.625 0.25624999 0.375
		 0.25624999 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.99374998 0.625 0.99374998
		 0.625 1 0.375 1 0.625 0 0.63125002 0 0.63125002 0.25 0.36874998 0.25 0.36874998 0
		 0.375 0 0.125 0 0.25 0 0.25 0.25 0.125 0.25 0.625 0.875 0.375 0.875 0.75 0.25 0.75
		 0 0.875 0 0.875 0.25 0.375 0.375 0.625 0.375 0.5 0.5 0.5 1 0.5 0.25 0.5 0.25624999
		 0.5 0.375 0.5 0.5 0.5 0.75 0.5 0.875 0.5 0.99374998 0.44999999 0.69999999 0.44999999
		 1 0.44999999 0.25 0.45000002 0.25624999 0.45000002 0.375 0.44999999 0.5 0.44999999
		 0.75 0.44999999 0.875 0.44999999 0.99374998 0.55000001 0.375 0.55000001 0.25624999
		 0.55000001 0.25 0.55000001 0.30000001 0.55000001 1 0.55000001 0.99374998 0.55000001
		 0.875 0.55000001 0.75 0.55000001 0.5 0.375 0.2 0.375 0.39999998 0.36874998 0.2 0.25
		 0.2 0.125 0.2 0.375 0.55000001 0.44999999 0.55000001 0.5 0.55000001 0.55000001 0.55000001
		 0.625 0.55000001 0.875 0.2 0.75 0.2 0.63125002 0.2 0.625 0.2 0.55000001 0.25999999
		 0.5 0.30000001 0.44999999 0.33999997 0.37499997 0.020000001 0.37499997 0.94 0.36874998
		 0.020000005 0.25 0.020000005 0.125 0.020000005 0.375 0.72999996 0.44999999 0.72999996
		 0.5 0.72999996 0.55000001 0.72999996 0.625 0.72999996 0.875 0.020000005 0.74999994
		 0.020000001 0.63125002 0.020000001 0.625 0.020000001 0.55000001 0.296 0.5 0.47999999
		 0.44999996 0.66399997 0.55000001 0.2744 0.625 0.12800001 0.63125002 0.12800001 0.75
		 0.12800001 0.625 0.62199998 0.875 0.12800001 0.55000001 0.62199998 0.5 0.62199998
		 0.44999999 0.62199998 0.125 0.12800001 0.375 0.62199998 0.25 0.12800001 0.36874998
		 0.12800001 0.375 0.12800001 0.375 0.616 0.44999999 0.46959996 0.55875003 0.1997 0.55875003
		 0.24249999 0.5 0.26249999 0.44125 0.28249997 0.44125 0.29729998 0.44124997 0.58200002
		 0.5 0.74000001 0.55875003 0.148 0.55875003 0.648;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 180 ".vt";
	setAttr ".vt[0:165]"  -100 -144.96788025 142.50001526 100 -144.96788025 142.50001526
		 -100 105.032119751 142.50001526 100 105.032119751 142.50001526 -100 105.032119751 -57.49998856
		 100 105.032119751 -57.49998856 -100 -144.96788025 -57.49998856 100 -144.96788025 -57.49998856
		 0 -144.96788025 142.50001526 0 105.032119751 142.50001526 0 105.032119751 -57.49998856
		 0 -144.96788025 -57.49998856 -90 -144.96788025 142.50001526 -90 105.032119751 142.50001526
		 -90 105.032119751 -57.49998856 -90 -144.96788025 -57.49998856 90 -144.96788025 142.50001526
		 90 105.032119751 142.50001526 90 105.032119751 -57.49998856 90 -144.96788025 -57.49998856
		 -100 -19.96788216 142.50001526 -100 -19.96788216 -57.49998856 -90 -19.96788216 -57.49998856
		 0 -19.96788216 -57.49998856 90 -19.96788216 -57.49998856 100 -19.96788216 -57.49998856
		 100 -19.96788216 142.50001526 90 -19.96788216 142.50001526 -90 -19.96788216 142.50001526
		 -100 105.032119751 42.50001144 -100 -19.96788216 42.50001144 -100 -144.96788025 42.50001144
		 -90 -144.96788025 42.50001144 0 -144.96788025 42.50001144 90 -144.96788025 42.50001144
		 100 -144.96788025 42.50001144 100 -19.96788216 42.50001144 100 105.032119751 42.50001144
		 90 105.032119751 42.50001144 0 105.032119751 42.50001144 -90 105.032119751 42.50001144
		 -100 -144.96788025 -47.49998856 -100 -19.96788216 -47.49998856 -100 105.032119751 -47.49998856
		 -90 105.032119751 -47.49998856 0 105.032119751 -47.49998856 90 105.032119751 -47.49998856
		 100 105.032119751 -47.49998856 100 -19.96788216 -47.49998856 100 -144.96788025 -47.49998856
		 90 -144.96788025 -47.49998856 0 -144.96788025 -47.49998856 -90 -144.96788025 -47.49998856
		 -100 80.032119751 -57.49998856 -100 80.032119751 -47.49998856 -100 80.032119751 42.50001144
		 -100 80.032119751 142.50001526 -90 80.032119751 142.50001526 0 80.032119751 142.50001526
		 90 80.032119751 142.50001526 100 80.032119751 142.50001526 100 80.032119751 42.50001144
		 100 80.032119751 -47.49998856 100 80.032119751 -57.49998856 90 80.032119751 -57.49998856
		 0 80.032119751 -57.49998856 -90 80.032119751 -57.49998856 -54.000003814697 -144.96788025 142.50001526
		 -54.000003814697 -19.96788216 142.50001526 -54.000003814697 80.032119751 142.50001526
		 -54.000003814697 105.032119751 142.50001526 -54.000003814697 105.032119751 42.50001144
		 -54.000003814697 105.032119751 -47.49998856 -54.000003814697 105.032119751 -57.49998856
		 -54.000003814697 80.032119751 -57.49998856 -54.000003814697 -19.96788216 -57.49998856
		 -54.000003814697 -144.96788025 -57.49998856 -54.000003814697 -144.96788025 -47.49998856
		 -54.000003814697 -144.96788025 42.50001144 54.000003814697 -144.96788025 142.50001526
		 54.000003814697 -19.96788216 142.50001526 54.000003814697 80.032119751 142.50001526
		 54.000003814697 105.032119751 142.50001526 54.000003814697 105.032119751 42.50001144
		 54.000003814697 105.032119751 -47.49998856 54.000003814697 105.032119751 -57.49998856
		 54.000003814697 80.032119751 -57.49998856 54.000003814697 -19.96788216 -57.49998856
		 54.000003814697 -144.96788025 -57.49998856 54.000003814697 -144.96788025 -47.49998856
		 54.000003814697 -144.96788025 42.50001144 -150 -150 150 150 -150 150 -150 150 150
		 150 150 150 -150 150 -150 150 150 -150 -150 -150 -150 150 -150 -150 -150 150 0 -150 -150 0
		 150 -150 0 150 150 0 -150 150 142.5 -150 -150 142.5 150 -150 142.5 150 150 142.5
		 0 -150 150 0 150 150 0 150 142.5 0 150 0 0 150 -150 0 -150 -150 0 -150 0 0 -150 142.5
		 -54.000003814697 -150 150 -54.000003814697 150 150 -54.000007629395 150 142.5 -54.000007629395 150 0
		 -54.000003814697 150 -150 -54.000003814697 -150 -150 -54.000003814697 -150 0 -54.000003814697 -150 142.5
		 54 150 0 54 150 142.5 54.000003814697 150 150 54.000003814697 -150 150 54.000003814697 -150 142.5
		 54.000003814697 -150 0 54.000003814697 -150 -150 54.000003814697 150 -150 -150 80.032119751 150
		 -150 80.032119751 142.5 -150 80.032119751 0 -150 80.032119751 -150 -54.000003814697 80.032119751 -150
		 0 80.032119751 -150 54.000003814697 80.032119751 -150 150 80.032119751 -150 150 80.032119751 0
		 150 80.032119751 142.5 150 80.032119751 150 54.000003814697 80.032119751 150 0 80.032119751 150
		 -54 80.032119751 150 -150 -144.96788025 150 -150 -144.96788025 142.5 -150 -144.96788025 0
		 -150 -144.96788025 -150 -54.000003814697 -144.96788025 -150 0 -144.96788025 -150
		 54.000003814697 -144.96788025 -150 150 -144.96788025 -150 150 -144.96788025 0 150 -144.96788025 142.5
		 150 -144.96788025 150 54.000003814697 -144.96788025 150 0 -144.96788025 150 -54.000003814697 -144.96788025 150
		 54.000007629395 -19.96788406 150 150 -19.96788025 150 150 -19.96788025 142.5 150 -19.96788025 0
		 150 -19.96788406 -150 54.000007629395 -19.96788025 -150 0 -19.96788406 -150;
	setAttr ".vt[166:179]" -54.000007629395 -19.96788406 -150 -150 -19.96788406 -150
		 -150 -19.96788406 0 -150 -19.96788406 142.5 -150 -19.96788025 150 -54 -19.96788025 150
		 54.000007629395 -19.96788406 146.25 54.000003814697 80.032119751 146.25 0 80.032119751 146.25
		 -54 80.032119751 146.25 -54 -19.96788025 146.25 -54.000003814697 -144.96788025 146.25
		 0 -144.96788025 146.25 54.000003814697 -144.96788025 146.25;
	setAttr -s 356 ".ed";
	setAttr ".ed[0:165]"  0 12 0 2 13 0 4 14 0 6 15 0 0 20 0 1 26 0 2 29 0 3 37 0
		 4 53 0 5 63 0 6 41 0 7 49 0 8 79 0 9 82 0 10 85 0 11 88 0 9 39 1 10 65 1 11 51 1
		 12 67 0 13 70 0 14 73 0 15 76 0 12 28 1 13 40 1 14 66 1 15 52 1 16 1 0 17 3 0 18 5 0
		 19 7 0 16 27 1 17 38 1 18 64 1 19 50 1 20 56 0 21 6 0 22 15 1 23 11 1 24 19 1 25 7 0
		 26 60 0 27 59 1 28 57 1 20 30 1 21 22 1 22 75 1 23 87 1 24 25 1 25 48 1 26 27 1 27 80 1
		 28 20 1 29 43 0 30 42 1 31 0 0 32 12 1 33 8 1 34 16 1 35 1 0 36 26 1 37 47 0 38 46 1
		 39 45 1 40 44 1 29 55 1 30 31 1 31 32 1 32 78 1 33 90 1 34 35 1 35 36 1 36 61 1 37 38 1
		 38 83 1 39 71 1 40 29 1 41 31 0 42 21 1 43 4 0 44 14 1 45 10 1 46 18 1 47 5 0 48 36 1
		 49 35 0 50 34 1 51 33 1 52 32 1 41 42 1 42 54 1 43 44 1 44 72 1 45 84 1 46 47 1 47 62 1
		 48 49 1 49 50 1 50 89 1 51 77 1 52 41 1 53 21 0 54 43 1 55 30 1 56 2 0 57 13 1 58 9 1
		 59 17 1 60 3 0 61 37 1 62 48 1 63 25 0 64 24 1 65 23 1 66 22 1 53 54 1 54 55 1 55 56 1
		 56 57 1 57 69 1 58 81 0 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1 64 86 1 65 74 1 66 53 1
		 67 8 0 68 28 1 69 58 0 70 9 0 71 40 1 72 45 1 73 10 0 74 66 1 75 23 1 76 11 0 77 52 1
		 78 33 1 67 68 0 68 69 0 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1
		 77 78 1 78 67 1 79 16 0 81 59 1 82 17 0 83 39 1 84 46 1 85 18 0 86 65 1 87 24 1 88 19 0
		 89 51 1 90 34 1 79 80 0 80 81 0;
	setAttr ".ed[166:331]" 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1
		 88 89 1 89 90 1 90 79 1 91 115 0 93 116 0 95 119 0 97 120 0 91 145 0 92 155 0 93 103 0
		 94 106 0 95 134 0 96 138 0 97 100 0 98 101 0 99 95 0 100 104 0 102 96 0 99 133 1
		 100 121 1 101 153 1 102 123 1 101 105 0 103 99 0 104 91 0 105 92 0 106 102 0 103 132 1
		 104 122 1 105 154 1 106 124 1 107 126 0 108 125 0 109 117 1 110 118 1 111 130 0 112 129 0
		 113 128 1 114 127 1 107 157 1 108 109 1 109 110 1 110 111 1 111 136 1 112 113 1 113 114 1
		 114 107 1 115 107 0 116 108 0 117 103 1 118 99 1 119 111 0 120 112 0 121 113 1 122 114 1
		 115 158 1 116 117 1 117 118 1 118 119 1 119 135 1 120 121 1 121 122 1 122 115 1 123 110 1
		 124 109 1 125 94 0 126 92 0 127 105 1 128 101 1 129 98 0 130 96 0 123 124 1 124 125 1
		 125 142 1 126 127 1 127 128 1 128 129 1 129 151 1 130 123 1 131 93 0 132 169 1 133 168 1
		 134 167 0 135 166 1 136 165 1 137 130 1 138 163 0 139 102 1 140 106 1 141 94 0 142 159 0
		 143 108 1 144 116 1 131 132 1 132 133 1 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1
		 138 139 1 139 140 1 140 141 1 141 142 1 142 143 0 143 144 0 144 131 1 145 170 0 146 104 1
		 147 100 1 148 97 0 149 120 1 150 112 1 151 164 1 152 98 0 153 162 1 154 161 1 155 160 0
		 156 126 1 158 171 0 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1
		 152 153 1 153 154 1 154 155 1 156 157 0 157 158 0 158 145 1 155 156 1 159 156 0 160 141 0
		 161 140 1 162 139 1 163 152 0 164 137 1 165 150 1 166 149 1 167 148 0 168 147 1 169 146 1
		 170 131 0 171 144 0 159 160 1 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1
		 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1;
	setAttr ".ed[332:355]" 80 172 0 81 173 0 67 177 0 79 179 0 8 178 0 68 176 0
		 69 175 0 58 174 0 172 159 0 173 142 0 174 143 0 175 144 0 176 171 0 177 158 0 178 157 0
		 179 156 0 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 172 1;
	setAttr -s 178 -ch 712 ".fc[0:177]" -type "polyFaces" 
		f 4 4 -53 -24 -1
		mu 0 4 0 3 2 1
		f 4 6 -77 -25 -2
		mu 0 4 4 7 6 5
		f 4 36 3 -38 -46
		mu 0 4 8 11 10 9
		f 4 55 0 -57 -68
		mu 0 4 12 15 14 13
		f 4 5 -61 -72 59
		mu 0 4 16 19 18 17
		f 4 -45 -5 -56 -67
		mu 0 4 20 3 0 21
		f 4 -14 16 -157 -168
		mu 0 4 22 25 24 23
		f 4 15 -173 -48 38
		mu 0 4 26 29 28 27
		f 4 12 -176 -70 57
		mu 0 4 30 33 32 31
		f 4 -20 23 -131 -142
		mu 0 4 34 1 2 35
		f 4 -21 24 -134 -145
		mu 0 4 36 5 6 37
		f 4 22 -150 -47 37
		mu 0 4 10 39 38 9
		f 4 19 -153 -69 56
		mu 0 4 14 34 40 13
		f 4 -6 -28 31 -51
		mu 0 4 19 16 42 41
		f 4 -8 -29 32 -74
		mu 0 4 43 46 45 44
		f 4 30 -41 -49 39
		mu 0 4 47 50 49 48
		f 4 27 -60 -71 58
		mu 0 4 51 54 53 52
		f 4 -7 -105 -118 -66
		mu 0 4 55 4 57 56
		f 4 8 -129 -26 -3
		mu 0 4 58 61 60 59
		f 4 -22 25 -137 -148
		mu 0 4 62 59 60 63
		f 4 -15 17 -160 -171
		mu 0 4 64 67 66 65
		f 4 -10 -30 33 -126
		mu 0 4 68 71 70 69
		f 4 108 7 -110 -123
		mu 0 4 72 46 74 73
		f 4 28 -109 -122 107
		mu 0 4 45 46 72 75
		f 4 13 -167 -121 106
		mu 0 4 25 22 77 76
		f 4 20 -144 -120 105
		mu 0 4 5 36 79 78
		f 4 104 1 -106 -119
		mu 0 4 57 4 5 78
		f 4 -9 -80 -103 -116
		mu 0 4 80 83 82 81
		f 4 -37 -79 -90 -11
		mu 0 4 84 87 86 85
		f 4 10 -101 -27 -4
		mu 0 4 11 89 88 10
		f 4 -23 26 -140 -151
		mu 0 4 39 10 88 90
		f 4 -16 18 -163 -174
		mu 0 4 29 26 92 91
		f 4 -12 -31 34 -98
		mu 0 4 93 50 47 94
		f 4 -50 40 11 -97
		mu 0 4 95 98 97 96
		f 4 83 9 -125 -96
		mu 0 4 99 102 101 100
		f 4 29 -84 -95 82
		mu 0 4 70 71 104 103
		f 4 14 -170 -94 81
		mu 0 4 67 64 106 105
		f 4 21 -147 -93 80
		mu 0 4 59 62 108 107
		f 4 79 2 -81 -92
		mu 0 4 109 58 59 107
		f 4 -55 66 -78 89
		mu 0 4 86 20 21 85
		f 4 -54 65 -117 102
		mu 0 4 82 55 56 81
		f 4 53 91 -65 76
		mu 0 4 7 109 107 6
		f 4 133 64 92 -146
		mu 0 4 37 6 107 108
		f 4 156 63 93 -169
		mu 0 4 23 24 105 106
		f 4 -62 73 62 94
		mu 0 4 104 43 44 103
		f 4 61 95 -124 109
		mu 0 4 74 99 100 73
		f 4 -85 96 85 71
		mu 0 4 18 95 96 17
		f 4 -86 97 86 70
		mu 0 4 53 93 94 52
		f 4 162 87 69 -175
		mu 0 4 91 92 31 32
		f 4 139 88 68 -152
		mu 0 4 90 88 13 40
		f 4 77 67 -89 100
		mu 0 4 89 12 13 88
		f 4 -102 115 -91 78
		mu 0 4 87 80 81 86
		f 4 103 54 90 116
		mu 0 4 56 20 86 81
		f 4 -36 44 -104 117
		mu 0 4 57 3 20 56
		f 4 35 118 -44 52
		mu 0 4 3 57 78 2
		f 4 130 43 119 -143
		mu 0 4 35 2 78 79
		f 4 -42 50 42 121
		mu 0 4 72 19 41 75
		f 4 41 122 -73 60
		mu 0 4 19 72 73 18
		f 4 110 84 72 123
		mu 0 4 100 95 18 73
		f 4 111 49 -111 124
		mu 0 4 101 98 95 100
		f 4 -112 125 112 48
		mu 0 4 49 68 69 48
		f 4 159 113 47 -172
		mu 0 4 65 66 27 28
		f 4 136 114 46 -149
		mu 0 4 63 60 9 38
		f 4 101 45 -115 128
		mu 0 4 61 8 9 60
		f 4 132 -107 -132 143
		mu 0 4 36 25 76 79
		f 4 -17 -133 144 -76
		mu 0 4 24 25 36 37
		f 4 -64 75 145 134
		mu 0 4 105 24 37 108
		f 4 135 -82 -135 146
		mu 0 4 62 67 105 108
		f 4 -18 -136 147 -128
		mu 0 4 66 67 62 63
		f 4 -114 127 148 137
		mu 0 4 27 66 63 38
		f 4 138 -39 -138 149
		mu 0 4 39 26 27 38
		f 4 -19 -139 150 -100
		mu 0 4 92 26 39 90
		f 4 -88 99 151 140
		mu 0 4 31 92 90 40
		f 4 129 -58 -141 152
		mu 0 4 34 30 31 40
		f 4 -32 -154 164 -52
		mu 0 4 41 42 111 110
		f 4 -43 51 165 154
		mu 0 4 75 41 110 77
		f 4 155 -108 -155 166
		mu 0 4 22 45 75 77
		f 4 -33 -156 167 -75
		mu 0 4 44 45 22 23
		f 4 -63 74 168 157
		mu 0 4 103 44 23 106
		f 4 158 -83 -158 169
		mu 0 4 64 70 103 106
		f 4 -34 -159 170 -127
		mu 0 4 69 70 64 65
		f 4 -113 126 171 160
		mu 0 4 48 69 65 28
		f 4 161 -40 -161 172
		mu 0 4 29 47 48 28
		f 4 -35 -162 173 -99
		mu 0 4 94 47 29 91
		f 4 -87 98 174 163
		mu 0 4 52 94 91 32
		f 4 153 -59 -164 175
		mu 0 4 33 51 52 32
		f 4 177 229 222 -183
		mu 0 4 112 153 154 115
		f 4 296 284 -180 -284
		mu 0 4 191 192 157 119
		f 4 201 235 -177 -198
		mu 0 4 120 159 152 123
		f 4 -199 202 302 -182
		mu 0 4 124 125 198 199
		f 4 293 281 197 180
		mu 0 4 186 188 128 129
		f 4 186 -283 295 283
		mu 0 4 130 131 189 190
		f 4 179 233 -193 -187
		mu 0 4 119 157 158 135
		f 4 300 -194 -188 -288
		mu 0 4 196 197 137 138
		f 4 -224 231 -179 -189
		mu 0 4 140 155 156 116
		f 4 -282 294 282 189
		mu 0 4 128 188 189 131
		f 4 234 -202 -190 192
		mu 0 4 158 159 120 135
		f 4 301 -203 -196 193
		mu 0 4 197 198 125 137
		f 4 -197 -223 230 223
		mu 0 4 140 115 154 155
		f 4 228 305 -181 176
		mu 0 4 151 202 187 123
		f 4 181 306 291 239
		mu 0 4 124 199 200 163
		f 4 245 238 183 203
		mu 0 4 161 162 113 114
		f 4 244 -204 199 194
		mu 0 4 160 161 114 141
		f 4 251 -195 190 -244
		mu 0 4 168 160 141 117
		f 4 250 299 287 -243
		mu 0 4 167 194 195 118
		f 4 249 242 187 -242
		mu 0 4 166 167 118 134
		f 4 195 -241 248 241
		mu 0 4 134 121 165 166
		f 4 247 240 198 -240
		mu 0 4 164 165 121 122
		f 4 212 304 -229 220
		mu 0 4 142 201 202 151
		f 4 -230 221 213 206
		mu 0 4 154 153 144 145
		f 4 -231 -207 214 207
		mu 0 4 155 154 145 146
		f 4 -232 -208 215 -225
		mu 0 4 156 155 146 147
		f 4 -285 297 285 -226
		mu 0 4 157 192 193 148
		f 4 -234 225 217 -227
		mu 0 4 158 157 148 149
		f 4 218 -228 -235 226
		mu 0 4 149 150 159 158
		f 4 -236 227 219 -221
		mu 0 4 152 159 150 143
		f 4 -215 -238 -245 236
		mu 0 4 146 145 161 160
		f 4 -214 205 -246 237
		mu 0 4 145 144 162 161
		f 4 -292 303 -213 204
		mu 0 4 163 200 201 142
		f 4 -220 211 -248 -205
		mu 0 4 143 150 165 164
		f 4 -212 -219 210 -249
		mu 0 4 165 150 149 166
		f 4 -218 209 -250 -211
		mu 0 4 149 148 167 166
		f 4 -286 298 -251 -210
		mu 0 4 148 193 194 167
		f 4 -216 -237 -252 -209
		mu 0 4 147 146 160 168
		f 4 200 -267 252 182
		mu 0 4 127 171 169 112
		f 4 -268 -201 196 191
		mu 0 4 172 171 127 132
		f 4 -269 -192 188 184
		mu 0 4 173 172 132 133
		f 4 178 232 -270 -185
		mu 0 4 116 156 175 174
		f 4 -271 -233 224 216
		mu 0 4 176 175 156 147
		f 4 -272 -217 208 -259
		mu 0 4 177 176 147 168
		f 4 -273 258 243 185
		mu 0 4 178 177 168 117
		f 4 -261 -274 -186 -191
		mu 0 4 136 180 179 139
		f 4 -200 -262 -275 260
		mu 0 4 136 126 181 180
		f 4 -276 261 -184 -263
		mu 0 4 182 181 126 113
		f 4 -277 262 -239 246
		mu 0 4 183 182 113 162
		f 4 -278 -247 -206 -265
		mu 0 4 184 183 162 144
		f 4 -279 264 -222 -266
		mu 0 4 185 184 144 153
		f 4 -280 265 -178 -253
		mu 0 4 170 185 153 112
		f 4 266 253 330 318
		mu 0 4 169 171 215 216
		f 4 329 -254 267 254
		mu 0 4 214 215 171 172
		f 4 328 -255 268 255
		mu 0 4 212 214 172 173
		f 4 269 256 327 -256
		mu 0 4 174 175 211 213
		f 4 326 -257 270 257
		mu 0 4 210 211 175 176
		f 4 325 -258 271 -313
		mu 0 4 209 210 176 177
		f 4 324 312 272 259
		mu 0 4 207 209 177 178
		f 4 273 -311 323 -260
		mu 0 4 179 180 206 208
		f 4 274 -310 322 310
		mu 0 4 180 181 205 206
		f 4 321 309 275 -309
		mu 0 4 204 205 181 182
		f 4 320 308 276 263
		mu 0 4 203 204 182 183
		f 4 331 319 279 -319
		mu 0 4 217 218 185 170
		f 4 -307 290 -321 307
		mu 0 4 200 199 204 203
		f 4 -303 289 -322 -291
		mu 0 4 199 198 205 204
		f 4 -323 -290 -302 288
		mu 0 4 206 205 198 197
		f 4 -324 -289 -301 -312
		mu 0 4 208 206 197 196
		f 4 -300 286 -325 311
		mu 0 4 195 194 209 207
		f 4 -299 -314 -326 -287
		mu 0 4 194 193 210 209
		f 4 -298 -315 -327 313
		mu 0 4 193 192 211 210
		f 4 -328 314 -297 -316
		mu 0 4 213 211 192 191
		f 4 -296 -317 -329 315
		mu 0 4 190 189 214 212
		f 4 -295 -318 -330 316
		mu 0 4 189 188 215 214
		f 4 -331 317 -294 280
		mu 0 4 216 215 188 186
		f 4 -306 292 -332 -281
		mu 0 4 187 202 218 217
		f 4 -166 332 348 -334
		mu 0 4 77 110 219 220
		f 4 -165 335 355 -333
		mu 0 4 110 111 226 219
		f 4 -13 336 354 -336
		mu 0 4 33 30 225 227
		f 4 -130 334 353 -337
		mu 0 4 30 34 224 225
		f 4 141 337 352 -335
		mu 0 4 34 35 223 224
		f 4 142 338 351 -338
		mu 0 4 35 79 222 223
		f 4 131 339 350 -339
		mu 0 4 79 76 221 222
		f 4 120 333 349 -340
		mu 0 4 76 77 220 221
		f 4 -349 340 -264 -342
		mu 0 4 220 219 203 183
		f 4 -350 341 277 -343
		mu 0 4 221 220 183 184
		f 4 -351 342 278 -344
		mu 0 4 222 221 184 185
		f 4 -352 343 -320 -345
		mu 0 4 223 222 185 218
		f 4 -353 344 -293 -346
		mu 0 4 224 223 218 202
		f 4 -354 345 -305 -347
		mu 0 4 225 224 202 201
		f 4 -355 346 -304 -348
		mu 0 4 227 225 201 200
		f 4 -356 347 -308 -341
		mu 0 4 219 226 200 203;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 1 
		34 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9DEDB4B2-4E41-04E9-D029-5BB7DB6F7199";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0B536C9F-4EC7-B1E9-48E1-828A2C657B01";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4054A69B-4AC7-C522-257B-D4BC8431EE0F";
createNode displayLayerManager -n "layerManager";
	rename -uid "A98F7BA3-42F4-02AD-2D34-1D945F76F150";
createNode displayLayer -n "defaultLayer";
	rename -uid "74E15D65-4372-3A3F-CE8B-DCB6F696DA4E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "76A4C231-4A24-CFB1-1EE9-E6AAAC8DB28F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DCC79410-4057-5C0C-589C-16847F838218";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "79138C61-46AE-4D87-AC34-83A5DCD6B6BF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1956\n            -height 1044\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1956\\n    -height 1044\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1956\\n    -height 1044\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "66958F6B-4519-09D6-CC99-B69A2D3F97AE";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId10";
	rename -uid "68AF898D-43B5-B6C7-1345-17835B362146";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "8AFCC8C3-4CCF-405B-F766-25B6CFB92C1C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "1B0CDF1C-4ED8-C904-1453-86BB81EE03C9";
	setAttr ".ihi" 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "96530206-473F-6B8E-A048-0CAEFD8688B5";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId10.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId11.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupId12.id" "polySurface1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface1Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
// End of lift.ma
