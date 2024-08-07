//Maya ASCII 2024 scene
//Name: Couch.ma
//Last modified: Thu, Aug 08, 2024 03:25:29 AM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "2A116477-4DAD-3152-DF06-CFB0AF749FA4";
createNode transform -s -n "persp";
	rename -uid "504DE74C-4146-395D-2C27-8B95738AB4FC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 434.78388330642332 253.49408215273201 -211.65019225324841 ;
	setAttr ".r" -type "double3" -21.938352730937325 829.39999999946656 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0D845B32-4C13-B8AA-D164-7780D92FBF30";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 546.57935328779286;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -35.259305712586894 65.00000505416611 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "65F23F49-4C20-C7BD-05F2-49B536D9C205";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B0BA908A-4E83-86D1-3B76-BF9EBA956417";
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
	rename -uid "284D950A-45B6-2AE0-594D-94A6ED83C341";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4CAA0B36-4FE6-51EC-15EE-828F65E6BD18";
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
	rename -uid "1E172748-4E5F-6583-7AFA-AFACBE512329";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2944B0A5-4AF3-0F1B-3BCD-F58C55FC0B12";
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
createNode transform -n "Couch";
	rename -uid "61378B69-4B91-FF56-6F1B-44AFBD268D31";
createNode transform -n "pCube1" -p "Couch";
	rename -uid "9F85785D-4A91-0FDC-564B-AF8B737BC692";
	setAttr ".t" -type "double3" 0 22.5 0 ;
	setAttr ".rp" -type "double3" 0 -22.5 0 ;
	setAttr ".sp" -type "double3" 0 -22.5 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "F5953F9B-4EAB-B1CE-CA41-20BC6BFCA984";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5751158595085144 0.24710610508918762 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCube4" -p "Couch";
	rename -uid "2E582DDB-48B1-1186-771F-56A84BA6E126";
	setAttr ".t" -type "double3" -40.324314117431641 65.00000505416611 0 ;
	setAttr ".s" -type "double3" 0.71057094829458123 1 1 ;
	setAttr ".rp" -type "double3" -7.1756858825683629 -27.500001239468844 0 ;
	setAttr ".sp" -type "double3" -17.226561706176831 -27.500001239468844 0 ;
	setAttr ".spt" -type "double3" 10.050875823608383 0 0 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "D7AC0263-4B36-FCAC-1A8B-8FBCE3957DAD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.4525524377822876 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCube2" -p "Couch";
	rename -uid "A9AE1D07-4B1E-6AC9-243F-7BB042B0681F";
	setAttr ".t" -type "double3" 7.1756839752197266 45.000003247849946 0 ;
	setAttr ".rp" -type "double3" -29.999998092651367 -7.5000032478499463 0 ;
	setAttr ".sp" -type "double3" -29.999998092651367 -7.5000032478499463 0 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "424E2B8E-4598-98D3-41CE-4AB1CFB36B8F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55824874527752399 0.13720372319221497 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "CouchSide1";
	rename -uid "F14E2CF1-4B42-723F-81BA-CAA4A350BFFB";
	setAttr ".t" -type "double3" 0 35.5 53.499998481282795 ;
	setAttr ".rp" -type "double3" 0 -28 -11.999998481282795 ;
	setAttr ".sp" -type "double3" 0 -28 -11.999998481282795 ;
createNode mesh -n "CouchSide1Shape" -p "CouchSide1";
	rename -uid "A09A1C5E-49BD-4C7F-2447-5F9151CCBCE1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32826942950487137 0.19686230644583702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "CouchSide1";
	rename -uid "97A1DF42-4C03-9377-6AD4-37AA5F3CD913";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 5 "f[2]" "f[18]" "f[26]" "f[33:35]" "f[45:47]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[3]" "f[7]" "f[11]" "f[19:21]" "f[27:29]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[0]" "f[14]" "f[22]" "f[39:41]" "f[51:53]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "f[5:6]" "f[10]" "f[30:32]" "f[42:44]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "f[4]" "f[8]" "f[12]" "f[36:38]" "f[48:50]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[1]" "f[9]" "f[13]" "f[15:17]" "f[23:25]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.29166675 0.25 0.375 0.33333325 0.29166675 0 0.375
		 0.91666675 0.625 0.91666675 0.70833325 0 0.625 0.33333325 0.70833325 0.25 0.20833337
		 0.25 0.375 0.41666663 0.20833337 0 0.375 0.83333337 0.625 0.83333337 0.79166663 0
		 0.625 0.41666663 0.79166663 0.25 0.45833325 0 0.45833325 1 0.45833325 0.25 0.45833325
		 0.33333325 0.45833325 0.41666663 0.45833325 0.5 0.45833325 0.75 0.45833325 0.83333331
		 0.45833325 0.91666675 0.54166663 0 0.54166663 1 0.54166663 0.25 0.54166663 0.33333325
		 0.54166663 0.41666663 0.54166663 0.5 0.54166663 0.75 0.54166663 0.83333337 0.54166663
		 0.91666675 0.375 0.083333246 0.29166675 0.083333254 0.20833337 0.083333254 0.125
		 0.083333254 0.375 0.66666675 0.45833325 0.66666675 0.54166663 0.66666675 0.625 0.66666675
		 0.875 0.083333254 0.79166663 0.083333246 0.70833325 0.083333246 0.625 0.083333246
		 0.54166663 0.083333246 0.45833325 0.083333246 0.375 0.16666663 0.29166675 0.16666663
		 0.20833337 0.16666663 0.125 0.16666663 0.375 0.58333337 0.45833325 0.58333337 0.54166663
		 0.58333337 0.625 0.58333337 0.875 0.16666663 0.79166663 0.16666663 0.70833325 0.16666663
		 0.625 0.16666663 0.54166663 0.16666663 0.45833325 0.16666663;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[32]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[33]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[34]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[35]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[36]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[37]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[38]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[39]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[40]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[41]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[42]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[43]" -type "float3" 0 -18.85792 0 ;
	setAttr ".pt[44]" -type "float3" 0 18.85792 0 ;
	setAttr ".pt[45]" -type "float3" 0 18.85792 0 ;
	setAttr ".pt[46]" -type "float3" 0 18.85792 0 ;
	setAttr ".pt[47]" -type "float3" 0 18.85792 0 ;
	setAttr ".pt[48]" -type "float3" 0 18.85792 0 ;
	setAttr ".pt[49]" -type "float3" 0 18.85792 0 ;
	setAttr ".pt[50]" -type "float3" 0 18.85792 0 ;
	setAttr ".pt[51]" -type "float3" 0 18.85792 0 ;
	setAttr ".pt[52]" -type "float3" 0 18.85792 0 ;
	setAttr ".pt[53]" -type "float3" 0 18.85792 0 ;
	setAttr ".pt[54]" -type "float3" 0 18.85792 0 ;
	setAttr ".pt[55]" -type "float3" 0 18.85792 0 ;
	setAttr -s 56 ".vt[0:55]"  -47.5 -28 12 47.5 -28 12 -47.5 38.6588974 12
		 47.5 38.6588974 12 -47.5 38.6588974 -12 47.5 38.6588974 -12 -47.5 -28 -12 47.5 -28 -12
		 -47.5 38.6588974 8.70448494 -47.5 -28 8.70448494 47.5 -28 8.70448494 47.5 38.6588974 8.70448494
		 -47.5 38.6588974 -8.70447254 -47.5 -28 -8.7044735 47.5 -28 -8.7044735 47.5 38.6588974 -8.70447254
		 -43.98410416 -28 12 -43.98410416 38.6588974 12 -43.98409653 38.6588974 8.70448494
		 -43.98409653 38.6588974 -8.70447254 -43.98410416 38.6588974 -12 -43.98410416 -28 -12
		 -43.98410416 -28 -8.7044735 -43.98410416 -28 8.70448494 43.98405457 -28 12 43.98405457 38.6588974 12
		 43.98405838 38.6588974 8.70448494 43.98405838 38.6588974 -8.70447254 43.98405457 38.6588974 -12
		 43.98405457 -28 -12 43.98405457 -28 -8.7044735 43.98405457 -28 8.70448494 -47.5 -5.78038979 12
		 -47.5 -5.78038883 8.70448494 -47.5 -5.78038883 -8.7044735 -47.5 -5.78038883 -12 -43.98410416 -5.78038883 -12
		 43.98405457 -5.78038883 -12 47.5 -5.78038883 -12 47.5 -5.78038979 -8.7044735 47.5 -5.78038979 8.70448494
		 47.5 -5.78038979 12 43.98405457 -5.78038979 12 -43.98410416 -5.78038979 12 -47.5 16.43925476 12
		 -47.5 16.43925476 8.70448494 -47.5 16.43925476 -8.7044735 -47.5 16.43925476 -12 -43.98410416 16.43925476 -12
		 43.98405457 16.43925476 -12 47.5 16.43925476 -12 47.5 16.43925476 -8.7044735 47.5 16.43925476 8.70448494
		 47.5 16.43925476 12 43.98405457 16.43925476 12 -43.98410416 16.43925476 12;
	setAttr -s 108 ".ed[0:107]"  0 16 0 2 17 0 4 20 0 6 21 0 0 32 0 1 41 0
		 2 8 0 3 11 0 4 47 0 5 50 0 6 13 0 7 14 0 8 12 0 9 0 0 10 1 0 11 15 0 8 45 1 9 23 1
		 10 40 1 11 26 1 12 4 0 13 9 0 14 10 0 15 5 0 12 46 1 13 22 1 14 39 1 15 27 1 16 24 0
		 17 25 0 18 8 1 19 12 1 20 28 0 21 29 0 22 30 1 23 31 1 16 43 1 17 18 1 18 19 1 19 20 1
		 20 48 1 21 22 1 22 23 1 23 16 1 24 1 0 25 3 0 26 18 1 27 19 1 28 5 0 29 7 0 30 14 1
		 31 10 1 24 42 1 25 26 1 26 27 1 27 28 1 28 49 1 29 30 1 30 31 1 31 24 1 32 44 0 33 9 1
		 34 13 1 35 6 0 36 21 1 37 29 1 38 7 0 39 51 1 40 52 1 41 53 0 42 54 1 43 55 1 32 33 1
		 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 42 1 42 43 1 43 32 1
		 44 2 0 45 33 1 46 34 1 47 35 0 48 36 1 49 37 1 50 38 0 51 15 1 52 11 1 53 3 0 54 25 1
		 55 17 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 54 1
		 54 55 1 55 44 1;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 36 83 -5
		mu 0 4 0 30 61 48
		f 4 1 37 30 -7
		mu 0 4 2 32 33 15
		f 4 75 64 -4 -64
		mu 0 4 52 53 36 6
		f 4 17 43 -1 -14
		mu 0 4 17 38 31 8
		f 4 -15 18 80 -6
		mu 0 4 1 19 58 59
		f 4 72 61 13 4
		mu 0 4 48 49 16 0
		f 4 73 62 21 -62
		mu 0 4 49 50 24 16
		f 4 25 42 -18 -22
		mu 0 4 25 37 38 17
		f 4 79 -19 -23 26
		mu 0 4 57 58 19 27
		f 4 -31 38 31 -13
		mu 0 4 15 33 34 23
		f 4 10 -63 74 63
		mu 0 4 12 24 50 51
		f 4 3 41 -26 -11
		mu 0 4 6 36 37 25
		f 4 78 -27 -12 -67
		mu 0 4 56 57 27 10
		f 4 -32 39 -3 -21
		mu 0 4 23 34 35 4
		f 4 82 -37 28 52
		mu 0 4 60 61 30 39
		f 4 -38 29 53 46
		mu 0 4 33 32 41 42
		f 4 -39 -47 54 47
		mu 0 4 34 33 42 43
		f 4 -40 -48 55 -33
		mu 0 4 35 34 43 44
		f 4 -65 76 65 -34
		mu 0 4 36 53 54 45
		f 4 -42 33 57 -35
		mu 0 4 37 36 45 46
		f 4 -43 34 58 -36
		mu 0 4 38 37 46 47
		f 4 -44 35 59 -29
		mu 0 4 31 38 47 40
		f 4 81 -53 44 5
		mu 0 4 59 60 39 1
		f 4 -54 45 7 19
		mu 0 4 42 41 3 20
		f 4 -55 -20 15 27
		mu 0 4 43 42 20 28
		f 4 -56 -28 23 -49
		mu 0 4 44 43 28 5
		f 4 -66 77 66 -50
		mu 0 4 45 54 55 7
		f 4 -58 49 11 -51
		mu 0 4 46 45 7 26
		f 4 -59 50 22 -52
		mu 0 4 47 46 26 18
		f 4 -60 51 14 -45
		mu 0 4 40 47 18 9
		f 4 96 85 -73 60
		mu 0 4 62 63 49 48
		f 4 97 86 -74 -86
		mu 0 4 63 64 50 49
		f 4 -75 -87 98 87
		mu 0 4 51 50 64 65
		f 4 99 88 -76 -88
		mu 0 4 66 67 53 52
		f 4 -77 -89 100 89
		mu 0 4 54 53 67 68
		f 4 -78 -90 101 90
		mu 0 4 55 54 68 69
		f 4 102 -68 -79 -91
		mu 0 4 70 71 57 56
		f 4 103 -69 -80 67
		mu 0 4 71 72 58 57
		f 4 -81 68 104 -70
		mu 0 4 59 58 72 73
		f 4 105 -71 -82 69
		mu 0 4 73 74 60 59
		f 4 106 -72 -83 70
		mu 0 4 74 75 61 60
		f 4 -84 71 107 -61
		mu 0 4 48 61 75 62
		f 4 16 -97 84 6
		mu 0 4 14 63 62 2
		f 4 24 -98 -17 12
		mu 0 4 22 64 63 14
		f 4 -99 -25 20 8
		mu 0 4 65 64 22 13
		f 4 2 40 -100 -9
		mu 0 4 4 35 67 66
		f 4 -101 -41 32 56
		mu 0 4 68 67 35 44
		f 4 -102 -57 48 9
		mu 0 4 69 68 44 5
		f 4 -92 -103 -10 -24
		mu 0 4 29 71 70 11
		f 4 -93 -104 91 -16
		mu 0 4 21 72 71 29
		f 4 -105 92 -8 -94
		mu 0 4 73 72 21 3
		f 4 -95 -106 93 -46
		mu 0 4 41 74 73 3
		f 4 -96 -107 94 -30
		mu 0 4 32 75 74 41
		f 4 -108 95 -2 -85
		mu 0 4 62 75 32 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "10D94992-49AC-0C5F-BC33-119EF7D462D8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "198F549C-43CC-F10F-52BA-ADA7ADAA370D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CA6DB993-4392-A160-F2CA-9AAC63844201";
createNode displayLayerManager -n "layerManager";
	rename -uid "56C8C41B-477B-6E67-5EDF-4CA6993BEE97";
createNode displayLayer -n "defaultLayer";
	rename -uid "1BB26580-4D93-F37E-558D-378BCCE0831E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3F612D80-4B2B-DF3F-3F29-B192BDCCEEB0";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D66072A8-46DF-0AB4-34B6-8F8C8633D0B2";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "2BE4F03B-4461-193A-84A1-2E81080D27CE";
	setAttr ".w" 95;
	setAttr ".h" 30;
	setAttr ".d" 83;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	rename -uid "7E4A4B81-4783-1AD1-83DD-14AC54493AA1";
	setAttr ".w" 60;
	setAttr ".h" 15;
	setAttr ".d" 83;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	rename -uid "4A392955-41D7-51A1-9735-01AAE6C704A8";
	setAttr ".w" 35;
	setAttr ".h" 55;
	setAttr ".d" 83;
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "281E4E80-4010-57E3-95D7-94ADD08F2F60";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 17.5 45.000003247849946 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".c" no;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak1";
	rename -uid "2DCACD89-4A2A-7CB5-91E4-828501A17F13";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" 5.8926396 1.4210855e-14 0 ;
	setAttr ".tk[3]" -type "float3" 5.8926396 1.4210855e-14 0 ;
	setAttr ".tk[5]" -type "float3" 5.8926396 1.4210855e-14 0 ;
	setAttr ".tk[7]" -type "float3" 5.8926396 1.4210855e-14 0 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "6F6FF9C7-4022-B22E-4EA9-9BB282A8B54F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 17.5 45.000003247849946 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.30000000000000004;
	setAttr ".c" no;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "4B0DA643-4DA7-CD85-F0C4-EFADF9AE40D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 17.5 45.000003247849946 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".c" no;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "99DEE09E-44AC-CFC6-7081-009674DA80EF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[3]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 22.5 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.099999999999999978;
	setAttr ".c" no;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "9C751A7E-423B-E95F-0ABA-41B3C67646BC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 22.5 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.1;
	setAttr ".c" no;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "27840E0A-475D-A3AC-D034-A7A62A1AC529";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[2]" "e[4]" "e[15]" "e[17]" "e[23:24]" "e[31:32]" "e[36:39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 22.5 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".c" no;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySplit -n "polySplit1";
	rename -uid "DE9E3DEB-442A-E5ED-8829-34A124129431";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "33DAAB77-4DFD-1FFB-08B0-F5A292FE7611";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483636 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "D4B74DFF-4205-EB1E-6B24-A584F9ADD3DB";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483627 -2147483626;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "052C84B7-48E8-63E8-70EA-5383D38A5064";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483617 -2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "CF1E238C-42D3-ACEE-866D-A4AC22CD40CD";
	setAttr -s 2 ".e[0:1]"  0.5 1;
	setAttr -s 2 ".d[0:1]"  -2147483618 -2147483617;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "407BC93C-474F-1334-BB2B-E7BB63A6B30A";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483628 -2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "73479864-4605-C610-BF7B-D2AA646E7830";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483637 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "0FEEA7CE-4430-54F8-E5CD-DB9EB679B2EB";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483640 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "6B7685F5-4889-C520-FF7A-209E1D5DEE4D";
	setAttr -s 3 ".e[0:2]"  0.5 0.5 0.5;
	setAttr -s 3 ".d[0:2]"  -2147483610 -2147483609 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "5974CDA0-440E-A7A1-0214-BA8D0C182206";
	setAttr -s 2 ".e[0:1]"  0.30000001 0.69999999;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "D1932C13-4481-64F8-7085-EB9F35496B28";
	setAttr -s 2 ".e[0:1]"  0.89999998 0.89999998;
	setAttr -s 2 ".d[0:1]"  -2147483628 -2147483626;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "A53D59F3-4986-BF85-F46C-D3906BDCD483";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483599;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "D95CC3E8-4A7A-2BB2-1E42-549C4A5F20C3";
	setAttr -s 2 ".e[0:1]"  0.5 0;
	setAttr -s 2 ".d[0:1]"  -2147483596 -2147483605;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "95A9562B-4F47-499B-2F95-7EAA965B9213";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483610 -2147483595;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "2EF7F752-484F-8943-DBB7-CEAAA32F4B0E";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483626 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "E7647062-4442-BA22-ED68-1983EF47862A";
	setAttr -s 2 ".e[0:1]"  0.5 1;
	setAttr -s 2 ".d[0:1]"  -2147483592 -2147483618;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "E0451F54-458C-7107-05DB-549D769AD6F6";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483592 -2147483614;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "6B7FDF74-421A-27C8-1584-4E94883F1C7C";
	setAttr -s 13 ".e[0:12]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483597 -2147483624 -2147483622 -2147483625 -2147483634 
		-2147483632 -2147483635 -2147483644 -2147483642 -2147483645 -2147483600 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "E71D2806-42F9-1FDC-9886-A4AA28CF6370";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[20]" -type "float3" 2.2497749 2.2497754 0 ;
	setAttr ".tk[21]" -type "float3" 2.0998802 -2.0998802 0 ;
	setAttr ".tk[22]" -type "float3" -2.2463951 2.2497754 0 ;
	setAttr ".tk[23]" -type "float3" 2.0998802 -2.0998797 0 ;
	setAttr ".tk[24]" -type "float3" 2.2497749 2.2497754 0 ;
	setAttr ".tk[25]" -type "float3" -2.2497749 2.2497754 0 ;
	setAttr ".tk[28]" -type "float3" 1.6731184 0 0 ;
	setAttr ".tk[29]" -type "float3" 1.6731184 0 0 ;
	setAttr ".tk[30]" -type "float3" -1.4149055 -1.5750669 0 ;
	setAttr ".tk[31]" -type "float3" -1.4115257 -1.5750666 0 ;
createNode polySplit -n "polySplit19";
	rename -uid "E2615A76-4A41-D1DB-0614-6A8696B034F7";
	setAttr -s 13 ".e[0:12]"  0.1 0.89999998 0.89999998 0.1 0.89999998
		 0.89999998 0.1 0.89999998 0.89999998 0.1 0.89999998 0.89999998 0.1;
	setAttr -s 13 ".d[0:12]"  -2147483644 -2147483581 -2147483582 -2147483634 -2147483584 -2147483585 
		-2147483624 -2147483587 -2147483588 -2147483600 -2147483578 -2147483579 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "10F4A5CD-44AC-6CBA-CF23-31B470D2FC71";
	setAttr -s 13 ".e[0:12]"  0.1 0.1 0.89999998 0.1 0.1 0.89999998 0.1
		 0.1 0.89999998 0.1 0.1 0.89999998 0.1;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483597 -2147483586 -2147483622 -2147483625 -2147483583 
		-2147483632 -2147483635 -2147483580 -2147483642 -2147483645 -2147483577 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "90F44237-40A0-DDCF-F2CC-8688433F35E1";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483638 -2147483637 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "E8467ED0-4DC4-1C9E-1F3B-1BBCE0F767F7";
	setAttr -s 5 ".e[0:4]"  0.1 0.89999998 0.89999998 0.1 0.1;
	setAttr -s 5 ".d[0:4]"  -2147483638 -2147483636 -2147483633 -2147483637 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "A9600FBA-42FC-B97F-379E-738791141D4D";
	setAttr -s 5 ".e[0:4]"  0.1 0.89999998 0.89999998 0.1 0.1;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483635 -2147483634 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit24";
	rename -uid "2C9B35AA-4445-E6EC-2F75-D2B6FF7AA9F0";
	setAttr -s 11 ".e[0:10]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 11 ".d[0:10]"  -2147483644 -2147483616 -2147483632 -2147483624 -2147483640 -2147483639 
		-2147483622 -2147483630 -2147483614 -2147483643 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	rename -uid "1FA16C92-47B5-086B-C01B-65B4C318803A";
	setAttr -s 11 ".e[0:10]"  0.2 0.80000001 0.2 0.2 0.80000001 0.80000001
		 0.80000001 0.80000001 0.2 0.2 0.2;
	setAttr -s 11 ".d[0:10]"  -2147483640 -2147483609 -2147483632 -2147483616 -2147483612 -2147483603 
		-2147483604 -2147483605 -2147483622 -2147483639 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "4911A1F7-4B12-19AA-8F82-6AA88BF4F332";
	setAttr -s 11 ".e[0:10]"  0.2 0.80000001 0.80000001 0.2 0.80000001
		 0.80000001 0.80000001 0.2 0.2 0.2 0.2;
	setAttr -s 11 ".d[0:10]"  -2147483644 -2147483611 -2147483610 -2147483624 -2147483608 -2147483607 
		-2147483606 -2147483630 -2147483614 -2147483643 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "C96804B8-4C3D-6A8C-A006-A6825B3AF4F1";
	setAttr -s 17 ".e[0:16]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 17 ".d[0:16]"  -2147483648 -2147483553 -2147483593 -2147483578 -2147483647 -2147483613 
		-2147483629 -2147483623 -2147483646 -2147483573 -2147483598 -2147483558 -2147483645 -2147483621 -2147483631 -2147483615 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit28";
	rename -uid "55D5AB6A-4C10-1C15-E1F8-2EA420926908";
	setAttr -s 17 ".e[0:16]"  0.1 0.1 0.89999998 0.89999998 0.1 0.1 0.89999998
		 0.89999998 0.89999998 0.1 0.89999998 0.89999998 0.89999998 0.1 0.89999998 0.89999998
		 0.1;
	setAttr -s 17 ".d[0:16]"  -2147483629 -2147483613 -2147483548 -2147483549 -2147483593 -2147483553 
		-2147483552 -2147483537 -2147483538 -2147483621 -2147483540 -2147483541 -2147483542 -2147483573 -2147483544 -2147483545 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit29";
	rename -uid "6B3962C4-459C-FE64-9D5F-07803D916E5A";
	setAttr -s 17 ".e[0:16]"  0.1 0.89999998 0.89999998 0.1 0.1 0.89999998
		 0.89999998 0.1 0.1 0.89999998 0.1 0.1 0.1 0.89999998 0.1 0.1 0.1;
	setAttr -s 17 ".d[0:16]"  -2147483648 -2147483551 -2147483550 -2147483578 -2147483647 -2147483547 
		-2147483546 -2147483623 -2147483646 -2147483543 -2147483598 -2147483558 -2147483645 -2147483539 -2147483631 -2147483615 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "053B679B-4D71-A663-47BE-3B81ED9884EA";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[3]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[5]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[11]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[14]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[19]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[35]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[36]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[37]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[38]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[39]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[66]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[67]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[68]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[69]" -type "float3" -4.470983 -4.9808621 0 ;
	setAttr ".tk[79]" -type "float3" -4.470983 -4.9808621 0 ;
	setAttr ".tk[80]" -type "float3" -4.4709826 -4.9808621 0 ;
	setAttr ".tk[81]" -type "float3" -4.4709826 -4.9808621 0 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "3A16CB52-4692-5C9C-1FB6-10B087274ECD";
	setAttr ".dc" -type "componentList" 5 "vtx[3]" "vtx[5]" "vtx[11]" "vtx[14]" "vtx[19]";
createNode polyAverageVertex -n "polyAverageVertex1";
	rename -uid "084C534E-479B-B31F-4E77-5EBD6D0D785F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "vtx[3]" "vtx[5]" "vtx[11]" "vtx[14]" "vtx[19]" "vtx[35:39]" "vtx[66:69]" "vtx[79:81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -30 65.00000505416611 0 1;
	setAttr ".i" 51;
createNode polyAverageVertex -n "polyAverageVertex2";
	rename -uid "F41833F7-40F5-F47E-4C3E-71B78D04A95D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "vtx[3]" "vtx[5]" "vtx[11]" "vtx[14]" "vtx[19]" "vtx[25:29]" "vtx[35:39]" "vtx[52:60]" "vtx[66:70]" "vtx[78:81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -30 65.00000505416611 0 1;
	setAttr ".i" 20;
createNode polySplit -n "polySplit36";
	rename -uid "13C66BF4-46A3-F8BD-91AE-3284418FBA8D";
	setAttr -s 15 ".e[0:14]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5;
	setAttr -s 15 ".d[0:14]"  -2147483638 -2147483603 -2147483593 -2147483628 -2147483527 -2147483575 
		-2147483546 -2147483626 -2147483589 -2147483611 -2147483636 -2147483552 -2147483569 -2147483521 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "34D49730-4655-A427-8389-0EA44A2106F8";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[0]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[1]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[2]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[3]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[4]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[5]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[6]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[7]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[22]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[25]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[26]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[27]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[28]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[29]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[30]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[31]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[32]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[33]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[40]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[41]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[42]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[43]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[44]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[51]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[52]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[53]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[54]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[55]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[56]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[57]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[64]" -type "float3" 13.119308 0 0 ;
	setAttr ".tk[65]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[66]" -type "float3" 12.446697 0 0 ;
	setAttr ".tk[67]" -type "float3" 12.446697 0 0 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "65313920-4E8F-1899-2D47-2C804F6E7F6F";
	setAttr ".ics" -type "componentList" 1 "e[26:27]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "0259BBD3-4603-FCA0-4E34-1B8F3C2E1E24";
	setAttr ".ics" -type "componentList" 1 "e[16:17]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "C029FE19-4F09-C076-48D6-93B37DB62365";
	setAttr ".ics" -type "componentList" 1 "e[19:20]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge4";
	rename -uid "0969D850-45A1-0B23-2D5A-21A2572BC4C0";
	setAttr ".ics" -type "componentList" 1 "e[16:17]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge5";
	rename -uid "BAFED191-4D49-08E3-F255-B3B6AE36AEFF";
	setAttr ".ics" -type "componentList" 1 "e[11:12]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge6";
	rename -uid "AD618B44-4C8E-413E-2387-E582BC8E28DC";
	setAttr ".ics" -type "componentList" 2 "e[19:20]" "e[23:24]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge7";
	rename -uid "4478A755-4D78-69CF-4B9D-82A2158D78EF";
	setAttr ".ics" -type "componentList" 1 "e[16:17]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit37";
	rename -uid "BB3E96CC-45B6-D671-3B24-4885AC655145";
	setAttr -s 3 ".e[0:2]"  1 1 0;
	setAttr -s 3 ".d[0:2]"  -2147483639 -2147483647 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit38";
	rename -uid "616A94E0-4D98-8A89-6D61-E7BC7F847DE9";
	setAttr -s 3 ".e[0:2]"  0 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483596 -2147483642 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit39";
	rename -uid "2A1CB28F-44C0-2DF5-40C1-0FA54DA40B87";
	setAttr -s 3 ".e[0:2]"  1 0 0;
	setAttr -s 3 ".d[0:2]"  -2147483636 -2147483642 -2147483582;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit40";
	rename -uid "2666DEE6-4140-6E9E-E823-AE891949E87D";
	setAttr -s 3 ".e[0:2]"  1 0 0;
	setAttr -s 3 ".d[0:2]"  -2147483637 -2147483645 -2147483605;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit41";
	rename -uid "F8E7146D-4BDC-5AC4-59F7-05B8647FAA64";
	setAttr -s 3 ".e[0:2]"  0 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483637 -2147483645 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit42";
	rename -uid "8AF93905-4805-30C4-4228-C4BE5EEE789C";
	setAttr -s 3 ".e[0:2]"  0 0 0;
	setAttr -s 3 ".d[0:2]"  -2147483639 -2147483647 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit43";
	rename -uid "4BAA9AA6-4EAB-7083-3217-F99DE9590ADA";
	setAttr -s 3 ".e[0:2]"  0 0 0;
	setAttr -s 3 ".d[0:2]"  -2147483633 -2147483641 -2147483575;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit44";
	rename -uid "A9DD889D-48C2-5056-0F1A-2ABA72952421";
	setAttr -s 3 ".e[0:2]"  0 0 0;
	setAttr -s 3 ".d[0:2]"  -2147483635 -2147483643 -2147483589;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "B5044CD1-4DA3-6FE5-0D06-1FAF086175B3";
	setAttr ".dc" -type "componentList" 1 "e[92:95]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "F96C3267-45CD-CD6B-E25E-CBA3776FAB6E";
	setAttr ".dc" -type "componentList" 1 "e[88:91]";
createNode polyAverageVertex -n "polyAverageVertex3";
	rename -uid "6E788B92-42C9-2671-4536-CB9E40FB659F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "vtx[3]" "vtx[5]" "vtx[11]" "vtx[14]" "vtx[19]" "vtx[25:29]" "vtx[35:39]" "vtx[52:60]" "vtx[66:70]" "vtx[78:81]";
	setAttr ".ix" -type "matrix" 0.71057094829458123 0 0 0 0 1 0 0 0 0 1 0 -35.259305712586894 65.00000505416611 0 1;
createNode polyTweak -n "polyTweak8";
	rename -uid "D02F4E87-41E5-D27D-0E33-5C933873F62D";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[3]" -type "float3" 0 0 5.7243848 ;
	setAttr ".tk[5]" -type "float3" 0 0 -5.7243848 ;
	setAttr ".tk[11]" -type "float3" 0 0 7.4527207e-10 ;
	setAttr ".tk[14]" -type "float3" 0 0 -4.1946816 ;
	setAttr ".tk[19]" -type "float3" 0 0 4.1946816 ;
	setAttr ".tk[25]" -type "float3" 0 0 -2.5741506 ;
	setAttr ".tk[26]" -type "float3" 0 0 -2.0917232 ;
	setAttr ".tk[27]" -type "float3" 0 0 -3.4678892e-11 ;
	setAttr ".tk[28]" -type "float3" 0 0 2.0917232 ;
	setAttr ".tk[29]" -type "float3" 0 0 2.5741506 ;
	setAttr ".tk[35]" -type "float3" 0 0 3.922555 ;
	setAttr ".tk[36]" -type "float3" 0 0 2.8460026 ;
	setAttr ".tk[37]" -type "float3" 0 0 2.2833127e-09 ;
	setAttr ".tk[38]" -type "float3" 0 0 -2.8460026 ;
	setAttr ".tk[39]" -type "float3" 0 0 -3.922555 ;
	setAttr ".tk[52]" -type "float3" 0 0 1.3661752 ;
	setAttr ".tk[53]" -type "float3" 0 0 1.269007 ;
	setAttr ".tk[54]" -type "float3" 0 0 2.5741506 ;
	setAttr ".tk[55]" -type "float3" 0 0 2.091723 ;
	setAttr ".tk[56]" -type "float3" 0 0 -4.8886557e-09 ;
	setAttr ".tk[57]" -type "float3" 0 0 -2.0917232 ;
	setAttr ".tk[58]" -type "float3" 0 0 -2.5741506 ;
	setAttr ".tk[59]" -type "float3" 0 0 -1.269007 ;
	setAttr ".tk[60]" -type "float3" 0 0 -1.3661752 ;
	setAttr ".tk[66]" -type "float3" 0 0 -1.6108879e-09 ;
	setAttr ".tk[67]" -type "float3" 0 0 2.8460026 ;
	setAttr ".tk[68]" -type "float3" 0 0 3.922555 ;
	setAttr ".tk[69]" -type "float3" 0 0 1.233315 ;
	setAttr ".tk[70]" -type "float3" 0 0 1.269007 ;
	setAttr ".tk[78]" -type "float3" 0 0 -1.269007 ;
	setAttr ".tk[79]" -type "float3" 0 0 -1.233315 ;
	setAttr ".tk[80]" -type "float3" 0 0 -3.922555 ;
	setAttr ".tk[81]" -type "float3" 0 0 -2.8460026 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F6F60811-4831-5715-DBB0-3BB40D965D19";
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
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1594\n            -height 883\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1594\\n    -height 883\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1594\\n    -height 883\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 25 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "59F4009C-47DE-A18C-B072-05983459B33F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A2345E17-44B0-B052-D725-DAA395F5783E";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "73280FC4-440E-F0E5-B785-F6AEB5781DC3";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "BE566B45-4517-8D2C-B9A8-29B3F426A1DC";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "1F6C9EF7-48E7-DDAC-D903-E88B07E66817";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "07634CC3-478F-0659-D817-F7B7D2F25709";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:95]";
	setAttr ".ix" -type "matrix" 0.71057094829458123 0 0 0 0 1 0 0 0 0 1 0 -35.259305712586894 65.00000505416611 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -36.578800201416016 64.574043273925781 2.9360103607177734 ;
	setAttr ".ro" -type "double3" 172.46164737961513 24.200000728195825 179.99999996843047 ;
	setAttr ".ps" -type "double2" 56.708024625849191 65.793953078924289 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" -1.7735668420791626 -0.18876679241657257 -0.40638831257820129 -0.40638017654418945
		 0 3.479792594909668 -0.13119244575500488 -0.13118982315063477 -0.79707258939743042 0.42002516984939575 0.9042549729347229 0.90423691272735596
		 -62.534736633300781 -232.84231567382812 540.58880615234375 540.77801513671875;
	setAttr ".prgt" 1594;
	setAttr ".ptop" 883;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "311AD622-430C-E1E5-56F5-04B27B0BFF64";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[16:19]" "e[38]" "e[43]" "e[58]" "e[63]" "e[78]" "e[83]" "e[102]" "e[110]" "e[128]" "e[136]" "e[166]" "e[174]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "03D5CCAF-443A-6721-408F-F3BEFEC9CB0C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[4]" "e[6]" "e[8]" "e[10]" "e[12:13]" "e[20:21]" "e[28:29]" "e[36]" "e[40]" "e[56]" "e[60]" "e[76]" "e[80]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "9220737D-4528-E607-6172-0B94E6BC333D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[0:1]" "e[96]" "e[100]" "e[104]" "e[108]" "e[130]" "e[134]" "e[138]" "e[142]" "e[160]" "e[164]" "e[168]" "e[172]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "31562BCB-4E8F-060B-77A1-7B8CFFAB9E8B";
	setAttr ".uopa" yes;
	setAttr -s 144 ".uvtk[0:143]" -type "float2" -0.18734799 0.26609206 -0.23166843
		 -0.095942378 -0.35989657 0.18024713 -0.38593894 0.18429092 0.31614745 -0.59596652
		 -0.087160513 -0.081390858 -0.07314375 -0.082747698 -0.08773309 -0.072031319 -0.049815357
		 0.035413988 -0.045139015 0.041772641 -0.095627248 0.057888746 -0.38142866 0.62999207
		 -0.20346136 0.31289929 -0.21790016 -0.095411316 0.12296233 0.1382976 0.13915923 0.13736708
		 0.15218557 0.10795766 0.13858022 0.10667419 -0.15314084 0.22706118 -0.12313569 -0.014695887
		 -0.29625785 0.48840946 -0.11224467 -0.00091252849 0.093186408 0.18920772 0.083951801
		 0.188301 0.088439673 0.22376287 0.086448163 0.24365625 0.2082696 -0.30848539 -0.057329059
		 -0.088940144 -0.046377361 -0.112221 0.17869502 -0.26047063 -0.052339971 0.012316227
		 -0.36269456 0.7395705 0.024309456 -0.080824673 -0.20735037 0.030632079 0.27514529
		 0.12409161 0.26409978 0.15621963 -0.10700205 -0.082412675 0.24942878 -0.46644112
		 -0.19379932 -0.069416881 0.087576807 -0.081398904 0.15221775 -0.21896565 -0.029334664
		 -0.084856391 -0.025255322 -0.087006688 0.034250379 -0.050388217 0.039744616 -0.0096581578
		 0.080883801 -0.023057044 0.073425591 -0.060882449 0.25231913 -0.094143629 -0.063470796
		 -0.0028073192 0.18084244 -0.089958787 0.19538215 -0.047527015 0.14284551 -0.047471285
		 0.14078508 -0.081779003 -0.16760404 -0.0740273 -0.10134423 0.18783316 -0.072006881
		 0.13666004 -0.11253792 0.28561121 0.048142523 -0.11817005 -0.2907865 0.060006142
		 -0.26470602 0.05561471 0.14536704 0.018532157 0.19018516 0.020866603 0.28374732 0.026106387
		 0.060184032 0.063031614 0.091508687 0.057696968 0.0091943145 -0.014003575 0.11261376
		 0.11052686 0.10429266 0.1257675 0.095369965 0.018089354 0.083529115 -0.050063908
		 0.094406664 -0.090382993 0.14134622 -0.10688633 -0.087581575 -0.025964677 0.010730863
		 -0.067755342 0.052178979 -0.071569085 0.066625595 -0.037773013 0.079942286 0.046835184
		 0.08607024 0.18577309 0.075624883 0.23431021 0.074385434 0.21094823 -0.064532712
		 0.042082004 0.11997253 0.12520993 0.14085391 -0.12018448 0.055556923 -0.11017436
		 0.024086297 -0.089734197 -0.021374479 -0.062552512 -0.077718593 0.039232433 -0.12450434
		 0.14422828 -0.14644644 0.17479265 -0.050463602 0.015208691 0.067360431 0.030134454
		 -0.025434554 0.10668648 -0.020140409 0.15031153 0.013956308 0.1164367 0.041052461
		 0.019521862 0.030617952 -0.06808871 0.021211386 -0.10328037 -0.018857062 -0.08453989
		 -0.27650079 -0.23615783 -0.17492136 -0.10365767 0.039701462 -0.091472924 0.45552635
		 -0.73737228 0.24427868 0.14356312 -0.050426677 0.059739053 0.21227223 -0.11529642
		 -0.13597712 -0.012994587 -0.062177569 0.050240993 -0.067747265 0.021979302 -0.31266212
		 0.64920115 -0.28786924 -0.25062403 0.27153194 -0.047773182 -0.063212574 -0.022205114
		 0.39909917 -0.6532129 0.17338431 -0.31873828 -0.32540834 0.54204559 -0.10262227 0.047246225
		 -0.13699949 0.18072644 0.064396828 -0.16259202 0.26579702 -0.50891209 -0.10163414
		 -0.070673048 0.12269092 -0.17031205 0.0054022074 -0.016048849 -0.23635365 -0.10772016
		 -0.40865993 0.21461146 0.29975089 -0.55398905 0.137604 -0.17369211 -0.21837708 0.042829514
		 -0.068770587 -0.077138245 -0.053664565 -0.1046747 -0.35232472 0.57574862 -0.12621441
		 -0.09487889 -0.10877246 0.094551727 -0.020140052 0.15031287 0.010743022 -0.091533124
		 -0.14531894 -0.10634285 -0.006268546 -0.10110283 -0.38259822 0.21067245 -0.064949721
		 0.014818192 0.059831381 -0.079771221 0.075623751 0.23430906 0.094843425 0.14135909
		 0.1030542 -0.087489367 -0.17158343 -0.10184276 -0.25006306 -0.10823764;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "0D97FFE9-4F6A-F36B-2C19-41998E507808";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "F9A13E72-4399-2CC2-95A6-7F8C9B0F06EF";
	setAttr ".uopa" yes;
	setAttr -s 58 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" 0.24934861 -1.6028249 ;
	setAttr ".uvtk[9]" -type "float2" 0.24969378 -1.6018263 ;
	setAttr ".uvtk[10]" -type "float2" 0.25200346 -1.5988506 ;
	setAttr ".uvtk[19]" -type "float2" 0.25419536 -1.597234 ;
	setAttr ".uvtk[21]" -type "float2" 0.25419781 -1.5972028 ;
	setAttr ".uvtk[22]" -type "float2" 0.25607249 -1.5988009 ;
	setAttr ".uvtk[23]" -type "float2" 0.2564868 -1.5987688 ;
	setAttr ".uvtk[24]" -type "float2" 0.25599793 -1.5994717 ;
	setAttr ".uvtk[25]" -type "float2" 0.25672171 -1.601627 ;
	setAttr ".uvtk[27]" -type "float2" 0.19428137 -1.5288177 ;
	setAttr ".uvtk[28]" -type "float2" 0.33684099 -1.6341932 ;
	setAttr ".uvtk[33]" -type "float2" 0.17259136 -1.6294994 ;
	setAttr ".uvtk[41]" -type "float2" 0.30540299 -1.6375492 ;
	setAttr ".uvtk[42]" -type "float2" 0.30515617 -1.6324337 ;
	setAttr ".uvtk[43]" -type "float2" 0.24789402 -1.5927176 ;
	setAttr ".uvtk[44]" -type "float2" 0.25758314 -1.5956519 ;
	setAttr ".uvtk[45]" -type "float2" 0.26427621 -1.5883254 ;
	setAttr ".uvtk[46]" -type "float2" 0.26236188 -1.5809005 ;
	setAttr ".uvtk[48]" -type "float2" 0.24575101 -1.6268785 ;
	setAttr ".uvtk[63]" -type "float2" 0.26247329 -1.5958693 ;
	setAttr ".uvtk[64]" -type "float2" 0.25982338 -1.5958685 ;
	setAttr ".uvtk[65]" -type "float2" 0.2561582 -1.6144664 ;
	setAttr ".uvtk[72]" -type "float2" 0.21736242 -1.6339749 ;
	setAttr ".uvtk[73]" -type "float2" 0.23542869 -1.5872507 ;
	setAttr ".uvtk[74]" -type "float2" 0.25213245 -1.5706339 ;
	setAttr ".uvtk[75]" -type "float2" 0.26721758 -1.5897566 ;
	setAttr ".uvtk[76]" -type "float2" 0.2587195 -1.5967573 ;
	setAttr ".uvtk[77]" -type "float2" 0.25586852 -1.5987657 ;
	setAttr ".uvtk[78]" -type "float2" 0.25549242 -1.6002562 ;
	setAttr ".uvtk[79]" -type "float2" 0.25596038 -1.5994327 ;
	setAttr ".uvtk[80]" -type "float2" 0.26431713 -1.6062787 ;
	setAttr ".uvtk[91]" -type "float2" 0.25354037 -1.5971289 ;
	setAttr ".uvtk[92]" -type "float2" 0.25161192 -1.5951675 ;
	setAttr ".uvtk[93]" -type "float2" 0.25237355 -1.5978134 ;
	setAttr ".uvtk[94]" -type "float2" 0.25668398 -1.6015404 ;
	setAttr ".uvtk[95]" -type "float2" 0.27983326 -1.6002024 ;
	setAttr ".uvtk[96]" -type "float2" 0.30315667 -1.5965848 ;
	setAttr ".uvtk[97]" -type "float2" 0.21773335 -1.5670233 ;
	setAttr ".uvtk[98]" -type "float2" 0.26041651 -1.6037016 ;
	setAttr ".uvtk[99]" -type "float2" 0.2622 -1.6043582 ;
	setAttr ".uvtk[103]" -type "float2" 0.26456612 -1.60665 ;
	setAttr ".uvtk[105]" -type "float2" 0.19791281 -1.6341226 ;
	setAttr ".uvtk[106]" -type "float2" 0.26490164 -1.6083399 ;
	setAttr ".uvtk[107]" -type "float2" 0.25883323 -1.6178777 ;
	setAttr ".uvtk[109]" -type "float2" 0.26030958 -1.6037173 ;
	setAttr ".uvtk[111]" -type "float2" 0.23051573 -1.6316414 ;
	setAttr ".uvtk[115]" -type "float2" 0.25175849 -1.599257 ;
	setAttr ".uvtk[121]" -type "float2" 0.25591001 -1.6167954 ;
	setAttr ".uvtk[126]" -type "float2" 0.16879314 -1.6283188 ;
	setAttr ".uvtk[127]" -type "float2" 0.19001493 -1.527323 ;
	setAttr ".uvtk[128]" -type "float2" 0.34016603 -1.6449496 ;
	setAttr ".uvtk[132]" -type "float2" 0.25162622 -1.5951774 ;
	setAttr ".uvtk[133]" -type "float2" 0.22828451 -1.5443276 ;
	setAttr ".uvtk[138]" -type "float2" 0.27723539 -1.5818119 ;
	setAttr ".uvtk[139]" -type "float2" 0.25617817 -1.6009551 ;
	setAttr ".uvtk[144]" -type "float2" 0.19095942 -1.5015805 ;
	setAttr ".uvtk[145]" -type "float2" 0.19947603 -1.5073209 ;
createNode polyMapCut -n "polyMapCut5";
	rename -uid "4BC45598-43E7-7020-00A5-C2BCC6F77BE5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "17E2F993-4007-EFD5-E8B0-1F84D83E5478";
	setAttr ".uopa" yes;
	setAttr -s 148 ".uvtk[0:147]" -type "float2" 0.84806788 0.22505671 0.52302092
		 0.03177464 0.42284968 -0.4557789 0.43069905 -0.46868509 -0.011239171 0.32120126 -0.18347481
		 -0.75174332 -0.22220224 -0.71941513 -0.23184878 -0.73105192 -0.79421699 1.91981769
		 -0.78378272 1.92168212 -0.96370322 2.12510657 0.15807772 -0.64616859 0.84081334 0.16021806
		 0.48694906 0.067069888 0.32223445 -0.17410333 0.28645715 -0.13624559 0.2387282 -0.18191564
		 0.27348483 -0.21492742 0.75488257 0.16983259 -0.93480647 2.20973539 0.12946385 -0.56626272
		 -0.92005181 2.19769764 -0.62629926 1.94537187 -0.5900802 1.96044433 -0.62921554 2.010716915
		 -0.65435851 1.97723818 -0.38040584 -0.2318306 -0.35489708 1.34413743 -0.56538218
		 1.41343021 -0.40844417 -0.27457723 0.38180804 -0.18154293 0.77552241 -0.4233295 -0.5824545
		 -0.44035861 0.084218323 1.52392364 -0.089315802 0.12586048 -0.042172164 0.17497092
		 0.15903953 0.38237238 0.067436934 0.24674812 -0.035934433 -0.74135435 0.0021460652
		 -0.33679944 -0.32375365 -0.26898968 -0.60039431 1.46018767 -0.58861548 1.46576905
		 -0.28154969 1.66608095 -0.32095835 1.74941373 -0.45420754 1.69535148 -0.41001734
		 1.62794685 -0.39773905 -0.22082835 -0.057767272 1.88304639 -0.19221637 -0.39745602
		 -0.12473786 -0.3291738 -0.028453946 -0.42527741 -0.09703508 -0.47243154 -0.043744758
		 -0.7283957 -0.12518322 -0.4603729 -0.097144902 -0.4176262 0.34586895 -0.37525722
		 0.41115972 0.20829031 0.19767308 -0.60686594 0.18993255 -0.59388435 0.10038202 -0.33211643
		 0.022308022 -0.25648016 -0.22779718 -0.026405424 -0.42747068 1.85304296 -0.52803004
		 1.81512332 -0.70874941 1.68360448 0.28075725 -0.22723822 0.33264989 -0.16288845 0.12055525
		 -0.37531489 -0.012534544 -0.48113984 -0.10076644 -0.52572083 -0.23134246 -0.45263332
		 0.0079047084 1.71328402 -0.26182455 1.60197306 -0.40583673 1.57216454 -0.49430689
		 1.65888715 -0.56319004 1.79173994 -0.63515425 1.93994331 -0.65915221 1.97490633 -0.641343
		 2.021489143 -0.27846313 2.33888292 0.29708758 -0.12577006 -0.50466079 -0.34654275
		 -0.24131149 -0.56291294 -0.14639553 -0.62023526 -0.021894619 -0.58877432 0.16114897
		 -0.47610056 0.35225546 -0.34010366 0.4086751 -0.3033649 0.39215118 -0.030048966 0.064004332
		 0.28454483 -0.77392465 2.10630703 -0.80541843 2.04545784 -0.70476413 1.92588115 -0.63630033
		 1.74531424 -0.53941262 1.57685804 -0.49642843 1.50906801 -0.28719687 1.49185264 -0.51502538
		 2.58548188 -0.39359057 2.46805167 -0.57282299 -0.42870915 -0.12806153 0.15288925
		 -0.031524897 0.18596694 -0.26731771 2.32323861 -0.445557 -0.27652657 0.042979658
		 1.62558484 -0.21950592 2.253196 -0.11808118 2.040744305 0.68959177 -0.41371498 -0.52836239
		 2.5983777 -0.33119699 -0.14400789 -0.02008751 1.78402698 -0.071409404 0.11573017
		 0.15519941 -0.032906413 0.10142553 -0.60900939 -0.98221487 2.13434649 0.76213717
		 0.23467124 0.41841432 0.27312896 0.074691534 0.3115868 -0.19315457 -0.7633512 -0.35179192
		 -0.31173632 -0.72018993 1.67911077 0.49748778 0.077901363 0.48794913 -0.43307236
		 -0.018493712 0.25636256 -0.08378464 -0.32718503 0.090139627 1.50955153 -0.34895486
		 1.32977307 -0.57717788 1.40815949 0.18611598 -0.60342187 0.16957191 0.39321741 0.43846029
		 -0.21870203 -0.70413554 1.96777201 -0.39906573 1.46502304 -0.10030945 -0.76405609
		 -0.10414188 -0.62853312 0.48002687 -0.42018598 0.42799681 -0.065640554 -0.44178161
		 1.58578122 -0.669469 1.98427415 0.3324703 -0.18710756 -0.11256321 -0.52296668 -0.09232077
		 -0.77684939 0.53358614 0.042592168 -0.39682466 1.30994892 -0.40275943 1.32429528
		 -0.77773309 1.98126125 -0.76949155 1.9795475;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "EC159A4D-4DF1-8C5A-F7BE-01BF2FAED885";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1756839752197266 45.000003247849946 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 16.345352172851562 45.000003814697266 9.5367431640625e-07 ;
	setAttr ".ro" -type "double3" 175.46164720899276 36.200000716097918 179.99999976409478 ;
	setAttr ".ps" -type "double2" 112.23700607179155 23.913666045668009 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" -1.5690895318984985 -0.16403712332248688 -0.58876568078994751 -0.58875387907028198
		 -2.2033065691731938e-17 3.4991238117218018 -0.079127982258796692 -0.079126395285129547
		 -1.1483999490737915 0.22412830591201782 0.80444628000259399 0.80443018674850464 58.008476257324219 -186.11799621582031 180.33528137207031 180.53166198730469;
	setAttr ".prgt" 1594;
	setAttr ".ptop" 883;
createNode polyMapCut -n "polyMapCut6";
	rename -uid "C2D478E6-4912-F090-3685-7290013DA5C3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[72:83]" "e[137]" "e[144]";
createNode polyMapCut -n "polyMapCut7";
	rename -uid "614834CA-4D5C-C746-82EF-07AEDA455CB5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[96:107]" "e[120:131]" "e[136]" "e[138]" "e[143]" "e[145]";
createNode polyMapCut -n "polyMapCut8";
	rename -uid "9BE06650-4448-B509-2E81-6EA0ACF1E49F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[0]" "e[6]" "e[16]" "e[26]" "e[86]" "e[89]" "e[92]" "e[95]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "D99F3E62-48A8-BDA3-DA6E-FC9D97AA742B";
	setAttr ".uopa" yes;
	setAttr -s 132 ".uvtk[0:131]" -type "float2" -0.04371801 -0.082549751
		 0.0600079 -0.12313563 -0.14273733 -0.25206235 -0.10708603 -0.23833191 -0.043795049
		 -0.083908051 -0.047624439 -0.098343119 0.018667668 0.10005148 0.018478185 0.081209272
		 0.12111599 0.21689518 0.3348307 0.10469206 0.30875134 0.04196173 0.091697372 0.13018928
		 -0.10180825 -0.20802894 -0.085062176 -0.15493834 -0.068160236 -0.15033828 -0.094628066
		 -0.21416891 0.13912821 0.26978037 0.34985262 0.14106376 0.12427896 0.25088704 0.12690069
		 0.27061337 -0.049259543 -0.10486532 -0.07153061 -0.11822062 -0.11227122 -0.25681657
		 -0.11338928 -0.24272962 0.076675951 0.11248644 0.10620157 0.19845094 -0.046868324
		 -0.025726303 -0.050311804 -0.013857439 0.008718431 -0.082021341 0.012355924 -0.089521959
		 -0.046036184 0.12237834 -0.041128278 0.099890023 -0.033088058 0.11103357 -0.038097799
		 0.13465568 0.014056027 -0.079856977 0.0025042295 -0.07045503 -0.00141114 -0.062829778
		 0.010166645 -0.072925009 0.019490778 -0.089877486 0.023105621 -0.096761495 -0.056837559
		 0.0080891475 -0.061069608 0.022023581 -0.089471281 -0.19538103 -0.062663317 -0.12972406
		 -7.3820353e-05 0.032418951 0.049598292 0.11243284 0.079091489 0.092909515 0.26505584
		 0.0035840869 0.06403698 0.075542718 -0.028569266 -0.042492047 -0.021406919 0.054456472
		 -0.024909765 0.071644709 -0.033127964 0.062367007 -0.029701978 0.045990482 0.010719121
		 0.072035193 0.013870865 0.24537618 -0.34842306 -0.36769789 -0.0048735142 0.0018661618
		 -0.32738596 -0.36790749 -0.28412795 -0.32306495 -0.22358835 -0.24611701 -0.18329638
		 -0.18573025 0.029774487 -0.1002178 0.07438761 0.18524091 0.15632501 0.47588465 -0.0159989
		 0.080038771 0.11228532 0.41426513 0.042601287 0.29938394 0.10276479 0.11000505 -0.12072742
		 -0.1694915 -0.17460442 -0.19110084 -0.051736951 -0.14709628 -0.2563889 -0.29978654
		 -0.29075292 -0.33545008 -0.30286065 -0.33381781 0.050271183 -0.11154257 0.036169976
		 0.12439896 0.093288153 0.14544328 0.32329443 0.097380728 0.16554791 0.28333175 0.19939798
		 0.33519244 0.19552906 0.33444673 0.14280802 0.069053441 0.36065209 0.20420446 -0.31966183
		 -0.15078668 -0.092203021 -0.25518134 0.11314201 0.19105157 0.31190348 0.066153184
		 0.35772344 0.17752503 0.37807596 0.22352828 -0.015126884 -0.087930299 -0.036023259
		 -0.10940781 -0.20745611 -0.23935311 -0.075603127 -0.21509378 -0.09192878 -0.25957713
		 0.2713916 0.050548837 0.15071726 0.027446255 0.3311885 0.12378521 -0.029466808 -0.017281733
		 -0.12321758 -0.15536891 -0.44766107 -0.15879768 -0.0541825 0.21548349 -0.078046873
		 -0.095954016 -0.10647711 -0.23354007 0.062215846 0.15020305 0.29985577 0.017052054
		 0.091661774 0.23804228 0.14211327 0.28962255 -0.044913381 -0.065713383 -0.052481443
		 -0.11916366 -0.071415573 -0.16507024 -0.097930372 -0.22951272 -0.14802748 -0.27057996
		 0.032183453 0.062585205 -0.03496787 0.1283759 0.15587342 0.46903935 -0.029838771
		 0.1064038 -0.021463782 0.069756001 0.018619597 0.080279335 0.053889036 -0.060957268
		 0.091033936 -0.104601 0.087313533 -0.098519452 0.081721604 -0.089690253 0.041225135
		 -0.11011905 -0.0084486902 0.091880381 -0.01787591 0.053760156 0.064514756 -0.068105474
		 0.077720702 -0.08359988 -0.11560494 -0.27257138 -0.050490022 -0.086741105 0.1096907
		 0.29161394 0.047606871 0.080010265;
createNode polyMapCut -n "polyMapCut9";
	rename -uid "38206199-400C-2034-F22B-B9815E9928E8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[60]" "e[108]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "5D6CA948-4983-E6A7-1C9E-7DADA6CBF8D2";
	setAttr ".uopa" yes;
	setAttr -s 136 ".uvtk[0:135]" -type "float2" 0.46635625 0.25717533 0.43922269
		 0.068864837 0.53710878 0.39662915 0.51990181 0.40294957 0.45725131 0.42455155 0.050142407
		 0.13341707 0.38672963 0.28572619 0.40393662 0.27940577 0.36344981 0.11153969 -0.28046644
		 -0.057515725 -0.29150042 -0.055675402 0.39392614 0.10034519 0.16098079 0.16998047
		 0.11192843 0.15823147 0.4827604 0.43635505 0.50888467 0.42675912 0.3447935 0.1183925
		 -0.27276576 -0.056812897 0.35062194 0.13426 0.33341491 0.14058042 0.46410409 0.44320783
		 0.075324744 0.15092319 0.52629805 0.42036289 0.19409484 0.17702048 0.39975458 0.1162127
		 0.36927825 0.12740719 -0.48484451 0.42485088 -0.48042735 0.43368077 -0.56427181 0.47720063
		 -0.56931973 0.46710968 -0.38234785 0.41863707 -0.38774806 0.40782183 -0.37856105
		 0.40322602 -0.37315273 0.4140372 -0.56678945 0.49738747 -0.55597824 0.49197915 -0.55056989
		 0.50279033 -0.5613811 0.50819868 -0.57436264 0.4822486 -0.57941067 0.47215769 -0.47186315
		 0.44990051 -0.46645886 0.46071368 0.50248849 0.40934581 0.47590762 0.41769874 0.42259294
		 0.27255297 0.40066698 0.07834056 0.40698743 0.095547557 0.65575737 -0.045089945 0.41281068
		 0.11140105 0.45112151 0.26277924 -0.39118227 0.37799627 -0.38739592 0.38556519 -0.39658293
		 0.39016098 -0.40036926 0.38259205 -0.40535745 0.3726207 -0.41295773 -0.23569278 0.0057385564
		 0.32525814 -0.4898327 0.41487956 -0.058352172 0.32336748 -0.12207687 0.31649163 -0.21333194
		 0.29620853 -0.27556646 0.27607334 -0.5455817 0.51276165 -0.50902021 -0.049545467
		 -0.47663331 -0.27770358 -0.37735969 0.42860842 -0.4562228 -0.27221733 -0.42514232
		 -0.24978848 -0.27361909 0.17864767 -0.070914835 0.42995369 -0.016541004 0.4483808
		 -0.11674416 -0.032606296 0.11964011 0.47527421 0.17515269 0.47893327 0.23046991 0.47878528
		 0.26399171 -0.13233228 0.72267181 0.052890062 0.71845651 0.03413716 -0.46421456 -0.28914681
		 -0.26893243 0.0013213158 -0.27980238 -0.0058835745 -0.28887761 -0.0097056925 -0.31366232
		 -0.18339637 -0.45400062 -0.28245908 0.63392478 0.3099075 0.019812286 -0.002846865
		 -0.25406212 0.02017799 0.49984112 -0.28956839 -0.461108 -0.29586765 -0.45848036 -0.2972151
		 -0.17651537 -0.054603145 -0.15512219 -0.036307901 0.038975 0.46264619 -0.061145663
		 -0.012414219 -0.023671508 6.4656138e-05 0.48745018 -0.27625549 -0.13793293 0.028246805
		 -0.26348582 -0.042676017 -0.46147072 0.47068503 -0.33628473 0.25020492 0.49558711
		 0.13692254 0.56707418 -0.20944846 0.48356324 0.25085485 0.22966504 0.16893525 0.3876057
		 0.083138198 0.67024159 -0.056986332 0.35712937 0.094332725 0.32758653 0.12471294
		 0.44004431 0.43087196 0.47042456 0.46041483 0.48908082 0.45356202 0.51520514 0.44396612
		 0.54350495 0.41404244 0.43001768 0.10508057 -0.36318141 0.40904903 -0.49292707 -0.27810004
		 -0.36858973 0.39823785 -0.37742457 0.38057703 -0.39617044 0.36802495 -0.57430792
		 0.45713842 -0.58938193 0.47714585 -0.58433402 0.48723677 -0.57676077 0.50237566 -0.55639291
		 0.51817 -0.36816457 0.42400855 -0.38121095 0.37300807 -0.58439881 0.4621864 -0.57135248
		 0.51318687 0.53261852 0.43756989 0.44689709 0.44952834 0.33847308 0.1011855 0.42419443
		 0.08922711 -0.29850841 -0.056986302 -0.46890882 -0.28956839 -0.25029346 0.03413716
		 0.55579227 -0.2356928;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "F5792A9B-4CA1-FFFE-C819-EB90A211F1AF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 35.5 53.499998481282795 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 40.829448699951172 53.5 ;
	setAttr ".ro" -type "double3" -23.138354670936394 86.200000096844747 -9.0686403419881507e-07 ;
	setAttr ".ps" -type "double2" 30.243255619476074 99.170227267793138 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 0.12886591255664825 -1.3762825727462769 -0.91755533218383789 -0.91753697395324707
		 -1.0353815756859307e-16 3.2277700901031494 -0.39296060800552368 -0.39295274019241333
		 -1.9401695728302002 -0.091412588953971863 -0.060943957418203354 -0.060942739248275757
		 -20.303865432739258 -153.2921142578125 360.3641357421875 360.55691528320312;
	setAttr ".prgt" 1594;
	setAttr ".ptop" 883;
createNode polyMapCut -n "polyMapCut10";
	rename -uid "C324DE4C-4AE0-997A-01AE-FB9583B91F1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[0:5]" "e[8:9]" "e[28:29]" "e[32:33]" "e[44:45]" "e[48:49]" "e[60]" "e[63]" "e[66]" "e[69]" "e[84]" "e[87]" "e[90]" "e[93]";
createNode polyMapCut -n "polyMapCut11";
	rename -uid "AA34BE1B-4701-A9DA-A752-00A0D6D10BA2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[7]" "e[15]" "e[23]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "F91D861D-401F-F194-562B-1B91AAA44951";
	setAttr ".uopa" yes;
	setAttr -s 84 ".uvtk[0:83]" -type "float2" 0.30749795 -0.4360286 0.30045021
		 -0.42287454 0.56900167 -0.17773172 0.57601941 -0.19071874 0.55445433 -0.98020351
		 0.61462986 -0.88951272 0.53867042 -0.96159643 0.52425343 -0.97090399 0.11449298 -0.39565581
		 0.066301793 -0.36322969 0.064739585 -0.34749204 0.10287681 -0.37001175 0.27931154
		 -0.42696613 0.27203131 -0.41382545 0.4088634 0.29672664 0.10639079 0.024166921 0.099535957
		 -0.0068669543 0.41223797 0.25560576 0.29152113 -0.45267501 0.14259529 -0.40473372
		 0.13088515 -0.37907928 0.1223847 -0.36600879 -0.09165436 0.03836168 -0.083977193
		 0.069319256 0.37827042 -0.91251326 0.36525446 -0.92176771 -0.1470343 0.066463634
		 -0.14927532 0.087334231 0.097805113 -0.69402903 0.33525786 -0.91246426 0.41709587
		 0.23464227 0.14749075 -0.0055696536 0.48522887 -0.5882135 0.92776918 -0.66067201
		 0.72200549 -0.61355829 -0.094134748 -0.39544451 -0.13943686 0.04569643 -0.14164259
		 0.066337012 -0.076714486 0.048295025 0.11168332 0.0029995199 0.48164281 -0.57260984
		 -0.023946509 -0.64509022 -0.23206258 -0.5980916 -0.10096388 -0.3799994 0.61847413
		 -0.85948092 0.51174831 -0.94164068 0.35331854 -0.89257681 0.10436559 -0.68416882
		 0.096025616 -0.67470342 -0.096736237 -0.36929321 -0.26386023 -0.55262983 -0.22482067
		 -0.56150997 -0.017678365 -0.60839653 0.4776524 -0.52582216 0.48131463 -0.54176515
		 0.61205196 -0.8499406 0.021707136 -0.61726779 0.984375 -0.65398282 -0.10361175 -0.35351169
		 -0.12769946 0.046928737 0.3234289 -0.88328707 0.075012982 -0.37612087 0.54184091
		 -0.95092654 0.62101507 -0.89883047 0.13587619 -0.015423376 -0.11986801 0.077871889
		 0.0734694 -0.36054939 0.31980264 -0.46174774 -0.11223522 0.05687473 0.6832245 -0.60463536
		 -0.27128512 -0.58919036 0.96689153 -0.66958648 0.41377994 0.27553189 0.14257415 0.015625032
		 0.094146937 -0.35695443 0.3480103 -0.90321994 0.56913829 -0.97088575 0.56673956 -0.14177296
		 0.1061219 -0.70327336 0.57378721 -0.15492705 0.73668718 -0.5980916 0.69746488 -0.58919036
		 0.94480348 -0.64509022 0.015625019 -0.65398282;
createNode polyPlanarProj -n "polyPlanarProj4";
	rename -uid "6EF3742D-42F1-88AF-36F0-A69395F594DA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 22.5 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.384185791015625e-07 22.5 2.384185791015625e-07 ;
	setAttr ".ro" -type "double3" 168.26164792801401 57.799999389889301 -179.99999927370496 ;
	setAttr ".ps" -type "double2" 120.85727960299677 54.725043786833027 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" -1.0361483097076416 -0.60427528619766235 -0.82851314544677734 -0.82849657535552979
		 -5.3969174072895676e-17 3.4367218017578125 -0.20344679057598114 -0.20344272255897522
		 -1.6453756093978882 0.38053244352340698 0.52174258232116699 0.5217321515083313 30.550075531005859 -49.169143676757812 292.89096069335938 293.08511352539062;
	setAttr ".prgt" 1594;
	setAttr ".ptop" 883;
createNode polyMapCut -n "polyMapCut12";
	rename -uid "CF0E5567-454E-0E0C-28D9-F381AF87A38D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[12:15]" "e[52]" "e[56]" "e[59]" "e[63]" "e[66]" "e[70]" "e[73]" "e[77]";
createNode polyMapCut -n "polyMapCut13";
	rename -uid "5753496B-480E-257E-45CF-C8BF746F2BE7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[8:11]" "e[16]" "e[20]" "e[29]" "e[33]" "e[38]" "e[42:43]" "e[47]";
createNode polyMapCut -n "polyMapCut14";
	rename -uid "66971CD2-4E4B-3ED0-A4DE-CC8837A1A8A7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[37]" "e[74]" "e[91]";
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "ABED4CF0-4F3A-48E2-558D-0993A5C7A526";
	setAttr ".uopa" yes;
	setAttr -s 84 ".uvtk[0:83]" -type "float2" -0.90224963 -0.060763285
		 -0.3521457 0.10316122 0.25154865 0.21247658 -0.39078763 0.088651717 -0.92048639 -0.065489426
		 -0.0037719011 -0.16189347 -0.92647755 -0.066690005 0.07278958 -0.32777181 0.72871304
		 -0.25719348 0.10505569 0.011826634 -0.45292228 -0.082408458 0.74704587 -0.26624021
		 0.77044129 -0.26353192 0.7520436 -0.25445721 -0.40775272 0.085997164 -0.3920359 0.091513574
		 -0.19802792 -0.23762576 -0.2211183 -0.23587359 -0.37512636 0.094425529 -0.18110219
		 -0.2348368 0.48124963 -0.10909878 0.49197137 -0.11200906 0.49109921 -0.094669864
		 0.27899024 0.21829566 0.468961 -0.11656938 0.27405322 0.21784912 -0.9460423 -0.17869931
		 -0.97368604 -0.17644042 -0.0053610206 -0.17281072 -0.33297583 0.11015131 -0.35813257
		 0.10704058 0.061102629 -0.0062240623 0.078984141 -0.010287696 -0.37771288 0.10033923
		 0.056188583 -0.012653939 0.49918246 -0.25675005 0.48816407 -0.25489867 0.47582629
		 -0.25965056 0.088851631 -0.33616349 0.071777195 -0.33780521 -0.19859962 -0.33632845
		 -0.18154024 -0.33456871 0.055779427 -0.32942805 -0.22191757 -0.33522293 0.079350352
		 0.021558374 0.099189103 0.025406361 0.055271745 -0.18922471 0.050148368 -0.19334251
		 0.12507057 0.015628397 0.073740423 -0.19182727 -0.4673602 -0.084534109 -0.48807347
		 -0.075852901 -0.014538884 -0.2976492 -0.95527196 -0.29907995 -0.47375995 -0.073706716
		 -0.014921725 -0.29534978 -0.984375 -0.3114925 -0.016003251 -0.30934629 -0.95631588
		 -0.31282777 0.054608047 -0.21023321 0.073143661 -0.21266532 0.049461007 -0.21408123
		 -0.19866414 -0.34758455 -0.22200778 -0.34655324 -0.18158968 -0.34594285 0.5 -0.27331126
		 0.47660455 -0.27601954 0.48894817 -0.27158242 0.061805069 0.015625004 0.056916475
		 0.0089236498 0.079615951 0.011389876 -0.0042021871 -0.1581056 -0.94073904 -0.070477918
		 -0.94492334 -0.1642509 0.46813059 -0.099426702 0.29702181 0.22260594 0.48041347 -0.091634259
		 -0.19795851 -0.22576223 -0.18104899 -0.22285029 -0.22102122 -0.2239328 -0.0049360394
		 -0.1764404 -0.98328888 -0.2976492 -0.015625 -0.3114925 -0.9725219 -0.16189349;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "4C49327D-4F35-3CAC-15D0-82AEE9D8DA79";
	setAttr ".sst" -type "string" "";
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
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
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
connectAttr "polyTweakUV7.out" "pCubeShape1.i";
connectAttr "polyTweakUV7.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "polyTweakUV3.out" "pCubeShape4.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCubeShape4.uvst[0].uvtw";
connectAttr "polyTweakUV5.out" "pCubeShape2.i";
connectAttr "polyTweakUV5.uvtk[0]" "pCubeShape2.uvst[0].uvtw";
connectAttr "polyTweakUV6.out" "CouchSide1Shape.i";
connectAttr "polyTweakUV6.uvtk[0]" "CouchSide1Shape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyBevel1.ip";
connectAttr "pCubeShape2.wm" "polyBevel1.mp";
connectAttr "polyCube2.out" "polyTweak1.ip";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "pCubeShape2.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polyBevel3.ip";
connectAttr "pCubeShape2.wm" "polyBevel3.mp";
connectAttr "polyCube1.out" "polyBevel4.ip";
connectAttr "pCubeShape1.wm" "polyBevel4.mp";
connectAttr "polyBevel4.out" "polyBevel5.ip";
connectAttr "pCubeShape1.wm" "polyBevel5.mp";
connectAttr "polyBevel5.out" "polyBevel6.ip";
connectAttr "pCubeShape1.wm" "polyBevel6.mp";
connectAttr "polyBevel3.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polyTweak2.out" "polySplit18.ip";
connectAttr "polySplit17.out" "polyTweak2.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polyCube4.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polySplit28.ip";
connectAttr "polySplit28.out" "polySplit29.ip";
connectAttr "polySplit29.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyAverageVertex1.ip";
connectAttr "pCubeShape4.wm" "polyAverageVertex1.mp";
connectAttr "polyAverageVertex1.out" "polyAverageVertex2.ip";
connectAttr "pCubeShape4.wm" "polyAverageVertex2.mp";
connectAttr "polyTweak7.out" "polySplit36.ip";
connectAttr "polySplit20.out" "polyTweak7.ip";
connectAttr "polyBevel6.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "polyDelEdge3.ip";
connectAttr "polyDelEdge3.out" "polyDelEdge4.ip";
connectAttr "polyDelEdge4.out" "polyDelEdge5.ip";
connectAttr "polyDelEdge5.out" "polyDelEdge6.ip";
connectAttr "polyDelEdge6.out" "polyDelEdge7.ip";
connectAttr "polyDelEdge7.out" "polySplit37.ip";
connectAttr "polySplit37.out" "polySplit38.ip";
connectAttr "polySplit38.out" "polySplit39.ip";
connectAttr "polySplit39.out" "polySplit40.ip";
connectAttr "polySplit40.out" "polySplit41.ip";
connectAttr "polySplit41.out" "polySplit42.ip";
connectAttr "polySplit42.out" "polySplit43.ip";
connectAttr "polySplit43.out" "polySplit44.ip";
connectAttr "polySplit44.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "polyTweak8.out" "polyAverageVertex3.ip";
connectAttr "pCubeShape4.wm" "polyAverageVertex3.mp";
connectAttr "polyAverageVertex2.out" "polyTweak8.ip";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyAverageVertex3.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape4.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyTweakUV3.ip";
connectAttr "polySplit36.out" "polyPlanarProj2.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyTweakUV5.ip";
connectAttr "polySurfaceShape1.o" "polyPlanarProj3.ip";
connectAttr "CouchSide1Shape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "polyTweakUV6.ip";
connectAttr "deleteComponent3.og" "polyPlanarProj4.ip";
connectAttr "pCubeShape1.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyMapCut12.ip";
connectAttr "polyMapCut12.out" "polyMapCut13.ip";
connectAttr "polyMapCut13.out" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "polyTweakUV7.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CouchSide1Shape.iog" ":initialShadingGroup.dsm" -na;
// End of Couch.ma
