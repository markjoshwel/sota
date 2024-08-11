//Maya ASCII 2024 scene
//Name: Bedframe.ma
//Last modified: Sun, Aug 11, 2024 11:00:49 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiStandardSurface" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "7F54FF7D-4AC3-BF49-EDB0-E3ADE8D27723";
createNode transform -s -n "persp";
	rename -uid "BECBE092-4685-61E8-E5F2-6CBE463B8159";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -431.85259198686038 289.47746741913943 -114.54039098405963 ;
	setAttr ".r" -type "double3" -41.738352726645445 -1559.3999999992661 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0D15DEAF-44A2-7304-5259-0DBB558BB193";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 460.22304319356192;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -105.84794786507389 -32.50285830490494 -1.4210854715202004e-14 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1FB6C168-451A-361C-89EC-C2AEAC326EA5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E44AED8D-4806-F43A-54C0-B5862B87ECC5";
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
	rename -uid "C9985435-48B4-3A30-16EE-F8A1DCBFFB45";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A9398F57-4481-E281-2413-3B8FF8428598";
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
	rename -uid "56B72AC6-49BF-0C77-31D2-7C99C5F6C0CC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6847DBEA-4511-0279-1B9C-FCB38A5E90DB";
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
createNode transform -n "trimsheet_bedframe";
	rename -uid "CBAE8BCA-4674-EB4B-647B-D9A8E3FF352F";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "trimsheet_bedframeShape" -p "trimsheet_bedframe";
	rename -uid "191712AF-4452-023E-323A-45B77BAA4A9C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 121 ".uvst[0].uvsp[0:120]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.1
		 0.1 0.1 0.2 0.1 0.30000001 0.1 0.40000001 0.1 0.5 0.1 0.60000002 0.1 0.69999999 0.1
		 0.80000001 0.1 0.90000004 0.1 1 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000001
		 0.2 0.5 0.2 0.60000002 0.2 0.69999999 0.2 0.80000001 0.2 0.90000004 0.2 1 0.2 0 0.30000001
		 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001 0.30000001 0.5 0.30000001
		 0.60000002 0.30000001 0.69999999 0.30000001 0.80000001 0.30000001 0.90000004 0.30000001
		 1 0.30000001 0 0.40000001 0.1 0.40000001 0.2 0.40000001 0.30000001 0.40000001 0.40000001
		 0.40000001 0.5 0.40000001 0.60000002 0.40000001 0.69999999 0.40000001 0.80000001
		 0.40000001 0.90000004 0.40000001 1 0.40000001 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5
		 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.69999999 0.5 0.80000001 0.5 0.90000004 0.5
		 1 0.5 0 0.60000002 0.1 0.60000002 0.2 0.60000002 0.30000001 0.60000002 0.40000001
		 0.60000002 0.5 0.60000002 0.60000002 0.60000002 0.69999999 0.60000002 0.80000001
		 0.60000002 0.90000004 0.60000002 1 0.60000002 0 0.69999999 0.1 0.69999999 0.2 0.69999999
		 0.30000001 0.69999999 0.40000001 0.69999999 0.5 0.69999999 0.60000002 0.69999999
		 0.69999999 0.69999999 0.80000001 0.69999999 0.90000004 0.69999999 1 0.69999999 0
		 0.80000001 0.1 0.80000001 0.2 0.80000001 0.30000001 0.80000001 0.40000001 0.80000001
		 0.5 0.80000001 0.60000002 0.80000001 0.69999999 0.80000001 0.80000001 0.80000001
		 0.90000004 0.80000001 1 0.80000001 0 0.90000004 0.1 0.90000004 0.2 0.90000004 0.30000001
		 0.90000004 0.40000001 0.90000004 0.5 0.90000004 0.60000002 0.90000004 0.69999999
		 0.90000004 0.80000001 0.90000004 0.90000004 0.90000004 1 0.90000004 0 1 0.1 1 0.2
		 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 121 ".vt[0:120]"  -0.5 0 0.5 -0.40000001 0 0.5 -0.30000001 0 0.5
		 -0.19999999 0 0.5 -0.099999994 0 0.5 0 0 0.5 0.10000002 0 0.5 0.19999999 0 0.5 0.30000001 0 0.5
		 0.40000004 0 0.5 0.5 0 0.5 -0.5 0 0.40000001 -0.40000001 0 0.40000001 -0.30000001 0 0.40000001
		 -0.19999999 0 0.40000001 -0.099999994 0 0.40000001 0 0 0.40000001 0.10000002 0 0.40000001
		 0.19999999 0 0.40000001 0.30000001 0 0.40000001 0.40000004 0 0.40000001 0.5 0 0.40000001
		 -0.5 0 0.30000001 -0.40000001 0 0.30000001 -0.30000001 0 0.30000001 -0.19999999 0 0.30000001
		 -0.099999994 0 0.30000001 0 0 0.30000001 0.10000002 0 0.30000001 0.19999999 0 0.30000001
		 0.30000001 0 0.30000001 0.40000004 0 0.30000001 0.5 0 0.30000001 -0.5 0 0.19999999
		 -0.40000001 0 0.19999999 -0.30000001 0 0.19999999 -0.19999999 0 0.19999999 -0.099999994 0 0.19999999
		 0 0 0.19999999 0.10000002 0 0.19999999 0.19999999 0 0.19999999 0.30000001 0 0.19999999
		 0.40000004 0 0.19999999 0.5 0 0.19999999 -0.5 0 0.099999994 -0.40000001 0 0.099999994
		 -0.30000001 0 0.099999994 -0.19999999 0 0.099999994 -0.099999994 0 0.099999994 0 0 0.099999994
		 0.10000002 0 0.099999994 0.19999999 0 0.099999994 0.30000001 0 0.099999994 0.40000004 0 0.099999994
		 0.5 0 0.099999994 -0.5 0 0 -0.40000001 0 0 -0.30000001 0 0 -0.19999999 0 0 -0.099999994 0 0
		 0 0 0 0.10000002 0 0 0.19999999 0 0 0.30000001 0 0 0.40000004 0 0 0.5 0 0 -0.5 0 -0.10000002
		 -0.40000001 0 -0.10000002 -0.30000001 0 -0.10000002 -0.19999999 0 -0.10000002 -0.099999994 0 -0.10000002
		 0 0 -0.10000002 0.10000002 0 -0.10000002 0.19999999 0 -0.10000002 0.30000001 0 -0.10000002
		 0.40000004 0 -0.10000002 0.5 0 -0.10000002 -0.5 0 -0.19999999 -0.40000001 0 -0.19999999
		 -0.30000001 0 -0.19999999 -0.19999999 0 -0.19999999 -0.099999994 0 -0.19999999 0 0 -0.19999999
		 0.10000002 0 -0.19999999 0.19999999 0 -0.19999999 0.30000001 0 -0.19999999 0.40000004 0 -0.19999999
		 0.5 0 -0.19999999 -0.5 0 -0.30000001 -0.40000001 0 -0.30000001 -0.30000001 0 -0.30000001
		 -0.19999999 0 -0.30000001 -0.099999994 0 -0.30000001 0 0 -0.30000001 0.10000002 0 -0.30000001
		 0.19999999 0 -0.30000001 0.30000001 0 -0.30000001 0.40000004 0 -0.30000001 0.5 0 -0.30000001
		 -0.5 0 -0.40000004 -0.40000001 0 -0.40000004 -0.30000001 0 -0.40000004 -0.19999999 0 -0.40000004
		 -0.099999994 0 -0.40000004 0 0 -0.40000004 0.10000002 0 -0.40000004 0.19999999 0 -0.40000004
		 0.30000001 0 -0.40000004 0.40000004 0 -0.40000004 0.5 0 -0.40000004 -0.5 0 -0.5 -0.40000001 0 -0.5
		 -0.30000001 0 -0.5 -0.19999999 0 -0.5 -0.099999994 0 -0.5 0 0 -0.5 0.10000002 0 -0.5
		 0.19999999 0 -0.5 0.30000001 0 -0.5 0.40000004 0 -0.5 0.5 0 -0.5;
	setAttr -s 220 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 12 1 12 11 1 11 0 0 1 2 0 2 13 1 13 12 1 2 3 0
		 3 14 1 14 13 1 3 4 0 4 15 1 15 14 1 4 5 0 5 16 1 16 15 1 5 6 0 6 17 1 17 16 1 6 7 0
		 7 18 1 18 17 1 7 8 0 8 19 1 19 18 1 8 9 0 9 20 1 20 19 1 9 10 0 10 21 0 21 20 1 12 23 1
		 23 22 1 22 11 0 13 24 1 24 23 1 14 25 1 25 24 1 15 26 1 26 25 1 16 27 1 27 26 1 17 28 1
		 28 27 1 18 29 1 29 28 1 19 30 1 30 29 1 20 31 1 31 30 1 21 32 0 32 31 1 23 34 1 34 33 1
		 33 22 0 24 35 1 35 34 1 25 36 1 36 35 1 26 37 1 37 36 1 27 38 1 38 37 1 28 39 1 39 38 1
		 29 40 1 40 39 1 30 41 1 41 40 1 31 42 1 42 41 1 32 43 0 43 42 1 34 45 1 45 44 1 44 33 0
		 35 46 1 46 45 1 36 47 1 47 46 1 37 48 1 48 47 1 38 49 1 49 48 1 39 50 1 50 49 1 40 51 1
		 51 50 1 41 52 1 52 51 1 42 53 1 53 52 1 43 54 0 54 53 1 45 56 1 56 55 1 55 44 0 46 57 1
		 57 56 1 47 58 1 58 57 1 48 59 1 59 58 1 49 60 1 60 59 1 50 61 1 61 60 1 51 62 1 62 61 1
		 52 63 1 63 62 1 53 64 1 64 63 1 54 65 0 65 64 1 56 67 1 67 66 1 66 55 0 57 68 1 68 67 1
		 58 69 1 69 68 1 59 70 1 70 69 1 60 71 1 71 70 1 61 72 1 72 71 1 62 73 1 73 72 1 63 74 1
		 74 73 1 64 75 1 75 74 1 65 76 0 76 75 1 67 78 1 78 77 1 77 66 0 68 79 1 79 78 1 69 80 1
		 80 79 1 70 81 1 81 80 1 71 82 1 82 81 1 72 83 1 83 82 1 73 84 1 84 83 1 74 85 1 85 84 1
		 75 86 1 86 85 1 76 87 0 87 86 1 78 89 1 89 88 1 88 77 0 79 90 1 90 89 1 80 91 1 91 90 1
		 81 92 1 92 91 1;
	setAttr ".ed[166:219]" 82 93 1 93 92 1 83 94 1 94 93 1 84 95 1 95 94 1 85 96 1
		 96 95 1 86 97 1 97 96 1 87 98 0 98 97 1 89 100 1 100 99 1 99 88 0 90 101 1 101 100 1
		 91 102 1 102 101 1 92 103 1 103 102 1 93 104 1 104 103 1 94 105 1 105 104 1 95 106 1
		 106 105 1 96 107 1 107 106 1 97 108 1 108 107 1 98 109 0 109 108 1 100 111 1 111 110 0
		 110 99 0 101 112 1 112 111 0 102 113 1 113 112 0 103 114 1 114 113 0 104 115 1 115 114 0
		 105 116 1 116 115 0 106 117 1 117 116 0 107 118 1 118 117 0 108 119 1 119 118 0 109 120 0
		 120 119 0;
	setAttr -s 121 ".n[0:120]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0
		 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0
		 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0
		 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 12 11
		f 4 4 5 6 -2
		mu 0 4 1 2 13 12
		f 4 7 8 9 -6
		mu 0 4 2 3 14 13
		f 4 10 11 12 -9
		mu 0 4 3 4 15 14
		f 4 13 14 15 -12
		mu 0 4 4 5 16 15
		f 4 16 17 18 -15
		mu 0 4 5 6 17 16
		f 4 19 20 21 -18
		mu 0 4 6 7 18 17
		f 4 22 23 24 -21
		mu 0 4 7 8 19 18
		f 4 25 26 27 -24
		mu 0 4 8 9 20 19
		f 4 28 29 30 -27
		mu 0 4 9 10 21 20
		f 4 -3 31 32 33
		mu 0 4 11 12 23 22
		f 4 -7 34 35 -32
		mu 0 4 12 13 24 23
		f 4 -10 36 37 -35
		mu 0 4 13 14 25 24
		f 4 -13 38 39 -37
		mu 0 4 14 15 26 25
		f 4 -16 40 41 -39
		mu 0 4 15 16 27 26
		f 4 -19 42 43 -41
		mu 0 4 16 17 28 27
		f 4 -22 44 45 -43
		mu 0 4 17 18 29 28
		f 4 -25 46 47 -45
		mu 0 4 18 19 30 29
		f 4 -28 48 49 -47
		mu 0 4 19 20 31 30
		f 4 -31 50 51 -49
		mu 0 4 20 21 32 31
		f 4 -33 52 53 54
		mu 0 4 22 23 34 33
		f 4 -36 55 56 -53
		mu 0 4 23 24 35 34
		f 4 -38 57 58 -56
		mu 0 4 24 25 36 35
		f 4 -40 59 60 -58
		mu 0 4 25 26 37 36
		f 4 -42 61 62 -60
		mu 0 4 26 27 38 37
		f 4 -44 63 64 -62
		mu 0 4 27 28 39 38
		f 4 -46 65 66 -64
		mu 0 4 28 29 40 39
		f 4 -48 67 68 -66
		mu 0 4 29 30 41 40
		f 4 -50 69 70 -68
		mu 0 4 30 31 42 41
		f 4 -52 71 72 -70
		mu 0 4 31 32 43 42
		f 4 -54 73 74 75
		mu 0 4 33 34 45 44
		f 4 -57 76 77 -74
		mu 0 4 34 35 46 45
		f 4 -59 78 79 -77
		mu 0 4 35 36 47 46
		f 4 -61 80 81 -79
		mu 0 4 36 37 48 47
		f 4 -63 82 83 -81
		mu 0 4 37 38 49 48
		f 4 -65 84 85 -83
		mu 0 4 38 39 50 49
		f 4 -67 86 87 -85
		mu 0 4 39 40 51 50
		f 4 -69 88 89 -87
		mu 0 4 40 41 52 51
		f 4 -71 90 91 -89
		mu 0 4 41 42 53 52
		f 4 -73 92 93 -91
		mu 0 4 42 43 54 53
		f 4 -75 94 95 96
		mu 0 4 44 45 56 55
		f 4 -78 97 98 -95
		mu 0 4 45 46 57 56
		f 4 -80 99 100 -98
		mu 0 4 46 47 58 57
		f 4 -82 101 102 -100
		mu 0 4 47 48 59 58
		f 4 -84 103 104 -102
		mu 0 4 48 49 60 59
		f 4 -86 105 106 -104
		mu 0 4 49 50 61 60
		f 4 -88 107 108 -106
		mu 0 4 50 51 62 61
		f 4 -90 109 110 -108
		mu 0 4 51 52 63 62
		f 4 -92 111 112 -110
		mu 0 4 52 53 64 63
		f 4 -94 113 114 -112
		mu 0 4 53 54 65 64
		f 4 -96 115 116 117
		mu 0 4 55 56 67 66
		f 4 -99 118 119 -116
		mu 0 4 56 57 68 67
		f 4 -101 120 121 -119
		mu 0 4 57 58 69 68
		f 4 -103 122 123 -121
		mu 0 4 58 59 70 69
		f 4 -105 124 125 -123
		mu 0 4 59 60 71 70
		f 4 -107 126 127 -125
		mu 0 4 60 61 72 71
		f 4 -109 128 129 -127
		mu 0 4 61 62 73 72
		f 4 -111 130 131 -129
		mu 0 4 62 63 74 73
		f 4 -113 132 133 -131
		mu 0 4 63 64 75 74
		f 4 -115 134 135 -133
		mu 0 4 64 65 76 75
		f 4 -117 136 137 138
		mu 0 4 66 67 78 77
		f 4 -120 139 140 -137
		mu 0 4 67 68 79 78
		f 4 -122 141 142 -140
		mu 0 4 68 69 80 79
		f 4 -124 143 144 -142
		mu 0 4 69 70 81 80
		f 4 -126 145 146 -144
		mu 0 4 70 71 82 81
		f 4 -128 147 148 -146
		mu 0 4 71 72 83 82
		f 4 -130 149 150 -148
		mu 0 4 72 73 84 83
		f 4 -132 151 152 -150
		mu 0 4 73 74 85 84
		f 4 -134 153 154 -152
		mu 0 4 74 75 86 85
		f 4 -136 155 156 -154
		mu 0 4 75 76 87 86
		f 4 -138 157 158 159
		mu 0 4 77 78 89 88
		f 4 -141 160 161 -158
		mu 0 4 78 79 90 89
		f 4 -143 162 163 -161
		mu 0 4 79 80 91 90
		f 4 -145 164 165 -163
		mu 0 4 80 81 92 91
		f 4 -147 166 167 -165
		mu 0 4 81 82 93 92
		f 4 -149 168 169 -167
		mu 0 4 82 83 94 93
		f 4 -151 170 171 -169
		mu 0 4 83 84 95 94
		f 4 -153 172 173 -171
		mu 0 4 84 85 96 95
		f 4 -155 174 175 -173
		mu 0 4 85 86 97 96
		f 4 -157 176 177 -175
		mu 0 4 86 87 98 97
		f 4 -159 178 179 180
		mu 0 4 88 89 100 99
		f 4 -162 181 182 -179
		mu 0 4 89 90 101 100
		f 4 -164 183 184 -182
		mu 0 4 90 91 102 101
		f 4 -166 185 186 -184
		mu 0 4 91 92 103 102
		f 4 -168 187 188 -186
		mu 0 4 92 93 104 103
		f 4 -170 189 190 -188
		mu 0 4 93 94 105 104
		f 4 -172 191 192 -190
		mu 0 4 94 95 106 105
		f 4 -174 193 194 -192
		mu 0 4 95 96 107 106
		f 4 -176 195 196 -194
		mu 0 4 96 97 108 107
		f 4 -178 197 198 -196
		mu 0 4 97 98 109 108
		f 4 -180 199 200 201
		mu 0 4 99 100 111 110
		f 4 -183 202 203 -200
		mu 0 4 100 101 112 111
		f 4 -185 204 205 -203
		mu 0 4 101 102 113 112
		f 4 -187 206 207 -205
		mu 0 4 102 103 114 113
		f 4 -189 208 209 -207
		mu 0 4 103 104 115 114
		f 4 -191 210 211 -209
		mu 0 4 104 105 116 115
		f 4 -193 212 213 -211
		mu 0 4 105 106 117 116
		f 4 -195 214 215 -213
		mu 0 4 106 107 118 117
		f 4 -197 216 217 -215
		mu 0 4 107 108 119 118
		f 4 -199 218 219 -217
		mu 0 4 108 109 120 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "aiSkyDomeLight1";
	rename -uid "AA59433D-4D4A-1F5D-8DA0-CFBAC8AF4B07";
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "FE983794-4F38-7E60-EE48-50A6AC7A09BD";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode transform -n "bed";
	rename -uid "065E064B-43FA-D85C-2596-BDA97CC0E45A";
createNode transform -n "bedframe_head" -p "bed";
	rename -uid "5CF80D24-4E35-37E8-93E5-D1B5FCACA5F7";
	setAttr ".t" -type "double3" 0 1.5674223972530614 0 ;
	setAttr ".s" -type "double3" 1 85 164 ;
	setAttr ".rp" -type "double3" -0.5 -42.500001437780405 -75.999885559082031 ;
	setAttr ".sp" -type "double3" -0.5 -0.50000001691506324 -0.46341393633586597 ;
	setAttr ".spt" -type "double3" 0 -42.000001420865338 -75.536471622746163 ;
createNode mesh -n "bedframe_headShape" -p "bedframe_head";
	rename -uid "9750E2C4-47D7-2274-C40A-E48AC0D47C77";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49788897812296451 0.050460770726203918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "frame_and_drawers" -p "bed";
	rename -uid "4EC2E0AF-496B-C22B-4FFC-BA9A60556719";
	setAttr ".t" -type "double3" -105.49999913638324 -19.432581061052243 0 ;
	setAttr ".s" -type "double3" 210 43 155 ;
	setAttr ".rp" -type "double3" 104.99999913638324 -21.499997979475097 77.5 ;
	setAttr ".sp" -type "double3" 0.49999999588753946 -0.49999995301104877 0.49999999999999917 ;
	setAttr ".spt" -type "double3" 104.4999991404957 -20.999998026464048 77 ;
createNode transform -n "drawer" -p "frame_and_drawers";
	rename -uid "0C05340E-4349-EF35-2F96-25B7059DB92D";
	setAttr ".t" -type "double3" -0.0016566532212107313 0 4.1486445639948855e-08 ;
	setAttr ".rp" -type "double3" -0.0034885265966495549 -0.10791991214588254 0.49999995851355344 ;
	setAttr ".sp" -type "double3" -0.0034885265966495549 -0.10791991214588254 0.49999995851355344 ;
createNode mesh -n "drawerShape" -p "drawer";
	rename -uid "BD578541-4D94-20C8-42FA-1B98D058465D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.36041229963302612 0.10215525329113007 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.4901161e-08 0 8.9406967e-08 
		1.4901161e-08 0 8.9406967e-08 1.4901161e-08 0 8.9406967e-08 1.4901161e-08 0 8.9406967e-08 
		1.4901161e-08 0 8.9406967e-08 1.4901161e-08 0 8.9406967e-08 1.4901161e-08 0 8.9406967e-08 
		1.4901161e-08 0 8.9406967e-08;
createNode transform -n "polySurface2" -p "frame_and_drawers";
	rename -uid "B9CBF1C0-4A0F-E20C-A8E9-1F8BA5F08F7C";
	setAttr ".t" -type "double3" -0.0016566532212107313 0 0 ;
createNode transform -n "polySurface3" -p "polySurface2";
	rename -uid "2972644A-4FB5-7A77-23F6-C5BE461047EE";
createNode mesh -n "polySurfaceShape9" -p "polySurface3";
	rename -uid "B1F322CB-46EC-EF01-BBFD-3AA1F5CBB1F0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.30519251525402069 0.10013640020042658 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[12]" -type "float3" 0 -0.038326763 0 ;
	setAttr ".pt[19]" -type "float3" 0 -0.038326763 0 ;
	setAttr ".pt[20]" -type "float3" 0 -0.038326763 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.038326763 0 ;
createNode transform -n "polySurface4" -p "polySurface2";
	rename -uid "3FB70E43-4A86-2D9B-112C-CFA734115910";
createNode mesh -n "polySurfaceShape10" -p "polySurface4";
	rename -uid "8CF618D4-4545-FA51-7621-26AEC3044CE7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.18707052618265152 0.10013640020042658 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.0070961085 -3.5527137e-15 
		-0.0053358506 0.0070961085 -3.5527137e-15 0.0053358506 0 0 0.0053358506 0 0 -0.0053358506 
		0.0070961085 -3.5527137e-15 -0.0053358506 0.0070961085 -3.5527137e-15 0.0053358506 
		0.0076190718 0 0.0053358506 0 0 0.0053358506 0 0 -0.0053358506 0.0076190718 0 -0.0053358506 
		0.0076190718 0 -0.0053358506 0.0076190718 0 0.0053358506;
createNode transform -n "polySurface5" -p "polySurface2";
	rename -uid "D9594186-41D3-ED38-838B-9B8261ADA932";
createNode mesh -n "polySurfaceShape11" -p "polySurface5";
	rename -uid "F46AF746-44D0-39DB-E514-169690AADDC4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.36902423202991486 0.10013640020042658 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" -0.0076680062 0 0 ;
	setAttr ".pt[1]" -type "float3" -0.0076680062 0 0 ;
	setAttr ".pt[2]" -type "float3" -0.0076680067 0 0 ;
	setAttr ".pt[3]" -type "float3" -0.0076680067 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.0076680062 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.0076680062 0 0 ;
	setAttr ".pt[8]" -type "float3" -0.0076680067 0 0 ;
	setAttr ".pt[9]" -type "float3" -0.0076680067 0 0 ;
createNode transform -n "transform2" -p "polySurface2";
	rename -uid "E13E7816-49EB-C41E-7022-9B88D85C4878";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform2";
	rename -uid "A52B0078-420A-F99E-094A-FF9DC88CE486";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.30519258230924606 0.10013640020042658 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt";
	setAttr ".pt[2]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[4]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[8]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[11]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[12]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[13]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[17]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[18]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[19]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[20]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[21]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[22]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[32]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[33]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[34]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
	setAttr ".pt[35]" -type "float3" -1.8626451e-08 2.9802322e-08 0 ;
createNode transform -n "transform1" -p "frame_and_drawers";
	rename -uid "DFF08D26-4476-EA1E-19D7-6E9D44CBA2DB";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform1";
	rename -uid "90C939BD-49B1-5BF3-0A4A-678DABB5A247";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "drawer1" -p "frame_and_drawers";
	rename -uid "1BC4A814-4472-5145-D4F0-429B42027FD1";
	setAttr ".t" -type "double3" 0.50183152698335187 5.5511151231257827e-17 4.1486445693848393e-08 ;
	setAttr ".rp" -type "double3" -0.50000011310381098 -0.10791991214588254 0.49999995851355344 ;
	setAttr ".sp" -type "double3" -0.50000011310381098 -0.10791991214588254 0.49999995851355344 ;
createNode mesh -n "drawer1Shape" -p "drawer1";
	rename -uid "1C0DD990-4ECD-FABB-3608-BBAC95E73FC9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:12]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:12]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.36487194895744324 0.10179328639060259 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.47573581 0.043263551
		 0.24928603 0.043263551 0.23799187 0.16839959 0.46291661 0.19723506 0.47573581 0.1971015
		 0.24928603 0.1971015 0.2126704 0.1971015 0.45681918 0.16425721 0.27292481 0.16425721
		 0.27292481 0.039329268 0.45681918 0.039329268 0.46291661 0.0063515101 0.24408948
		 0.16425721 0.45681918 0.1930926 0.27292481 0.010493929 0.48565453 0.039329268 0.47573581
		 0.006647896 0.51235145 0.1971015 0.21267043 0.043263551 0.23799187 0.03518685 0.45681918
		 0.010493929 0.24408948 0.039329268 0.48565453 0.16425721 0.27292481 0.1930926 0.49175203
		 0.03518685 0.2668272 0.0063515101 0.49175203 0.16839959 0.2668272 0.19723485 0.51235145
		 0.043263551 0.249286 0.006647896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.50000012 -0.49999997 0.49999997 -0.0034886003 -0.49999997 0.49999997
		 -0.0034885406 -0.1079199 0.49999997 -0.50000012 -0.1079199 0.49999997 -0.50000012 -0.49999997 0.04300797
		 -0.0034886003 -0.49999997 0.04300797 -0.0034885406 -0.1079199 0.04300797 -0.50000012 -0.1079199 0.04300797
		 -0.018928111 -0.1079199 0.48578936 -0.48456091 -0.1079199 0.48578936 -0.018928111 -0.1079199 0.057218615
		 -0.48456091 -0.1079199 0.057218615 -0.018928111 -0.46449509 0.48578936 -0.48456091 -0.46449509 0.48578936
		 -0.018928111 -0.46449509 0.057218615 -0.48456091 -0.46449509 0.057218615;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 6 7 0 4 7 0 2 8 0 3 9 0 8 9 0 6 10 0 8 10 0 7 11 0 10 11 0 9 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 12 14 0 11 15 0 14 15 0 13 15 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 0 1 2 -4
		mu 0 4 0 1 29 16
		f 4 -1 4 6 -6
		mu 0 4 1 0 4 5
		f 4 -2 5 8 -8
		mu 0 4 18 1 5 6
		f 4 -23 24 26 -28
		mu 0 4 7 8 9 10
		f 4 3 9 -12 -5
		mu 0 4 0 28 17 4
		f 4 -3 12 14 -14
		mu 0 4 3 27 23 13
		f 4 7 15 -17 -13
		mu 0 4 2 19 21 12
		f 4 10 17 -19 -16
		mu 0 4 25 11 20 14
		f 4 -10 13 19 -18
		mu 0 4 24 26 22 15
		f 4 -15 20 22 -22
		mu 0 4 13 23 8 7
		f 4 16 23 -25 -21
		mu 0 4 12 21 9 8
		f 4 18 25 -27 -24
		mu 0 4 14 20 10 9
		f 4 -20 21 27 -26
		mu 0 4 15 22 7 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "drawer2" -p "frame_and_drawers";
	rename -uid "E32C4A43-4F29-027A-81FD-0D9882195345";
	setAttr ".t" -type "double3" 0.0053199404761905544 -3.5527136788005009e-15 -0.99999995851355428 ;
	setAttr ".r" -type "double3" 0 -180 0 ;
	setAttr ".rp" -type "double3" -0.0034885265966495549 -0.10791991214588254 0.49999995851355344 ;
	setAttr ".sp" -type "double3" -0.0034885265966495549 -0.10791991214588254 0.49999995851355344 ;
createNode mesh -n "drawer2Shape" -p "drawer2";
	rename -uid "88890530-4B15-198B-807C-78BCDD61CF51";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:12]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.47573581 0.043263551
		 0.24928603 0.043263551 0.23799187 0.16839959 0.46291661 0.19723506 0.47573581 0.1971015
		 0.24928603 0.1971015 0.2126704 0.1971015 0.45681918 0.16425721 0.27292481 0.16425721
		 0.27292481 0.039329268 0.45681918 0.039329268 0.46291661 0.0063515101 0.24408948
		 0.16425721 0.45681918 0.1930926 0.27292481 0.010493929 0.48565453 0.039329268 0.47573581
		 0.006647896 0.51235145 0.1971015 0.21267043 0.043263551 0.23799187 0.03518685 0.45681918
		 0.010493929 0.24408948 0.039329268 0.48565453 0.16425721 0.27292481 0.1930926 0.49175203
		 0.03518685 0.2668272 0.0063515101 0.49175203 0.16839959 0.2668272 0.19723485 0.51235145
		 0.043263551 0.249286 0.006647896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.50000012 -0.49999997 0.49999997 -0.0034886003 -0.49999997 0.49999997
		 -0.0034885406 -0.1079199 0.49999997 -0.50000012 -0.1079199 0.49999997 -0.50000012 -0.49999997 0.04300797
		 -0.0034886003 -0.49999997 0.04300797 -0.0034885406 -0.1079199 0.04300797 -0.50000012 -0.1079199 0.04300797
		 -0.018928111 -0.1079199 0.48578936 -0.48456091 -0.1079199 0.48578936 -0.018928111 -0.1079199 0.057218615
		 -0.48456091 -0.1079199 0.057218615 -0.018928111 -0.46449509 0.48578936 -0.48456091 -0.46449509 0.48578936
		 -0.018928111 -0.46449509 0.057218615 -0.48456091 -0.46449509 0.057218615;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 6 7 0 4 7 0 2 8 0 3 9 0 8 9 0 6 10 0 8 10 0 7 11 0 10 11 0 9 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 12 14 0 11 15 0 14 15 0 13 15 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 0 1 2 -4
		mu 0 4 0 1 29 16
		f 4 -1 4 6 -6
		mu 0 4 1 0 4 5
		f 4 -2 5 8 -8
		mu 0 4 18 1 5 6
		f 4 -23 24 26 -28
		mu 0 4 7 8 9 10
		f 4 3 9 -12 -5
		mu 0 4 0 28 17 4
		f 4 -3 12 14 -14
		mu 0 4 3 27 23 13
		f 4 7 15 -17 -13
		mu 0 4 2 19 21 12
		f 4 10 17 -19 -16
		mu 0 4 25 11 20 14
		f 4 -10 13 19 -18
		mu 0 4 24 26 22 15
		f 4 -15 20 22 -22
		mu 0 4 13 23 8 7
		f 4 16 23 -25 -21
		mu 0 4 12 21 9 8
		f 4 18 25 -27 -24
		mu 0 4 14 20 10 9
		f 4 -20 21 27 -26
		mu 0 4 15 22 7 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "drawer3" -p "frame_and_drawers";
	rename -uid "00C2632F-4815-29C5-550E-99BFF00BFAF4";
	setAttr ".t" -type "double3" 0.49485488164992558 -3.4972025275692431e-15 -0.99999995851355405 ;
	setAttr ".r" -type "double3" 0 -180 0 ;
	setAttr ".rp" -type "double3" -0.50000011310381098 -0.10791991214588254 0.49999995851355344 ;
	setAttr ".sp" -type "double3" -0.50000011310381098 -0.10791991214588254 0.49999995851355344 ;
createNode mesh -n "drawer3Shape" -p "drawer3";
	rename -uid "6180237F-43D4-72BC-46D6-69929F2461E6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:12]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:12]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.23097821325063705 0.12018252722918987 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.47573581 0.043263551
		 0.24928603 0.043263551 0.23799187 0.16839959 0.46291661 0.19723506 0.47573581 0.1971015
		 0.24928603 0.1971015 0.2126704 0.1971015 0.45681918 0.16425721 0.27292481 0.16425721
		 0.27292481 0.039329268 0.45681918 0.039329268 0.46291661 0.0063515101 0.24408948
		 0.16425721 0.45681918 0.1930926 0.27292481 0.010493929 0.48565453 0.039329268 0.47573581
		 0.006647896 0.51235145 0.1971015 0.21267043 0.043263551 0.23799187 0.03518685 0.45681918
		 0.010493929 0.24408948 0.039329268 0.48565453 0.16425721 0.27292481 0.1930926 0.49175203
		 0.03518685 0.2668272 0.0063515101 0.49175203 0.16839959 0.2668272 0.19723485 0.51235145
		 0.043263551 0.249286 0.006647896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr ".pt[2]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr ".pt[5]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr ".pt[6]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr -s 16 ".vt[0:15]"  -0.50000012 -0.49999997 0.49999997 -0.0034886003 -0.49999997 0.49999997
		 -0.0034885406 -0.1079199 0.49999997 -0.50000012 -0.1079199 0.49999997 -0.50000012 -0.49999997 0.04300797
		 -0.0034886003 -0.49999997 0.04300797 -0.0034885406 -0.1079199 0.04300797 -0.50000012 -0.1079199 0.04300797
		 -0.018928111 -0.1079199 0.48578936 -0.48456091 -0.1079199 0.48578936 -0.018928111 -0.1079199 0.057218615
		 -0.48456091 -0.1079199 0.057218615 -0.018928111 -0.46449509 0.48578936 -0.48456091 -0.46449509 0.48578936
		 -0.018928111 -0.46449509 0.057218615 -0.48456091 -0.46449509 0.057218615;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 6 7 0 4 7 0 2 8 0 3 9 0 8 9 0 6 10 0 8 10 0 7 11 0 10 11 0 9 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 12 14 0 11 15 0 14 15 0 13 15 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 0 1 2 -4
		mu 0 4 0 1 29 16
		f 4 -1 4 6 -6
		mu 0 4 1 0 4 5
		f 4 -2 5 8 -8
		mu 0 4 18 1 5 6
		f 4 -23 24 26 -28
		mu 0 4 7 8 9 10
		f 4 3 9 -12 -5
		mu 0 4 0 28 17 4
		f 4 -3 12 14 -14
		mu 0 4 3 27 23 13
		f 4 7 15 -17 -13
		mu 0 4 2 19 21 12
		f 4 10 17 -19 -16
		mu 0 4 25 11 20 14
		f 4 -10 13 19 -18
		mu 0 4 24 26 22 15
		f 4 -15 20 22 -22
		mu 0 4 13 23 8 7
		f 4 16 23 -25 -21
		mu 0 4 12 21 9 8
		f 4 18 25 -27 -24
		mu 0 4 14 20 10 9
		f 4 -20 21 27 -26
		mu 0 4 15 22 7 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mattress_and_blankets" -p "bed";
	rename -uid "83D41BA4-4DF4-475F-5EA1-939DA7200361";
	setAttr ".t" -type "double3" -109.82279968261719 0 0 ;
	setAttr ".s" -type "double3" 211.80748656211318 45.87200809396041 149.8813122803451 ;
createNode mesh -n "mattress_and_blanketsShape" -p "mattress_and_blankets";
	rename -uid "F25A0CDA-4040-ADD7-5874-B1BF126A06C7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.70997059345245361 0.51817238330841064 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "cushion_L" -p "bed";
	rename -uid "BEAA8AA5-437B-116F-5906-72B5B42FB18F";
	setAttr ".t" -type "double3" -31.616318743805493 39.916636353581872 -37.458211898803711 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 8.858712636122517 36.120506700118618 49.312726046496756 ;
	setAttr ".rp" -type "double3" -2.8877505759842421 -25.223299817139132 22.76884651184082 ;
	setAttr ".rpt" -type "double3" -9.9918652077071712 -9.9918652077071677 0 ;
	setAttr ".sp" -type "double3" 0.65732632607276387 -0.49999996998894636 0.49999999275859475 ;
	setAttr ".spt" -type "double3" -3.5450769020570352 -24.723299847149452 22.268846519082224 ;
createNode mesh -n "cushion_LShape" -p "cushion_L";
	rename -uid "3CDAA0F7-41E3-AE22-5270-5C89C6A2DB3E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.756940096616745 0.25716486573219299 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "cushion_R" -p "bed";
	rename -uid "0200C551-4A18-51F7-FF66-B6BBCB8E0019";
	setAttr ".t" -type "double3" 4.5041923522941829 51.562768822758883 35.121258735656738 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 8.858712636122517 36.120506700118618 49.312726046496756 ;
	setAttr ".rp" -type "double3" -10.925716350520368 10.897210284178481 -20.431759834289554 ;
	setAttr ".rpt" -type "double3" -38.074409534488652 -54.150341083560903 0 ;
	setAttr ".sp" -type "double3" -0.25002512607393723 0.50000012417358275 -0.45260682051276657 ;
	setAttr ".spt" -type "double3" -10.67569122444643 10.397210160004899 -19.979153013776788 ;
createNode mesh -n "cushion_RShape" -p "cushion_R";
	rename -uid "D97757EC-41DF-0819-A5FB-0DA88D4FED26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.30073191225528717 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape8" -p "cushion_R";
	rename -uid "A16FE368-44EA-5754-8095-2EAD560BE4EB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[8]" "f[10:11]" "f[14]" "f[24:25]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[3]" "f[15]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[1:2]" "f[4]" "f[6]" "f[12]" "f[18:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[5]" "f[7]" "f[9]" "f[13]" "f[22:23]";
	setAttr ".pv" -type "double2" 0.5000000074505806 0.49407583475112915 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.43749374 0.98815167
		 0.375 0.98815167 0.375 0.76184827 0.43749374 0 0.43749374 0.016175628 0.625 0.98815167
		 0.56250626 0.98815167 0.625 0.76184827 0.63684833 0.016175628 0.375 0.26184833 0.375
		 0.48815167 0.43749374 0.23382437 0.5625062 0.23382436 0.625 0.26184833 0.375 0.51617563
		 0.37499997 0.73382431 0.43749374 0.48815173 0.56250626 0.48815173 0.625 0.51617563
		 0.62499994 0.73382437 0.43749374 0.73382437 0.56250626 0.73382437 0.56250626 0.76184827
		 0.56250626 0.016175628 0.43749374 0.26184833 0.56250626 0.26184833 0.43749374 0.51617563
		 0.56250626 0.51617563 0.43749374 0.76184827 0.86315173 0.016175628 0.86315173 0.23382436
		 0.13684829 0.016175628 0.36315167 0.016175628 0.36315167 0.23382436 0.13684829 0.23382437
		 0.56250626 0 0.63684833 0.23382437 0.625 0.48815173;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.25002515 -0.5 0.45260671 -0.25002515 -0.43529749 0.49999994
		 -0.50000024 -0.43529749 0.45260671 0.49999988 -0.43529749 0.45260671 0.25002486 -0.43529749 0.49999994
		 0.25002486 -0.5 0.45260671 -0.50000024 0.43529749 0.45260671 -0.25002515 0.43529749 0.49999994
		 -0.25002515 0.5 0.45260671 0.25002486 0.5 0.45260671 0.25002486 0.43529749 0.49999994
		 0.49999988 0.43529749 0.45260671 -0.50000024 0.43529749 -0.45260686 -0.25002515 0.5 -0.45260686
		 -0.25002515 0.43529749 -0.50000006 0.25002486 0.43529749 -0.50000006 0.25002486 0.5 -0.45260686
		 0.49999988 0.43529749 -0.45260686 -0.50000024 -0.43529749 -0.45260686 -0.25002515 -0.43529749 -0.50000006
		 -0.25002515 -0.5 -0.45260686 0.25002486 -0.5 -0.45260686 0.25002486 -0.43529749 -0.50000006
		 0.49999988 -0.43529749 -0.45260686;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D5E1BC2F-42BD-827B-5837-38B3F321A232";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "02CB560E-425D-EB48-99D9-9FA9635AED13";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7F4FE98A-4A9D-235C-9C8F-7AA7BE66DE2E";
createNode displayLayerManager -n "layerManager";
	rename -uid "4449B7E2-4ACD-D669-8235-F89C79A7FD9F";
createNode displayLayer -n "defaultLayer";
	rename -uid "83235546-4F81-C645-6BD0-279E425CA613";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2C36F705-4FD5-27AE-35DA-3EAA21ECC4AA";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "504DA631-4E05-868F-A95D-DBAAE37DD04F";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "9520D734-43EF-A547-FC4D-448E7190ED42";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.3.4.1";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=perspShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "0258EC17-4803-3F3E-69E7-6A916B5B9948";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "B6AAE0AA-4186-357A-62AF-ECA4515CF673";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "6901CBB8-4C59-046B-FCE8-D7B778C5B1EC";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0EC512BC-4FDE-C821-0D8A-25871A0FA251";
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
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1625\n            -height 883\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1625\\n    -height 883\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1625\\n    -height 883\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E5BC2EE1-484A-9DE2-C973-38B511A1BBB7";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "795686FA-4787-1B92-EFCA-06ACEF3028F6";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	rename -uid "7D05D273-4E97-92AE-2A0C-7DA575D6901E";
	setAttr -s 5 ".e[0:4]"  0.33333299 0.66666698 0.66666698 0.33333299
		 0.33333299;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483638 -2147483637 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "7AF292D1-4778-1F4B-5BF0-B8A527C36813";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483638 -2147483637 -2147483633 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "D22313B4-4B47-EEE7-B5A9-1B841AEEB5F5";
	setAttr -s 5 ".e[0:4]"  0.33333299 0.66666698 0.66666698 0.33333299
		 0.33333299;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483627 -2147483626 -2147483633 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "D73D27C2-4160-E829-F6FC-8EA48BEE0716";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 0.29674745 0 0 0.29674745
		 0 0 0.29674745 0 0 0.29674745 0 0 -0.29674745 0 0 -0.29674745 0 0 -0.29674745 0 0
		 -0.29674745;
createNode polySplit -n "polySplit4";
	rename -uid "8BACD11F-4655-E06D-D36D-378BBAEC199D";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483620 -2147483627 -2147483626 -2147483617 -2147483620;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "63E0C808-44C8-0D9D-C052-D38194851DA0";
	setAttr -s 5 ".e[0:4]"  0.33333299 0.66666698 0.66666698 0.33333299
		 0.33333299;
	setAttr -s 5 ".d[0:4]"  -2147483620 -2147483611 -2147483610 -2147483617 -2147483620;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "E3C95969-411A-8508-3A80-0FBDB5B9B6A2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[16:23]" -type "float3"  0 0.026048113 0.24982689 0
		 0 0.24982643 0 0 0.24982643 0 0.026048113 0.24982689 0 0.026048113 -0.24982689 0
		 0 -0.24982689 0 0 -0.24982689 0 0.026048113 -0.24982689;
createNode polySplit -n "polySplit6";
	rename -uid "C7DF58E3-45F8-A7F1-BB48-969ECCDEED19";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483604 -2147483611 -2147483610 -2147483601 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "E2062F73-4519-7D83-843D-95B1CF502C88";
	setAttr -s 5 ".e[0:4]"  0.33333299 0.66666698 0.66666698 0.33333299
		 0.33333299;
	setAttr -s 5 ".d[0:4]"  -2147483604 -2147483595 -2147483594 -2147483601 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "3401D1ED-4742-77E4-4782-079108A30511";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[24:31]" -type "float3"  0 0.051872242 0.13394304 0
		 0 0.13394272 0 0 0.13394272 0 0.051872242 0.13394304 0 0.051872242 -0.13394301 0
		 0 -0.13394304 0 0 -0.13394304 0 0.051872242 -0.13394301;
createNode polySplit -n "polySplit8";
	rename -uid "0DE438D5-4E78-B5B1-902E-F09FB2FB8E45";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483588 -2147483595 -2147483594 -2147483585 -2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube2";
	rename -uid "84ADD49E-4823-4304-2F56-EA8A580F0F6F";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "B9B497F2-458A-7899-B22E-819BE140E337";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 210 0 0 0 0 43 0 0 0 0 155 0 -104.49999913638328 -19.432581061052247 1.2789769243681803e-13 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -104.5 2.0674191 1.2789769e-13 ;
	setAttr ".rs" 43366;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -209.49999913638328 2.0674189389477533 -77.499999999999872 ;
	setAttr ".cbx" -type "double3" 0.50000086361671947 2.0674189389477533 77.500000000000128 ;
createNode polySplit -n "polySplit9";
	rename -uid "1EB695FF-4F2F-B9E1-6FFC-64992A01EBFF";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483640 -2147483639 -2147483643 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "4ED3D590-4A8C-3AD2-769D-43A2812A5E9F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.01047391 -0.02553682 -0.01047391
		 -0.01047391 -0.02553682 -0.01047391 -0.01047391 -0.02553682 0.01047391 0.01047391
		 -0.02553682 0.01047391;
createNode polySplit -n "polySplit10";
	rename -uid "85083CDD-4D18-150B-CEE4-E9A063583FA7";
	setAttr -s 9 ".e[0:8]"  0.33333299 0.66666698 0.33333299 0.33333299
		 0.33333299 0.33333299 0.33333299 0.33333299 0.33333299;
	setAttr -s 9 ".d[0:8]"  -2147483648 -2147483621 -2147483647 -2147483634 -2147483630 -2147483646 
		-2147483623 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "15DD7B71-4C3B-67CD-2B2B-A3945BB2F600";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 -0.10791992 0 0 -0.10791992
		 0 0 -0.10791992 0 0 -0.10791992 0;
createNode polySplit -n "polySplit11";
	rename -uid "793E3E1B-4C1B-69F4-3229-E7BA7A4EEC9F";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483620 -2147483621 -2147483618 -2147483617 -2147483616 -2147483615 
		-2147483614 -2147483613 -2147483620;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyChipOff -n "polyChipOff1";
	rename -uid "3D2E03A7-4514-9097-2E42-C4A48926C258";
	setAttr ".ics" -type "componentList" 4 "f[0]" "f[2]" "f[22]" "f[28]";
	setAttr ".ix" -type "matrix" 210 0 0 0 0 43 0 0 0 0 155 0 -105.49999913638328 -19.432581061052247 1.2789769243681803e-13 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -105.5 -19.432581 1.2789769e-13 ;
	setAttr ".rs" 39011;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak6";
	rename -uid "59CBEF8E-4A86-E64A-1C1C-BF994448BCB9";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[16:31]" -type "float3"  0.16317843 0 0 0.16317846
		 0 0 0.16317843 0 0 0.15976021 0 0 0.15976021 0 0 0.16317843 0 0 0.16317843 0 0 0.16317843
		 0 0 -0.16317846 0 0 -0.16317843 0 0 -0.16317846 0 0 -0.15976019 0 0 -0.15976019 0
		 0 -0.16317846 0 0 -0.16317846 0 0 -0.16317846 0 0;
createNode polySeparate -n "polySeparate1";
	rename -uid "E94E242B-4B1B-A26C-B0D3-65A8764D4FBD";
	setAttr ".ic" 5;
	setAttr -s 2 ".out";
createNode groupId -n "groupId1";
	rename -uid "FD37D077-4768-2126-AF03-90A29D0F4A0C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "F96D4C91-446D-8A61-D7CC-668E3FDCC2AE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId2";
	rename -uid "BABC2AEF-45FB-719D-56C5-5E9EC8467076";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "189CB6CD-47A0-67E8-BC62-0E933D542DB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "7693AB18-42B3-470D-68D2-688C4A0DCB8D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "CA090A89-45BD-C558-C3FC-0E8A770AADD5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "AB243D03-4D27-B337-105B-ED99AC83F2DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "30A1B00C-4A4E-5520-8B60-C3BDA34BBD9B";
	setAttr ".ihi" 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "DB3EA12F-4A44-E60F-FD1E-F1B155D5EDBC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 210 0 0 0 0 43 0 0 0 0 155 0 -105.49999913638328 -19.432581061052247 1.2789769243681803e-13 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -158.3663 -32.502857 77.5 ;
	setAttr ".rs" 58356;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -210.50002417033409 -40.932579779552384 77.500000000000128 ;
	setAttr ".cbx" -type "double3" -106.23259267276023 -24.07313683025734 77.500000000000128 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "3446155A-4DBF-A2DB-72EE-68B1234FECDF";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 210 0 0 0 0 43 0 0 0 0 155 0 -105.49999913638328 -19.432581061052247 77.565029472367812 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -158.3663 -24.073137 119.64815 ;
	setAttr ".rs" 54003;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -210.50002417033409 -24.07313683025734 84.231269419448424 ;
	setAttr ".cbx" -type "double3" -106.23259267276023 -24.07313683025734 155.06502947236783 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "CC6F53CD-4C1C-A1A9-2E7E-E99EF0A77E5D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[4:7]" -type "float3"  0 0 -0.456992 0 0 -0.456992
		 0 0 -0.456992 0 0 -0.456992;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "12AD0713-4B59-C608-575D-60A34C9E173A";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 210 0 0 0 0 43 0 0 0 0 155 0 -105.49999913638328 -19.432581061052247 77.565029472367812 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -158.36633 -24.073137 119.64815 ;
	setAttr ".rs" 63106;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -207.25777080720161 -24.07313683025734 86.433917679147768 ;
	setAttr ".cbx" -type "double3" -109.47489962419365 -24.07313683025734 152.86238005782849 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "BD437315-46DA-995E-9B15-9D9091CF5A5C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  -0.015439557 0 -0.014210582
		 0.015439302 0 -0.014210582 -0.015439557 0 0.014210664 0.015439302 0 0.014210664;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "B1915ADA-45E5-0EF7-521D-D0B17BB4EE31";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[15]" "f[22]";
	setAttr ".ix" -type "matrix" 210 0 0 0 0 43 0 0 0 0 155 0 -105.84789631283753 -19.432581061052247 1.2789769243681803e-13 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -105.8479 2.0674202 1.2789769e-13 ;
	setAttr ".rs" 35647;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -208.64838836110107 2.0674189389477533 -75.876539796590677 ;
	setAttr ".cbx" -type "double3" -3.0474167815493871 2.0674215019474786 75.876539796590933 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "8DFB4990-4035-C68B-EDDD-AD937F70CFF3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0.025536895 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.025536895 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.025536895 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.025536895 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.025536895 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.025536895 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.025536895 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.025536895 0 ;
createNode polyCube -n "polyCube3";
	rename -uid "24DDFCD1-49E0-10B7-562F-3F975C8EB21A";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "D1D2EAE3-4F2A-82AC-5582-DA91DB8A7EEA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 211.80748656211318 0 0 0 0 45.87200809396041 0 0 0 0 149.8813122803451 0
		 -109.82279968261719 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.02;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak10";
	rename -uid "405D8089-40BB-EDD8-5709-F79650650260";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[0]" -type "float3" 0.035719223 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.035719223 -0.38521445 0 ;
	setAttr ".tk[3]" -type "float3" 0 -0.38521445 0 ;
	setAttr ".tk[4]" -type "float3" 0.035719223 -0.38521445 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.38521445 0 ;
	setAttr ".tk[6]" -type "float3" 0.035719223 0 0 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "CBBAF209-46AB-46F9-3E67-26A603C759AE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 211.80748656211318 0 0 0 0 45.87200809396041 0 0 0 0 149.8813122803451 0
		 -109.82279968261719 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.02;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySplit -n "polySplit12";
	rename -uid "EAD4CDD8-4220-57A3-037F-F690DC4DFB49";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483644 -2147483642 -2147483638 -2147483637 -2147483626 -2147483625 
		-2147483632 -2147483630 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "16042B7D-4BF8-88BD-E6AA-48B14EDC2661";
	setAttr ".ics" -type "componentList" 3 "f[1]" "f[3:4]" "f[10:11]";
	setAttr ".ix" -type "matrix" 211.80748656211318 0 0 0 0 45.87200809396041 0 0 0 0 149.8813122803451 0
		 -109.82279968261719 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -157.10049 -8.5589333 0 ;
	setAttr ".rs" 48674;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -208.16095825300994 -22.383309106643658 -74.94065614017255 ;
	setAttr ".cbx" -type "double3" -106.04001679581778 5.2654434297801407 74.94065614017255 ;
createNode phong -n "MaterialFBXASC046026";
	rename -uid "4045EE17-499B-179E-46EA-70A0D116244E";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.19132276 0.079221889 0.036590513 ;
	setAttr ".sc" -type "float3" 0.04783069 0.019805472 0.0091476282 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.19132276 0.079221889 0.036590513 ;
	setAttr ".cp" 25;
createNode shadingEngine -n "CubeFBXASC046002SG";
	rename -uid "B47E7A9C-47CA-11DF-7158-82B1C8A0F4D5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "37D070C9-4F59-455B-74A5-E3BD0D54BF76";
createNode polyCube -n "polyCube4";
	rename -uid "AD818182-4D86-F303-4AD7-F792921F11E1";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "2D743FBB-4D1B-0E75-4951-69BE007059F6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:11]";
	setAttr ".ix" -type "matrix" 0 -8.6335762690075182 0 0 33.35537703271347 0 0 0 0 0 45.537693683195428 0
		 -18.983822523097647 10.376548298511313 -38.24669862552787 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "DD024FF0-4CB5-2C7F-9AB9-8CB5D091C5AF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 0 8.858712636122517 0 0 -36.120506700118618 0 0 0 0 0 49.312726046496756 0
		 -26.435675697442804 10.524538767075779 37.00877504808917 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -26.435674667358398 10.524538040161133 37.008773803710938 ;
	setAttr ".ro" -type "double3" 155.06162872037501 -89.800000145238258 -179.99998071521603 ;
	setAttr ".ps" -type "double2" 49.422193724842444 21.357484835570649 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" -0.0067873778752982616 1.4800121784210205 0.90677458047866821 0.90675646066665649
		 -2.4454782518768736e-17 3.182852029800415 -0.42165130376815796 -0.42164286971092224
		 1.9444326162338257 0.0051662377081811428 0.0031652532052248716 0.0031651898752897978
		 -146.35317993164062 8.8310031890869141 221.01806640625 221.21363830566406;
	setAttr ".prgt" 1594;
	setAttr ".ptop" 883;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "2856938F-48CF-4676-6092-D599ECC9CA32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[1]" "e[7:8]" "e[10]" "e[15:16]" "e[18]" "e[23]" "e[25]" "e[29]" "e[32]" "e[34]" "e[39:40]" "e[42]" "e[45]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "061DE60B-43D1-A61D-3587-05A1060AACB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "711525AE-4B58-601D-67A0-60804E88A7D6";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" -0.064839959 0.18430315 ;
	setAttr ".uvtk[2]" -type "float2" 0.4452635 -0.25936523 ;
	setAttr ".uvtk[4]" -type "float2" -0.085935831 0.18258402 ;
	setAttr ".uvtk[6]" -type "float2" -0.060930669 0.15830687 ;
	setAttr ".uvtk[7]" -type "float2" -0.36546135 0.58676803 ;
	setAttr ".uvtk[9]" -type "float2" -0.57906574 -0.9502368 ;
	setAttr ".uvtk[12]" -type "float2" -0.85119015 -0.5588311 ;
	setAttr ".uvtk[16]" -type "float2" 0.2887148 0.1492753 ;
	setAttr ".uvtk[18]" -type "float2" 0.25694561 -0.1127969 ;
	setAttr ".uvtk[21]" -type "float2" 0.47211093 -0.32514596 ;
	setAttr ".uvtk[22]" -type "float2" 0.31309712 -0.041601561 ;
	setAttr ".uvtk[25]" -type "float2" 0.45865515 -0.43772984 ;
	setAttr ".uvtk[26]" -type "float2" 0.40722948 -0.50454247 ;
	setAttr ".uvtk[29]" -type "float2" 0.32329845 0.079428896 ;
	setAttr ".uvtk[34]" -type "float2" -0.3397733 0.5540542 ;
	setAttr ".uvtk[35]" -type "float2" -0.33857346 0.59258568 ;
	setAttr ".uvtk[40]" -type "float2" -0.0037100911 0.15576908 ;
	setAttr ".uvtk[41]" -type "float2" -0.27583456 0.54717475 ;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "2D794FD7-499E-52C9-2958-1E9F4C0C265B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[0]" "e[2]" "e[12]" "e[14]" "e[20]" "e[22]" "e[28]" "e[30]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "9D31B966-4A34-9092-9245-CE8B4BDE11DA";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" -0.40033913 -0.05790215 -0.16337836
		 -0.21270835 -0.1660307 0.23201053 0.72645754 -0.056890629 -0.16318715 -0.24478406
		 -0.39798653 -0.087099835 -0.16292387 -0.28891668 0.15010208 -0.24291566 0.028568178
		 0.2083334 -0.16932878 0.78501344 0.73542297 -0.086125225 0.76471096 -0.081919983
		 0.14396045 0.78688198 0.016565591 0.16034448 0.033626407 0.21962875 0.51751256 0.22104813
		 0.14725852 0.23387897 0.036906391 0.1807321 0.1466127 0.34216309 0.53008848 0.18210414
		 0.52010292 0.20006643 -0.16622201 0.26408628 0.146804 0.31008729 0.81387126 -0.071294852
		 0.80436885 -0.041499309 -0.16648522 0.30821884 -0.16667652 0.34029463 0.5328598 0.16182426
		 0.52223611 0.15079987 0.14706722 0.26595473 0.73199368 -0.035889424 0.48325393 0.2137253
		 0.049397498 0.14550108 0.013835758 0.19853517 0.15036535 -0.28704825 0.14991087 -0.21083996
		 -0.46356285 -0.072393723 -0.39418679 -0.078912087 -0.41340703 -0.032956578 -0.46560979
		 -0.042639665 -0.16273266 -0.32099238 0.15055662 -0.31912395 0.5078153 0.14681649
		 0.034976631 0.14948449 0.49767473 0.20974192 0.042988986 0.21231681 0.75029016 -0.077936627
		 -0.4086076 -0.082895443 0.74641448 -0.031906046 -0.39898616 -0.036939986;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "93C878AA-415D-A7FF-6503-E99BC5047007";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:25]";
	setAttr ".ix" -type "matrix" 0 -8.858712636122517 0 0 36.120506700118618 0 0 0 0 0 49.312726046496756 0
		 -26.435682261451326 10.524536359572384 -39.345728053117838 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -26.43568229675293 10.524538040161133 -39.345729827880859 ;
	setAttr ".ro" -type "double3" 106.46165041485723 -86.999999962498734 179.99999708413372 ;
	setAttr ".ps" -type "double2" 50.890918542318019 38.08816807235668 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" -0.10176435858011246 3.3616347312927246 0.28299078345298767 0.28298512101173401
		 4.153383175818507e-16 0.99467760324478149 -0.95902884006500244 -0.95900964736938477
		 1.941779613494873 0.17617581784725189 0.014830918051302433 0.014830620959401131 104.87624359130859 65.490692138671875 319.22055053710938 319.4141845703125;
	setAttr ".prgt" 1594;
	setAttr ".ptop" 883;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "5A26F8A1-4643-3FB0-EB50-0A85933B6156";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[1]" "e[7:8]" "e[10]" "e[15:16]" "e[18]" "e[23]" "e[25]" "e[29]" "e[32]" "e[34]" "e[39:40]" "e[42]" "e[45]";
createNode polyMapCut -n "polyMapCut5";
	rename -uid "119094C0-4620-2E79-F286-3DB48821CDC9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "8051B85E-463B-9200-B12C-95A3F1FEAE6B";
	setAttr ".uopa" yes;
	setAttr -s 42 ".uvtk[0:41]" -type "float2" -0.1473918 0.028922506 0.12712783
		 -0.04571677 0.21200556 0.020434797 0.12455296 0.073279478 0.14459169 -0.039798707
		 -0.13648415 -0.01324879 0.23582339 -0.022692688 0.21467018 -0.062912166 -0.12002718
		 0.010730684 -1.65061069 0.038869567 0.1228995 0.030502027 0.11832862 -0.049385101
		 -1.58345425 0.026885331 -0.15433663 0.16319847 -0.13259357 0.020199835 0.15050223
		 -0.15641046 0.25519645 -0.0093135834 -0.14428937 0.10414869 0.056113195 0.048021972
		 0.12706739 -0.072987378 0.15549436 -0.13105381 0.1995827 0.033758063 0.15913604 0.035934508
		 0.12834705 -0.016534042 0.12873487 0.034158166 0.11778744 0.054299824 0.013620153
		 0.062513202 0.1266104 -0.040957153 0.10259701 0.020029366 0.24124272 0.0077607036
		 0.12105325 0.061843373 0.1596131 -0.17064211 -0.15346301 0.20246321 -0.13847709 0.072515845
		 0.30480075 -0.038251102 0.1964125 -0.072818637 -0.13353747 -0.063982114 -0.12057364
		 -0.091814034 -0.14286172 0.018213406 -0.14696467 -0.013952978 0.34439898 -0.012495011
		 0.41155547 -0.02447927;
createNode polyMapCut -n "polyMapCut6";
	rename -uid "8BEFAA34-4D43-882D-58F8-C6A6F7817D83";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[0]" "e[2]" "e[12]" "e[14]" "e[20]" "e[22]" "e[28]" "e[30]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "D8A86ABA-4340-7510-A11A-C2849B89BED3";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" -0.24753505 0.14560091 -0.82073319
		 0.31064221 0.21544877 0.28998882 0.75269592 0.14663941 -0.89546871 0.31213185 -0.24738556
		 0.24495226 -0.9982965 0.31418145 -0.91001832 -0.41782287 -0.22266795 -0.41658354
		 1.50392938 0.26430652 0.75284553 0.24599072 0.77324444 0.31430846 1.48937988 -0.4656482
		 -0.24627626 -0.59769535 -0.20114209 -0.48288167 0.75838685 -0.26387501 0.20089915
		 -0.43996587 -0.17961158 -0.57827783 0.45319796 -0.44499478 0.77991724 -0.35927129
		 0.8250519 -0.2444579 0.29018438 0.28849918 0.37846237 -0.44350514 0.82395595 0.25062194
		 0.82575715 0.14278182 0.39301199 0.28644958 0.46774757 0.28495991 0.85143542 -0.34708601
		 0.80144244 -0.42556983 0.27563477 -0.44145557 0.75916189 0.075167879 0.76260793 -0.19634244
		 -0.18383245 -0.64581037 -0.27266008 -0.49506772 -1.012846112 -0.41577324 -0.8352828
		 -0.41931251 -0.32044691 0.24880937 -0.25385171 0.31642374 -0.26793301 0.077283069
		 -0.31864512 0.1409689 -1.073031902 0.31567103 -1.087581635 -0.4142836 0.81586325
		 -0.42158648 -0.16941167 -0.64979374 0.74818712 -0.19235906 -0.2370887 -0.42056692
		 0.75882363 0.31829184 -0.26827252 0.31244037 0.7735827 0.079151258 -0.25351226 0.073299691;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "1AC800EC-4222-F027-882D-54B37B3C499E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:33]";
	setAttr ".ix" -type "matrix" 211.80748656211318 0 0 0 0 45.87200809396041 0 0 0 0 149.8813122803451 0
		 -109.82279968261719 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -106.75957489013672 -8.7281494140625 -0.0572357177734375 ;
	setAttr ".ro" -type "double3" 158.66164710801149 -41.800000506288498 -179.99999954192472 ;
	setAttr ".ps" -type "double2" 253.15468665850057 116.06163031428353 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" -1.4495366811752319 0.85132706165313721 0.62085264921188354 0.62084025144577026
		 1.189317770099681e-16 3.2695026397705078 -0.36388209462165833 -0.36387479305267334
		 1.2960354089736938 0.95215755701065063 0.69438594579696655 0.69437205791473389 -225.64309692382812 142.62542724609375 349.72479248046875 349.91778564453125;
	setAttr ".prgt" 1594;
	setAttr ".ptop" 883;
createNode polyTweak -n "polyTweak11";
	rename -uid "56C61BD7-4108-519D-C5CC-699672F71F0F";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[16]" -type "float3" 0.2669189 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.2669189 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.2669189 0 0 ;
	setAttr ".tk[19]" -type "float3" 0.2669189 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.2669189 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.2669189 0 0 ;
	setAttr ".tk[24]" -type "float3" 4.6566129e-10 0 0.0099750711 ;
	setAttr ".tk[25]" -type "float3" 9.3132257e-10 0.033621818 0.0099000074 ;
	setAttr ".tk[26]" -type "float3" 0.26790857 0 0.0099750711 ;
	setAttr ".tk[27]" -type "float3" 0.26790857 0.033621818 0.0099000074 ;
	setAttr ".tk[28]" -type "float3" 9.3132257e-10 0.033621818 -0.0099000074 ;
	setAttr ".tk[29]" -type "float3" 4.6566129e-10 0 -0.0099750711 ;
	setAttr ".tk[30]" -type "float3" 0.26790857 0.033621818 -0.0099000074 ;
	setAttr ".tk[31]" -type "float3" 0.26790857 0 -0.0099750711 ;
	setAttr ".tk[32]" -type "float3" 0.26790857 9.3132257e-10 0.0099750711 ;
	setAttr ".tk[33]" -type "float3" 4.6566129e-10 9.3132257e-10 0.0099750711 ;
	setAttr ".tk[34]" -type "float3" 0.26790857 9.3132257e-10 -0.0099750711 ;
	setAttr ".tk[35]" -type "float3" 4.6566129e-10 9.3132257e-10 -0.0099750711 ;
createNode polyMapCut -n "polyMapCut7";
	rename -uid "D9221CDB-4843-3790-37B3-EE989F737D21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[32:39]";
createNode polyTweak -n "polyTweak12";
	rename -uid "6DCB129D-4FE8-FF13-E223-529BC7BDF6A4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[21]" -type "float3" 0.26790872 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.26790872 0 0 ;
	setAttr ".tk[36]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[37]" -type "float3" 1.8626451e-09 0 0 ;
createNode polyMapDel -n "polyMapDel1";
	rename -uid "ACA6E298-420D-3D3B-93FF-298DEC793302";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:33]";
createNode polyPlanarProj -n "polyPlanarProj4";
	rename -uid "FE2A6419-4A2C-689A-FB30-B4A7218E5D78";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:33]";
	setAttr ".ix" -type "matrix" 211.80748656211318 0 0 0 0 45.87200809396041 0 0 0 0 149.8813122803451 0
		 -109.82279968261719 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -106.21495056152344 -8.1547250747680664 0.97453880310058594 ;
	setAttr ".ro" -type "double3" 160.46164836418947 5.8000019269638043 179.99999948455738 ;
	setAttr ".ps" -type "double2" 218.49382706827424 84.887605536937997 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" -1.9344903230667114 -0.1186320036649704 -0.095239162445068359 -0.095237255096435547
		 1.2715378189953901e-17 3.3080086708068848 -0.33444446325302124 -0.33443775773048401
		 -0.19649834930896759 1.1679103374481201 0.93761205673217773 0.93759334087371826 -199.62258911132812 121.30060577392578 278.47610473632812 278.6705322265625;
	setAttr ".prgt" 1594;
	setAttr ".ptop" 883;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "22C56D7A-4659-540B-121A-789C3F67CD9E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[32:39]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "1F0AA9D7-4B08-CABC-E6F6-AE92FCB07299";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[9]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[10]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[11]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[20]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[22]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[23]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[24]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[25]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[27]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[36]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[37]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[40]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[41]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[42]" -type "float2" -0.19260809 0 ;
	setAttr ".uvtk[43]" -type "float2" -0.19260809 0 ;
createNode polyMapCut -n "polyMapCut9";
	rename -uid "851BD52F-4086-5F4A-D7F1-A0B2AA0CE53E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[9]" "e[16]" "e[26]" "e[28]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "9AA92AF9-4336-A5DA-541A-CDA7EE237804";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" 0.017968899 0.065832794 ;
	setAttr ".uvtk[9]" -type "float2" 0.016987905 0.068167001 ;
	setAttr ".uvtk[10]" -type "float2" 0.27878356 -0.1346404 ;
	setAttr ".uvtk[11]" -type "float2" 0.27650005 -0.1362278 ;
	setAttr ".uvtk[20]" -type "float2" -0.28883535 0.096157849 ;
	setAttr ".uvtk[22]" -type "float2" -0.051187471 0.12777798 ;
	setAttr ".uvtk[23]" -type "float2" -0.053920038 0.12771526 ;
	setAttr ".uvtk[24]" -type "float2" 0.19303027 -0.02520432 ;
	setAttr ".uvtk[25]" -type "float2" 0.19923335 -0.027400237 ;
	setAttr ".uvtk[27]" -type "float2" -0.12900805 -0.07605572 ;
	setAttr ".uvtk[36]" -type "float2" -0.22532001 0.22542709 ;
	setAttr ".uvtk[37]" -type "float2" -0.023914933 0.10938206 ;
	setAttr ".uvtk[40]" -type "float2" -0.12921703 -0.079406753 ;
	setAttr ".uvtk[41]" -type "float2" 0.077032521 -0.24172048 ;
	setAttr ".uvtk[42]" -type "float2" 0.14154837 -0.11378502 ;
	setAttr ".uvtk[43]" -type "float2" -0.02284798 0.10626021 ;
	setAttr ".uvtk[44]" -type "float2" 0.007648766 -0.13675886 ;
	setAttr ".uvtk[45]" -type "float2" -0.16078949 0.16673723 ;
	setAttr ".uvtk[46]" -type "float2" -0.29031378 0.09584114 ;
	setAttr ".uvtk[47]" -type "float2" 0.14202268 -0.1121355 ;
createNode polyMapCut -n "polyMapCut10";
	rename -uid "A9ABA8C7-4E7F-BAD8-6F2F-5DA11948E507";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[5]" "e[27]" "e[41]" "e[45]" "e[47:48]" "e[51:52]";
createNode polyMapCut -n "polyMapCut11";
	rename -uid "2E3C4F05-4CAA-13AD-AFFC-8697655C4E48";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "90CDEB54-41B3-1197-3892-E7B484B773C6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.23888946 0.174503 ;
	setAttr ".uvtk[4]" -type "float2" -0.167382 0.25405234 ;
	setAttr ".uvtk[7]" -type "float2" 0.095585167 0.081457913 ;
	setAttr ".uvtk[13]" -type "float2" -0.24431562 0.16544665 ;
	setAttr ".uvtk[14]" -type "float2" 0.31563652 0.005183965 ;
	setAttr ".uvtk[32]" -type "float2" 0.094649345 0.083186209 ;
	setAttr ".uvtk[51]" -type "float2" 0.3095513 0.010905415 ;
	setAttr ".uvtk[56]" -type "float2" -0.16483521 0.25906923 ;
createNode polyMapCut -n "polyMapCut12";
	rename -uid "587BB082-4173-6FF3-7CF4-48AF109BB520";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[20]" "e[31]";
createNode polyMapCut -n "polyMapCut13";
	rename -uid "56D75BDA-46CD-C718-6C0F-FCB01384FFB6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[11]";
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "72CD907E-49BF-DDD1-88A2-B2852CF0D5EA";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[16]" -type "float2" 0.018839598 -0.015932217 ;
	setAttr ".uvtk[19]" -type "float2" -0.45923024 0.28697357 ;
	setAttr ".uvtk[38]" -type "float2" 0.32042426 -0.27753761 ;
	setAttr ".uvtk[39]" -type "float2" 0.0944345 0.036996752 ;
	setAttr ".uvtk[58]" -type "float2" 0.32141557 -0.27985549 ;
	setAttr ".uvtk[59]" -type "float2" 0.092778012 0.036754586 ;
	setAttr ".uvtk[60]" -type "float2" 0.019671202 -0.017323598 ;
	setAttr ".uvtk[61]" -type "float2" -0.46381718 0.28742465 ;
createNode polyMapCut -n "polyMapCut14";
	rename -uid "D153F124-4EF0-C87B-8DC4-8A927D52AC1F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0]" "e[2]" "e[23]" "e[25]";
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "6D14036A-4282-0FBB-6B7D-F4B2E93BDA64";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.33288163 0.17647123 ;
	setAttr ".uvtk[1]" -type "float2" -0.33045617 0.17751196 ;
	setAttr ".uvtk[3]" -type "float2" -0.07192415 0.18075338 ;
	setAttr ".uvtk[5]" -type "float2" -0.32865494 0.17256987 ;
	setAttr ".uvtk[6]" -type "float2" 0.37561175 -0.21510099 ;
	setAttr ".uvtk[12]" -type "float2" -0.082410097 0.17979684 ;
	setAttr ".uvtk[15]" -type "float2" 0.04645212 -0.19759619 ;
	setAttr ".uvtk[17]" -type "float2" -0.38768592 0.19742459 ;
	setAttr ".uvtk[18]" -type "float2" -0.0076735616 0.17987397 ;
	setAttr ".uvtk[21]" -type "float2" 0.29752228 -0.16427174 ;
	setAttr ".uvtk[26]" -type "float2" 0.1252142 -0.17423546 ;
	setAttr ".uvtk[28]" -type "float2" -0.38206464 0.19696882 ;
	setAttr ".uvtk[29]" -type "float2" 0.30049959 -0.16213934 ;
	setAttr ".uvtk[30]" -type "float2" 0.1255051 -0.16504091 ;
	setAttr ".uvtk[31]" -type "float2" -0.017032623 0.18605676 ;
	setAttr ".uvtk[33]" -type "float2" 0.37662536 -0.2185843 ;
	setAttr ".uvtk[34]" -type "float2" 0.036038786 -0.2070232 ;
	setAttr ".uvtk[35]" -type "float2" 0.039661005 -0.20454593 ;
	setAttr ".uvtk[48]" -type "float2" -0.086097598 0.17750816 ;
	setAttr ".uvtk[49]" -type "float2" 0.040780395 -0.20062457 ;
	setAttr ".uvtk[52]" -type "float2" 0.38178793 -0.21863848 ;
	setAttr ".uvtk[53]" -type "float2" -0.32249969 0.16930854 ;
	setAttr ".uvtk[55]" -type "float2" 0.37908161 -0.22054918 ;
	setAttr ".uvtk[57]" -type "float2" -0.052810252 -0.15264723 ;
	setAttr ".uvtk[62]" -type "float2" 0.02419275 0.0030967705 ;
	setAttr ".uvtk[63]" -type "float2" -0.053974628 -0.14970207 ;
	setAttr ".uvtk[64]" -type "float2" 0.0060105324 0.063998878 ;
	setAttr ".uvtk[65]" -type "float2" 0.070703566 0.17482716 ;
	setAttr ".uvtk[66]" -type "float2" -0.068708718 0.18223441 ;
	setAttr ".uvtk[67]" -type "float2" 0.0058780909 0.060426503 ;
createNode polyMapCut -n "polyMapCut15";
	rename -uid "F3201943-4EA0-13EF-1992-079EFCFC21D1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[49]" "e[53]";
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "94891F5D-4C1E-3D30-B7C7-49874F57576C";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" 0.0037310719 0.011375785 ;
	setAttr ".uvtk[12]" -type "float2" 0.0062282085 0.0082060397 ;
	setAttr ".uvtk[15]" -type "float2" -0.00346452 0.00030770898 ;
	setAttr ".uvtk[18]" -type "float2" -0.005929172 0.0033467412 ;
	setAttr ".uvtk[26]" -type "float2" 0.0091134608 0.0066144466 ;
	setAttr ".uvtk[30]" -type "float2" 0.0087370872 0.0067126602 ;
	setAttr ".uvtk[31]" -type "float2" -0.0058255792 0.0037874728 ;
	setAttr ".uvtk[34]" -type "float2" -0.0051956475 0.0043134987 ;
	setAttr ".uvtk[35]" -type "float2" -0.0018996298 -0.0012093559 ;
	setAttr ".uvtk[48]" -type "float2" 0.004865706 0.0077393949 ;
	setAttr ".uvtk[49]" -type "float2" -0.0024973154 0.0012331307 ;
	setAttr ".uvtk[66]" -type "float2" 0.0024499893 0.011061639 ;
	setAttr ".uvtk[68]" -type "float2" -0.0054699779 0.0033909306 ;
	setAttr ".uvtk[69]" -type "float2" 0.007029593 0.0057718754 ;
createNode polyMapCut -n "polyMapCut16";
	rename -uid "8DCF3B0A-47AA-87AD-6CB7-F091E4C1141E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[63]" "e[65]";
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "CF53D782-4E75-F127-A20D-29A552A94AC2";
	setAttr ".uopa" yes;
	setAttr -s 72 ".uvtk[0:71]" -type "float2" 0.52134663 0.036221072 0.52097553
		 0.031258717 -0.31241119 0.074313208 0.0061353147 0.20560202 -0.1428633 0.17230114
		 0.51453012 0.0389276 -0.17557168 0.4436017 -0.24426652 0.35199124 0.33923632 0.5655936
		 0.33995348 0.5629307 0.56468076 0.89068407 0.56196159 0.89042133 0.0064067543 0.20973554
		 -0.31508341 0.075113311 -0.41648662 0.25480357 0.21468249 0.62359744 -0.33104938
		 0.25001001 0.56878877 0.17273578 -0.029251754 0.25758705 -0.075725853 0.36733142
		 0.49535087 0.44820362 -0.089071929 0.54979545 0.40000814 0.52157325 0.40267289 0.52183044
		 0.62543958 0.84671772 0.62473679 0.84932745 0.11107683 0.64002448 0.7306509 0.78317589
		 0.562814 0.1685811 -0.09047097 0.54289144 0.11238176 0.63760948 -0.027819693 0.25342533
		 -0.24694788 0.35280728 -0.18111441 0.44884613 0.21986639 0.62658459 0.2139087 0.63011998
		 0.3304019 0.4204964 0.23257682 0.62751132 -0.46799043 0.51594347 -0.20696767 0.65075403
		 0.73210996 0.78475618 0.63428766 0.99176127 0.46887618 0.96436614 0.23355973 0.62942952
		 0.69434291 0.95040429 0.27034676 0.46185303 0.49436164 0.44629818 0.47033137 0.96595645
		 0.012440115 0.20820105 0.21997997 0.62058443 0.46887618 0.96436614 -0.41579932 0.25752077
		 -0.1821177 0.43495646 0.5080272 0.030258074 0.23355973 0.62942952 -0.18497041 0.44777843
		 -0.14355969 0.16960004 -0.40265208 0.80971158 -0.4691115 0.51482362 -0.20538811 0.65093488
		 -0.33165959 0.24817014 -0.073882252 0.3666414 -0.4644677 0.69981074 -0.40660334 0.80773824
		 0.19064426 0.48752946 0.13277996 0.37960196 0.0082513392 0.20391077 0.19010085 0.49191248
		 0.21764159 0.62659252 0.003218323 0.20939752 -0.033435643 0.2535601 0.10643429 0.64422023;
createNode polyPlanarProj -n "polyPlanarProj5";
	rename -uid "B1FF81F5-48E2-2A0A-DDDE-119ED76D352F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:33]";
	setAttr ".ix" -type "matrix" 210 0 0 0 0 43 0 0 0 0 155 0 -105.84789631283753 -19.432581061052247 1.2789769243681803e-13 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -105.84790802001953 -19.432580947875977 3.814697265625e-06 ;
	setAttr ".ro" -type "double3" -10.538352428352383 -27.800000811789076 1.7593621136291216e-07 ;
	setAttr ".ps" -type "double2" 258.05196781964514 85.264089194634877 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 1.7200185060501099 0.29941108822822571 0.45852911472320557 0.45851996541023254
		 4.672582807273218e-17 3.4509232044219971 -0.18289731442928314 -0.18289366364479065
		 0.90686291456222534 -0.56788367033004761 -0.86967790126800537 -0.86966049671173096
		 15.285129547119141 116.74645233154297 378.88037109375 379.07278442382812;
	setAttr ".prgt" 1594;
	setAttr ".ptop" 883;
createNode polyTweak -n "polyTweak13";
	rename -uid "2511B2A8-4231-4D60-E255-1990D352A512";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[32:39]" -type "float3"  1.4210855e-14 -0.57248521
		 0 1.4210855e-14 -0.57248521 0 1.4210855e-14 -0.57248521 0 1.4210855e-14 -0.57248521
		 0 1.4210855e-14 -0.57248521 0 1.4210855e-14 -0.57248521 0 1.4210855e-14 -0.57248521
		 0 1.4210855e-14 -0.57248521 0;
createNode polyMapCut -n "polyMapCut17";
	rename -uid "6B478105-44BF-8284-EFB9-029B30818AC3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[24]" "e[26]" "e[34]" "e[44]";
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "5E335848-403F-E1A8-83B1-5489EAE06676";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" 0.20731887 -0.13355544 ;
	setAttr ".uvtk[5]" -type "float2" 0.031993449 -0.17788514 ;
	setAttr ".uvtk[6]" -type "float2" -0.095481932 0.23519285 ;
	setAttr ".uvtk[7]" -type "float2" 0.2739493 0.32517114 ;
	setAttr ".uvtk[8]" -type "float2" -0.29674894 0.16787226 ;
	setAttr ".uvtk[9]" -type "float2" -0.065746367 -0.21585214 ;
	setAttr ".uvtk[10]" -type "float2" -0.033424556 -0.26368928 ;
	setAttr ".uvtk[12]" -type "float2" 0.25338188 0.23597525 ;
	setAttr ".uvtk[26]" -type "float2" 0.032962114 -0.26091614 ;
	setAttr ".uvtk[28]" -type "float2" -0.099250078 0.23412488 ;
	setAttr ".uvtk[29]" -type "float2" -0.094738543 0.19036517 ;
	setAttr ".uvtk[37]" -type "float2" 0.030154139 -0.17845355 ;
	setAttr ".uvtk[41]" -type "float2" -0.09088856 0.19125363 ;
	setAttr ".uvtk[43]" -type "float2" 0.031082809 -0.26140213 ;
	setAttr ".uvtk[45]" -type "float2" -0.26662296 0.10132369 ;
	setAttr ".uvtk[47]" -type "float2" 0.18205935 -0.18952502 ;
createNode polyMapCut -n "polyMapCut18";
	rename -uid "BEBFF9B0-4D15-5246-6EAA-5498A70B1496";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[37:40]" "e[59]" "e[61:62]";
createNode polyMapCut -n "polyMapCut19";
	rename -uid "40889A28-491B-78B9-D212-29AB6945A4CF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[8]" "e[12]" "e[17]" "e[20]";
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "97CB8DCD-43B4-051E-8D51-EA93608387D6";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.077059522 -0.072571583 ;
	setAttr ".uvtk[3]" -type "float2" 0.096395001 0.1677451 ;
	setAttr ".uvtk[13]" -type "float2" 0.054012291 0.30246469 ;
	setAttr ".uvtk[14]" -type "float2" 0.027164187 -0.22073209 ;
	setAttr ".uvtk[17]" -type "float2" 0.016401498 -0.22343338 ;
	setAttr ".uvtk[22]" -type "float2" -0.010990441 0.16253519 ;
	setAttr ".uvtk[24]" -type "float2" 0.062175825 0.14143008 ;
	setAttr ".uvtk[25]" -type "float2" 0.05905775 0.13733289 ;
	setAttr ".uvtk[27]" -type "float2" -0.2620931 -0.36229104 ;
	setAttr ".uvtk[46]" -type "float2" -0.046823703 -0.031070266 ;
	setAttr ".uvtk[48]" -type "float2" -0.17097381 -0.21991883 ;
	setAttr ".uvtk[49]" -type "float2" 0.0004914701 0.16786364 ;
	setAttr ".uvtk[51]" -type "float2" -0.20979506 -0.41057509 ;
	setAttr ".uvtk[52]" -type "float2" -0.011075139 0.16653416 ;
	setAttr ".uvtk[53]" -type "float2" -0.039954603 0.32389727 ;
	setAttr ".uvtk[54]" -type "float2" -0.21443591 -0.41396278 ;
	setAttr ".uvtk[56]" -type "float2" -0.015480881 -0.16087875 ;
	setAttr ".uvtk[57]" -type "float2" 0.025255913 -0.22405596 ;
	setAttr ".uvtk[58]" -type "float2" 0.064041443 0.14009416 ;
	setAttr ".uvtk[59]" -type "float2" -0.027979754 0.23145756 ;
createNode polyMapCut -n "polyMapCut20";
	rename -uid "A71FF7D7-4A26-6ECD-BD23-9DA134773259";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[58]" "e[63]";
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "26D97328-4763-7655-FC5A-C6BBC2507EE9";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.018940732 -0.021449285 ;
	setAttr ".uvtk[3]" -type "float2" -0.032908157 0.042646885 ;
	setAttr ".uvtk[13]" -type "float2" 0.029449046 0.062400162 ;
	setAttr ".uvtk[14]" -type "float2" -0.013205504 -0.0029577091 ;
	setAttr ".uvtk[17]" -type "float2" 0.049661584 -0.077086419 ;
	setAttr ".uvtk[22]" -type "float2" 0.0088455975 -0.019081086 ;
	setAttr ".uvtk[24]" -type "float2" -0.05584354 -0.003875643 ;
	setAttr ".uvtk[25]" -type "float2" -0.055803299 -0.0050037801 ;
	setAttr ".uvtk[27]" -type "float2" 0.031762749 0.03362599 ;
	setAttr ".uvtk[46]" -type "float2" -0.031427458 -0.037106194 ;
	setAttr ".uvtk[48]" -type "float2" -0.038703859 0.031505246 ;
	setAttr ".uvtk[49]" -type "float2" -0.015476942 -0.017642111 ;
	setAttr ".uvtk[51]" -type "float2" -0.0043749511 0.038894258 ;
	setAttr ".uvtk[52]" -type "float2" 0.010510355 -0.018858045 ;
	setAttr ".uvtk[53]" -type "float2" 0.043880671 -0.020983636 ;
	setAttr ".uvtk[54]" -type "float2" -0.0025666952 0.038576491 ;
	setAttr ".uvtk[56]" -type "float2" 0.063700832 -0.068952084 ;
	setAttr ".uvtk[57]" -type "float2" 0.050040051 -0.078034677 ;
	setAttr ".uvtk[58]" -type "float2" 0.020691678 0.058797568 ;
	setAttr ".uvtk[59]" -type "float2" -0.050213289 0.0069361627 ;
	setAttr ".uvtk[60]" -type "float2" 0.022597536 0.056333482 ;
	setAttr ".uvtk[61]" -type "float2" -0.011675697 0.0013144184 ;
createNode polyMapCut -n "polyMapCut21";
	rename -uid "7EEE28C7-40CC-94FB-DCBD-249C33B72E47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[9]" "e[13]" "e[15]" "e[23]" "e[71]" "e[73]";
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "8B082911-4A0C-8A43-17C8-E98106B6DBE6";
	setAttr ".uopa" yes;
	setAttr -s 68 ".uvtk[0:67]" -type "float2" 0.32017753 0.059590824 -0.36249697
		 0.034902807 -0.034713715 -0.057176717 0.081075802 -0.37019691 -0.089664996 -0.013600556
		 -0.17760497 -0.0017205451 -0.19526532 -0.13244876 -0.10732535 -0.14432874 -0.28444102
		 -0.12040182 -0.26678067 0.010326387 -0.28100008 0.012247326 -0.83391738 -0.13022563
		 -0.093105957 -0.14624968 0.0047741681 -0.52201313 0.39868358 0.02193683 -0.39279166
		 -0.077579588 -0.38857889 -0.078495383 0.35896382 0.12930954 -0.80455518 -0.23296547
		 -0.30031034 -0.27554762 -0.2985155 -0.27232003 -0.76141262 -0.26057792 -0.24682561
		 -0.2790736 0.0027638897 -0.13418558 0.15446605 -0.41704664 0.15079448 -0.40898314
		 -0.17568403 0.012498844 0.11363691 0.36875924 -0.19650099 -0.13228184 -0.1984219
		 -0.14650121 -0.39953408 -0.079798236 -0.3951506 -0.080663145 -0.3689487 0.03246472
		 -0.03927514 -0.059238933 -0.0049038827 -0.13575181 -0.0019402504 -0.13616429 0.025540084
		 -0.055253424 -0.17884061 -0.0015536223 -0.75910032 -0.13374084 -0.32949048 -0.20368788
		 -0.43565679 0.040821068 -0.19718626 -0.14666817 0.030180752 -0.053141706 -0.1769197
		 0.012665767 -0.33129251 -0.26520547 -0.29866046 -0.11848088 0.47271758 -0.01925011
		 -0.075445607 -0.01552148 0.031062394 0.22043285 -0.20803936 -0.20935485 -0.00028344989
		 -0.13381323 0.069848627 0.29015157 -0.24934001 -0.28369561 -0.29052708 -0.35772967
		 0.072450072 0.29472527 -0.42904544 0.043335341 0.40893814 0.20447583 0.36775115 0.13044181
		 0.045961112 -0.44797909 0.22850005 -0.45823362 0.042289525 -0.43991557 0.38989618
		 0.020804577 -0.32863688 -0.30244142 -0.79153401 -0.23045653 -0.77181029 -0.19233276
		 -0.77443385 -0.26308683 -0.33043164 -0.30566898 -0.26918536 -0.2030984;
createNode polyPlanarProj -n "polyPlanarProj6";
	rename -uid "CF270B24-410E-43EA-8F8D-539AFAE93309";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:12]";
	setAttr ".ix" -type "matrix" 210 0 0 0 0 43 0 0 0 0 155 0 -105.84789631283753 -19.432581061052247 6.4303992063918791e-06 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -158.71420288085938 -32.502857208251953 42.083122253417969 ;
	setAttr ".ro" -type "double3" -35.138353181775187 -58.200000172368092 8.8878502657517652e-07 ;
	setAttr ".ps" -type "double2" 115.14541831470014 86.273547063994442 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 1.0246362686157227 1.7170083522796631 0.69502609968185425 0.69501221179962158
		 -2.7825227531928329e-17 2.8704597949981689 -0.57556426525115967 -0.57555276155471802
		 1.6525691747665405 -1.0645902156829834 -0.43093442916870117 -0.43092581629753113
		 -9.3597078323364258 350.2786865234375 371.78427124023438 371.97683715820312;
	setAttr ".prgt" 1594;
	setAttr ".ptop" 883;
createNode polyTweak -n "polyTweak14";
	rename -uid "A700D1F2-466E-2787-F41A-DE9AF9DBFAEF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 -0.3565751 0 0 -0.3565751
		 0 0 -0.3565751 0 0 -0.3565751 0;
createNode polyMapCut -n "polyMapCut22";
	rename -uid "70B874DA-4049-22E9-F60F-AEBD6E2CBB51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[2]" "e[7]" "e[9]";
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "BD297042-45A8-054E-A91A-29A31B7527FF";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.061259568 0.082800925 ;
	setAttr ".uvtk[3]" -type "float2" 0.18939486 -0.16812687 ;
	setAttr ".uvtk[7]" -type "float2" 0.12159166 0.021214616 ;
	setAttr ".uvtk[8]" -type "float2" -0.15034312 0.13359535 ;
	setAttr ".uvtk[9]" -type "float2" -0.17891699 0.13975281 ;
	setAttr ".uvtk[10]" -type "float2" 0.1399122 -0.065378293 ;
	setAttr ".uvtk[11]" -type "float2" 0.093912296 -0.20165245 ;
	setAttr ".uvtk[12]" -type "float2" -0.058667958 0.072301447 ;
	setAttr ".uvtk[13]" -type "float2" 0.17717367 -0.16916595 ;
	setAttr ".uvtk[14]" -type "float2" -0.20426735 0.14196044 ;
	setAttr ".uvtk[15]" -type "float2" 0.081202373 -0.19365038 ;
	setAttr ".uvtk[19]" -type "float2" -0.21324584 0.15692317 ;
createNode polyMapCut -n "polyMapCut23";
	rename -uid "FE72087B-4B60-7B3D-C6D2-3B9B17B19A98";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[12:13]" "e[15]" "e[17]" "e[20:21]" "e[23]" "e[25]";
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "C0FF0D6B-48BA-5185-2186-669419E80CCB";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.094474912 0.0734694 ;
	setAttr ".uvtk[3]" -type "float2" 0.078148007 0.083630562 ;
	setAttr ".uvtk[7]" -type "float2" 0.020635307 0.015748862 ;
	setAttr ".uvtk[8]" -type "float2" -0.023859441 0.013664901 ;
	setAttr ".uvtk[9]" -type "float2" -0.020302802 -0.015819967 ;
	setAttr ".uvtk[10]" -type "float2" 0.02339761 -0.014119834 ;
	setAttr ".uvtk[11]" -type "float2" 0.028637789 0.044732049 ;
	setAttr ".uvtk[12]" -type "float2" -0.089300871 0.075102866 ;
	setAttr ".uvtk[13]" -type "float2" 0.076743782 0.078420192 ;
	setAttr ".uvtk[14]" -type "float2" -0.076085091 -0.078369975 ;
	setAttr ".uvtk[15]" -type "float2" 0.088763215 -0.075022824 ;
	setAttr ".uvtk[19]" -type "float2" 0.040703207 -0.018513083 ;
	setAttr ".uvtk[20]" -type "float2" 0.023705341 0.043105468 ;
	setAttr ".uvtk[21]" -type "float2" 0.042043179 -0.013312101 ;
	setAttr ".uvtk[22]" -type "float2" -0.041384518 0.013362318 ;
	setAttr ".uvtk[23]" -type "float2" -0.024242997 -0.043025434 ;
	setAttr ".uvtk[24]" -type "float2" 0.093695663 -0.073396251 ;
	setAttr ".uvtk[25]" -type "float2" -0.077425092 -0.083570957 ;
	setAttr ".uvtk[26]" -type "float2" -0.039980292 0.018572688 ;
	setAttr ".uvtk[27]" -type "float2" -0.029417038 -0.044658899 ;
createNode polyMapCut -n "polyMapCut24";
	rename -uid "C08A7F81-4D97-CD6C-A9FF-4AB2A65ED827";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1]" "e[3]";
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "A04F7D5D-42C4-9294-D91D-3387DD34DFDC";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk[0:29]" -type "float2" -0.024179742 0.038247555
		 -0.73771608 -0.47308058 -0.61035222 -0.59796751 -0.26704061 0.17224227 0.42176878
		 -0.078846708 -0.34387791 -0.48384482 -0.36473662 -0.57855791 -0.17407937 0.089109838
		 -0.52964944 -0.49501538 -0.13282596 -0.73657066 0.22274406 -0.15244544 0.33928496
		 -0.19684161 -0.58540422 -0.58660847 -0.2656725 0.14486462 -0.041232876 -0.79232544
		 0.27849883 -0.060852371 -0.0015694308 -0.10500411 0.49189234 -0.18596859 -0.7710678
		 -0.57309872 -0.18721288 -0.85554188 0.31433713 -0.20820019 -0.18858075 -0.82816374
		 -0.11832466 0.18070292 -0.62124252 -0.4392606 0.30344665 -0.049493775 -0.039865024
		 -0.81970358 -0.11969277 0.2080806 -0.64619052 -0.4506197 0.030559622 -0.072875135
		 -0.73893887 -0.60522777;
createNode standardSurface -n "standardSurface2";
	rename -uid "EA763FF4-4906-E156-486A-A89620E6C3A3";
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
createNode shadingEngine -n "trimsheet_bedframeSG";
	rename -uid "EEDEF0A4-4A18-9664-03A9-4DA3F6A155F0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "3D218F5C-4001-CCCB-C0F2-018290357CC3";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "A607041A-4986-B36E-481D-C9AEC2370BA1";
createNode file -n "file1";
	rename -uid "DB3FAF9B-40FF-7798-4F28-0A89AD4B5A60";
	setAttr ".ftn" -type "string" "C:/Users/saiye/Desktop/Y2S1/IP/Modelling/Exports/Trimsheets/trimsheet_for_modular_assets/bedframe/trimsheet_bedframe_standardSurface1_AlbedoTransparency.1001.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file2";
	rename -uid "291D3666-412E-ADDD-12D7-CB8DD53B6004";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/saiye/Desktop/Y2S1/IP/Modelling/Exports/Trimsheets/trimsheet_for_modular_assets/bedframe/trimsheet_bedframe_standardSurface1_MetallicSmoothness.1001.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file3";
	rename -uid "574C3253-4502-F3C3-FB4B-89BCCFC30755";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/saiye/Desktop/Y2S1/IP/Modelling/Exports/Trimsheets/trimsheet_for_modular_assets/bedframe/trimsheet_bedframe_standardSurface1_Normal.1001.png";
	setAttr ".cs" -type "string" "Raw";
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "8DC56D76-4CDF-0BA7-DCA1-79A2A4210A94";
createNode aiStandardSurface -n "bedframe";
	rename -uid "31E40867-48AF-B964-3DFD-368DD9409D47";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set1";
	rename -uid "58C12DA0-4A4A-5ED1-7F38-ABA6D056F24F";
	setAttr ".ihi" 0;
	setAttr -s 14 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "08B60743-43B2-C7EE-71F1-78BC5F9AA9BF";
createNode bump2d -n "bump2d1";
	rename -uid "34ABB07F-4B69-D4C1-6B68-9A9C1AF2C41C";
	setAttr ".bi" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "63BCF90F-4A9C-F95A-C15F-8D95B6DD9865";
	setAttr ".uopa" yes;
	setAttr -s 78 ".uvtk[0:77]" -type "float2" 0.31676698 -0.18982269 0.070088923
		 -0.18869036 0.22051871 -0.15745813 -0.026159346 -0.1563258 0.0326792 0.14360863 -0.21399885
		 0.144741 -0.063569069 0.17597318 -0.31024712 0.17710555 -0.2492716 0.47077072 -0.49594969
		 0.47190297 0.3648864 -0.0029878153 0.26863813 0.029376745 0.021969497 -0.37552524
		 -0.074278764 -0.34316069 0.28392023 -0.16425216 0.21372467 -0.22085966 0.3801685
		 -0.19661672 -0.24247758 0.53417218 -0.48915565 0.53530455 0.0066874027 -0.18189633
		 -0.032953382 -0.21972734 -0.089560866 -0.14953177 -0.13768014 -0.33636656 0.039473325
		 0.20701003 -0.041431889 -0.36873111 -0.070363194 0.11257184 -0.31704125 0.11370414
		 0.42828786 -0.0097819371 -0.20720473 0.20814234 0.33203959 0.02258262 0.2769849 -0.16787502
		 0.20246416 -0.21560219 0.37574002 -0.20759472 -0.23149957 0.52974367 -0.47817764
		 0.53087604 0.011115909 -0.17091832 -0.044213951 -0.21446985 -0.08763963 -0.13119879
		 -0.13575876 -0.31803349 0.050733984 0.20175239 -0.037003398 -0.3577531 -0.081341177
		 0.11700028 -0.32801926 0.11813265 0.42385936 -0.02075994 -0.1959441 0.2028847 0.325104
		 0.018959671 0.20738304 -0.17840734 0.17679471 -0.1495548 0.31113064 -0.23277397 -0.20632033
		 0.46513444 -0.4529984 0.46626669 0.075725257 -0.14573908 -0.069883347 -0.14842248
		 -0.028023064 -0.091372684 -0.076141894 -0.2782073 0.076403469 0.13570479 0.027605981
		 -0.33257386 -0.10652044 0.18160975 -0.3531985 0.182742 0.35925001 -0.045939196 -0.17027462
		 0.13683715 0.25550193 0.0084272921 0.10842982 -0.1986337 0.14323246 -0.054179251
		 0.2166225 -0.26604056 -0.17305373 0.37062621 -0.4197318 0.37175858 0.17023337 -0.11247248
		 -0.10344559 -0.053046912 0.06204015 -0.04506579 0.013921484 -0.23190036 0.10996577
		 0.040329099 0.12211423 -0.2993072 -0.13978709 0.27611792 -0.38646513 0.27725029 0.26474166
		 -0.079205841 -0.13671228 0.041461438 0.1565485 -0.011799127;
createNode polyMapCut -n "polyMapCut25";
	rename -uid "4243FD7F-4944-8A71-2309-8AA72F3A52BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1]" "e[4:5]";
createNode polyTweak -n "polyTweak15";
	rename -uid "8D64BBEA-4788-CC87-C7BA-589746173FA5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[32]" -type "float3" 0 0.046182375 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.046182375 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.046182375 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.046182375 0 ;
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "1AA1F2E5-40F7-BED3-B0DD-F58281EE53CC";
	setAttr ".uopa" yes;
	setAttr -s 80 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.16252142 0.19692552 ;
	setAttr ".uvtk[2]" -type "float2" 0.09244439 0.011005283 ;
	setAttr ".uvtk[3]" -type "float2" -0.38725218 0.081170797 ;
	setAttr ".uvtk[4]" -type "float2" 0.09244439 0.011005276 ;
	setAttr ".uvtk[5]" -type "float2" 0.09244436 0.011005276 ;
	setAttr ".uvtk[6]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[7]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[8]" -type "float2" 0.092444375 0.011005246 ;
	setAttr ".uvtk[9]" -type "float2" 0.092444375 0.011005246 ;
	setAttr ".uvtk[10]" -type "float2" -0.7098825 0.010761066 ;
	setAttr ".uvtk[11]" -type "float2" -0.61280096 -0.10613929 ;
	setAttr ".uvtk[12]" -type "float2" 0.064344659 0.3863489 ;
	setAttr ".uvtk[13]" -type "float2" 0.16252141 0.26876587 ;
	setAttr ".uvtk[14]" -type "float2" -0.056044638 0.086272672 ;
	setAttr ".uvtk[15]" -type "float2" 0.09244436 0.011005283 ;
	setAttr ".uvtk[16]" -type "float2" -0.15422136 0.20385571 ;
	setAttr ".uvtk[17]" -type "float2" 0.09244439 0.011005246 ;
	setAttr ".uvtk[18]" -type "float2" 0.092444375 0.011005246 ;
	setAttr ".uvtk[19]" -type "float2" -0.49258545 0.19121826 ;
	setAttr ".uvtk[20]" -type "float2" 0.09244436 0.011005283 ;
	setAttr ".uvtk[21]" -type "float2" -0.395504 0.074317962 ;
	setAttr ".uvtk[22]" -type "float2" 0.15422127 0.26183563 ;
	setAttr ".uvtk[23]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[24]" -type "float2" 0.056044534 0.37941861 ;
	setAttr ".uvtk[25]" -type "float2" 0.09244439 0.011005276 ;
	setAttr ".uvtk[26]" -type "float2" 0.09244439 0.011005276 ;
	setAttr ".uvtk[27]" -type "float2" -0.70163059 0.017613981 ;
	setAttr ".uvtk[28]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[29]" -type "float2" -0.60454917 -0.099286333 ;
	setAttr ".uvtk[30]" -type "float2" -0.040076017 0.094407707 ;
	setAttr ".uvtk[31]" -type "float2" 0.09244436 0.011005283 ;
	setAttr ".uvtk[32]" -type "float2" -0.14080989 0.21505365 ;
	setAttr ".uvtk[33]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[34]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[35]" -type "float2" -0.5059191 0.18014523 ;
	setAttr ".uvtk[36]" -type "float2" 0.09244436 0.011005283 ;
	setAttr ".uvtk[37]" -type "float2" -0.40630874 0.060199969 ;
	setAttr ".uvtk[38]" -type "float2" 0.14336716 0.24757484 ;
	setAttr ".uvtk[39]" -type "float2" 0.09244436 0.011005306 ;
	setAttr ".uvtk[40]" -type "float2" 0.042633086 0.36822069 ;
	setAttr ".uvtk[41]" -type "float2" 0.09244439 0.011005276 ;
	setAttr ".uvtk[42]" -type "float2" 0.09244439 0.011005276 ;
	setAttr ".uvtk[43]" -type "float2" -0.68829691 0.028687023 ;
	setAttr ".uvtk[44]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[45]" -type "float2" -0.58868676 -0.091258302 ;
	setAttr ".uvtk[46]" -type "float2" -0.0042228103 0.11399212 ;
	setAttr ".uvtk[47]" -type "float2" 0.09244439 0.011005291 ;
	setAttr ".uvtk[48]" -type "float2" -0.1100494 0.24073741 ;
	setAttr ".uvtk[49]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[50]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[51]" -type "float2" -0.53650087 0.15474804 ;
	setAttr ".uvtk[52]" -type "float2" 0.09244439 0.011005291 ;
	setAttr ".uvtk[53]" -type "float2" -0.43185478 0.028738923 ;
	setAttr ".uvtk[54]" -type "float2" 0.11769918 0.21579173 ;
	setAttr ".uvtk[55]" -type "float2" 0.09244436 0.011005276 ;
	setAttr ".uvtk[56]" -type "float2" 0.01187253 0.34253693 ;
	setAttr ".uvtk[57]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[58]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[59]" -type "float2" -0.65771496 0.05408423 ;
	setAttr ".uvtk[60]" -type "float2" 0.09244436 0.011005276 ;
	setAttr ".uvtk[61]" -type "float2" -0.55306888 -0.07192497 ;
	setAttr ".uvtk[62]" -type "float2" 0.040951848 0.14249504 ;
	setAttr ".uvtk[63]" -type "float2" 0.09244439 0.011005276 ;
	setAttr ".uvtk[64]" -type "float2" -0.069408804 0.27467054 ;
	setAttr ".uvtk[65]" -type "float2" 0.09244439 0.011005246 ;
	setAttr ".uvtk[66]" -type "float2" 0.09244439 0.011005246 ;
	setAttr ".uvtk[67]" -type "float2" -0.57690549 0.12119347 ;
	setAttr ".uvtk[68]" -type "float2" 0.09244439 0.011005276 ;
	setAttr ".uvtk[69]" -type "float2" -0.46777594 -0.010214411 ;
	setAttr ".uvtk[70]" -type "float2" 0.08159256 0.17642823 ;
	setAttr ".uvtk[71]" -type "float2" 0.09244436 0.011005291 ;
	setAttr ".uvtk[72]" -type "float2" -0.028768122 0.30860376 ;
	setAttr ".uvtk[73]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[74]" -type "float2" 0.09244439 0.011005306 ;
	setAttr ".uvtk[75]" -type "float2" -0.61731023 0.087638855 ;
	setAttr ".uvtk[76]" -type "float2" 0.09244436 0.011005291 ;
	setAttr ".uvtk[77]" -type "float2" -0.50818062 -0.043769047 ;
	setAttr ".uvtk[78]" -type "float2" -0.4843336 0.19807112 ;
	setAttr ".uvtk[80]" -type "float2" 0.09244439 0.011005283 ;
	setAttr ".uvtk[83]" -type "float2" -0.064344704 0.079342484 ;
createNode polyMapCut -n "polyMapCut26";
	rename -uid "69DE5DE0-4915-F65F-3DDF-C88E97D6F724";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[0]" "e[2:3]" "e[8:11]" "e[13:14]" "e[17]" "e[20:23]" "e[25]" "e[27]" "e[29:30]" "e[33]" "e[36:39]" "e[41]" "e[43:47]" "e[49]" "e[52:55]" "e[57]" "e[59:63]" "e[65]" "e[67:71]" "e[73]" "e[75]";
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "A2DD30D6-4BAD-2B81-C10D-3EB89EE225C2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" 0.29186499 -0.80616975 ;
	setAttr ".uvtk[7]" -type "float2" 0.29186499 -0.80616975 ;
	setAttr ".uvtk[110]" -type "float2" 0.29186499 -0.80616975 ;
	setAttr ".uvtk[113]" -type "float2" 0.29186505 -0.80616975 ;
createNode polyMapSewMove -n "polyMapSewMove1";
	rename -uid "19CD8EF9-4A73-083B-22C1-158A7EB49480";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[17]" "e[33]";
createNode polyMapCut -n "polyMapCut27";
	rename -uid "3F5EDF16-4324-ACD1-A462-FEBE40D46497";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[25]" "e[41]" "e[49]" "e[57]" "e[65]" "e[73]";
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "AF51294B-4360-16AA-9653-0BA575939C1F";
	setAttr ".uopa" yes;
createNode polyMapSewMove -n "polyMapSewMove2";
	rename -uid "0800D323-46B4-6111-E64C-8092E45CD05D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[25]" "e[41]" "e[49]" "e[57]" "e[65]" "e[73]";
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "A6F56DB4-405C-2201-4EE8-88914A42081F";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" 0.61669242 -0.83215833 ;
	setAttr ".uvtk[8]" -type "float2" 0.2268185 -1.3757354 ;
	setAttr ".uvtk[9]" -type "float2" 0.2235041 -1.3733581 ;
	setAttr ".uvtk[17]" -type "float2" 0.24108237 -1.3558483 ;
	setAttr ".uvtk[18]" -type "float2" 0.23776785 -1.353471 ;
	setAttr ".uvtk[25]" -type "float2" 0.60242856 -0.85204577 ;
	setAttr ".uvtk[26]" -type "float2" 0.59911394 -0.84966844 ;
	setAttr ".uvtk[33]" -type "float2" 0.26413018 -1.3237141 ;
	setAttr ".uvtk[34]" -type "float2" 0.26081562 -1.3213369 ;
	setAttr ".uvtk[41]" -type "float2" 0.57938063 -0.88417989 ;
	setAttr ".uvtk[42]" -type "float2" 0.57606614 -0.88180262 ;
	setAttr ".uvtk[49]" -type "float2" 0.3169927 -1.250011 ;
	setAttr ".uvtk[50]" -type "float2" 0.31367826 -1.2476337 ;
	setAttr ".uvtk[57]" -type "float2" 0.52651799 -0.95788312 ;
	setAttr ".uvtk[58]" -type "float2" 0.52320355 -0.95550561 ;
	setAttr ".uvtk[65]" -type "float2" 0.38683444 -1.152635 ;
	setAttr ".uvtk[66]" -type "float2" 0.38351995 -1.1502578 ;
	setAttr ".uvtk[73]" -type "float2" 0.45667627 -1.055259 ;
	setAttr ".uvtk[74]" -type "float2" 0.45336175 -1.0528817 ;
	setAttr ".uvtk[96]" -type "float2" 0.61337793 -0.82978106 ;
createNode polyMapSewMove -n "polyMapSewMove3";
	rename -uid "8C3B394C-40DE-9967-8960-9999DFD2089D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[27]" "e[43]" "e[59]" "e[67]" "e[75]";
createNode polyTweakUV -n "polyTweakUV24";
	rename -uid "3220102C-4D1A-E716-30E4-0F83752A8A4A";
	setAttr ".uopa" yes;
	setAttr -s 49 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 0.28513816 0.24386585 ;
	setAttr ".uvtk[2]" -type "float2" 0.27386591 -0.00084558129 ;
	setAttr ".uvtk[4]" -type "float2" 0.17554653 0.19814555 ;
	setAttr ".uvtk[5]" -type "float2" -0.47470269 -0.54043221 ;
	setAttr ".uvtk[6]" -type "float2" -0.049623363 -0.0021062279 ;
	setAttr ".uvtk[7]" -type "float2" -0.68352115 -0.074995205 ;
	setAttr ".uvtk[8]" -type "float2" -0.43224525 -0.0012948969 ;
	setAttr ".uvtk[9]" -type "float2" -0.43224031 0.0010381034 ;
	setAttr ".uvtk[15]" -type "float2" 0.24690923 -0.02052471 ;
	setAttr ".uvtk[17]" -type "float2" -0.41824675 -0.0013246173 ;
	setAttr ".uvtk[18]" -type "float2" -0.41824189 0.0010084575 ;
	setAttr ".uvtk[20]" -type "float2" 0.24362954 -0.016031906 ;
	setAttr ".uvtk[23]" -type "float2" -0.44446582 -0.52524579 ;
	setAttr ".uvtk[25]" -type "float2" -0.063621879 -0.0020765821 ;
	setAttr ".uvtk[26]" -type "float2" -0.063616991 0.00025648531 ;
	setAttr ".uvtk[28]" -type "float2" -0.44774559 -0.52075291 ;
	setAttr ".uvtk[31]" -type "float2" 0.2022309 -0.053140901 ;
	setAttr ".uvtk[33]" -type "float2" -0.39562768 -0.0013725618 ;
	setAttr ".uvtk[34]" -type "float2" -0.39562279 0.00096051302 ;
	setAttr ".uvtk[36]" -type "float2" 0.19895115 -0.048648261 ;
	setAttr ".uvtk[39]" -type "float2" -0.39978707 -0.49262911 ;
	setAttr ".uvtk[41]" -type "float2" -0.086241059 -0.0020286376 ;
	setAttr ".uvtk[42]" -type "float2" -0.086235993 0.00030443724 ;
	setAttr ".uvtk[44]" -type "float2" -0.40306687 -0.48813632 ;
	setAttr ".uvtk[47]" -type "float2" 0.10038278 -0.12749273 ;
	setAttr ".uvtk[49]" -type "float2" -0.34374842 -0.0014824802 ;
	setAttr ".uvtk[50]" -type "float2" -0.34374344 0.00085051265 ;
	setAttr ".uvtk[52]" -type "float2" 0.097102858 -0.12299988 ;
	setAttr ".uvtk[55]" -type "float2" -0.29793847 -0.41827717 ;
	setAttr ".uvtk[57]" -type "float2" -0.13812038 -0.0019186446 ;
	setAttr ".uvtk[58]" -type "float2" -0.13811544 0.00041451212 ;
	setAttr ".uvtk[60]" -type "float2" -0.30121833 -0.41378441 ;
	setAttr ".uvtk[63]" -type "float2" -0.032781862 -0.22470608 ;
	setAttr ".uvtk[65]" -type "float2" -0.27520567 -0.0016278112 ;
	setAttr ".uvtk[66]" -type "float2" -0.27520081 0.00070518907 ;
	setAttr ".uvtk[68]" -type "float2" -0.036061786 -0.22021344 ;
	setAttr ".uvtk[71]" -type "float2" -0.16477364 -0.32106355 ;
	setAttr ".uvtk[73]" -type "float2" -0.20666304 -0.0017732242 ;
	setAttr ".uvtk[74]" -type "float2" -0.20665815 0.0005598506 ;
	setAttr ".uvtk[76]" -type "float2" -0.16805351 -0.31657073 ;
	setAttr ".uvtk[79]" -type "float2" -0.57059753 -0.039342228 ;
	setAttr ".uvtk[80]" -type "float2" 0.27058616 0.0036470667 ;
	setAttr ".uvtk[81]" -type "float2" 0.28846988 0.23379833 ;
	setAttr ".uvtk[82]" -type "float2" -0.56726587 -0.049409743 ;
	setAttr ".uvtk[84]" -type "float2" 0.17221463 0.20821288 ;
	setAttr ".uvtk[85]" -type "float2" -0.4714227 -0.54492486 ;
	setAttr ".uvtk[86]" -type "float2" -0.049618416 0.00022685435 ;
	setAttr ".uvtk[87]" -type "float2" -0.68018895 -0.085062563 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "073B3E40-426C-4FC6-FC48-3DA4A6FA54A0";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -83.421513439976977 -1120.3262341418472 ;
	setAttr ".tgi[0].vh" -type "double2" 297.35448553869173 98.456786211135608 ;
createNode polyChipOff -n "polyChipOff2";
	rename -uid "DDFE3963-43D3-9B6E-FDE6-C5935256C4D6";
	setAttr ".ics" -type "componentList" 2 "f[1:3]" "f[25]";
	setAttr ".ix" -type "matrix" 210 0 0 0 0 43 0 0 0 0 155 0 -105.84789631283753 -19.432581061052247 1.2789769243681803e-13 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -105.84789 -19.432581 1.2789769e-13 ;
	setAttr ".rs" 54406;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate2";
	rename -uid "98C2F89A-4BCB-92A7-1E69-3892BF11A715";
	setAttr ".ic" 3;
	setAttr -s 3 ".out";
createNode groupId -n "groupId8";
	rename -uid "7C330E8A-4D7C-546D-8A28-67A6BD29F373";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "42FE90AE-4813-4BDB-7E92-91BF7C6D88AD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:33]";
createNode groupId -n "groupId9";
	rename -uid "A31439BD-428B-7B5E-7A4C-ECB0AE5E7A9B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "71B329C2-4731-9FE7-9746-E3BA23CBF6D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "88C37ADA-4948-E8A8-F17B-6EB450FA041D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId11";
	rename -uid "0EEBFCF2-48E1-6E25-C125-ECA37D11B8F0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "6C538CE4-440B-7881-0387-808E5E1E4BF3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1]";
createNode groupId -n "groupId12";
	rename -uid "6403D044-4C98-F5F0-EE20-D283E0009437";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "226E21E4-44E1-B9D6-7573-DEA1B7AFC6D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1]";
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "387B4B7D-41FE-2003-E0EB-518A36CD9BAC";
	setAttr ".ics" -type "componentList" 1 "f[0:1]";
	setAttr ".ix" -type "matrix" 210 0 0 0 0 43 0 0 0 0 155 0 -105.84789631283753 -19.432581061052247 1.2789769243681803e-13 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -158.71422 -32.502857 1.2789769e-13 ;
	setAttr ".rs" 39940;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 1.6000000238418579;
	setAttr ".cbn" -type "double3" -210.84792134678833 -40.932579779552384 -77.499999999999872 ;
	setAttr ".cbx" -type "double3" -106.58050236618989 -24.07313683025734 77.500000000000128 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "E4D606E8-4B02-0518-36F9-3B98516BCD49";
	setAttr ".ics" -type "componentList" 1 "f[0:1]";
	setAttr ".ix" -type "matrix" 210 0 0 0 0 43 0 0 0 0 155 0 -105.84789631283753 -19.432581061052247 1.2789769243681803e-13 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -52.981644 -32.502857 1.2789769e-13 ;
	setAttr ".rs" 53423;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 1.6000000238418579;
	setAttr ".cbn" -type "double3" -105.11541542923921 -40.932579779552384 -77.499999999999872 ;
	setAttr ".cbx" -type "double3" -0.84787127888672842 -24.07313683025734 77.500000000000128 ;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "3B4328E3-466F-B7C7-7B95-298BABF80B72";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
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
connectAttr "polyTweakUV24.out" "bedframe_headShape.i";
connectAttr "polyTweakUV24.uvtk[0]" "bedframe_headShape.uvst[0].uvtw";
connectAttr "polyTweakUV18.out" "drawerShape.i";
connectAttr "polyTweakUV18.uvtk[0]" "drawerShape.uvst[0].uvtw";
connectAttr "groupParts3.og" "polySurfaceShape9.i";
connectAttr "groupId10.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr "set1.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "polyExtrudeFace6.out" "polySurfaceShape10.i";
connectAttr "groupId11.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr "set1.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "polyExtrudeFace7.out" "polySurfaceShape11.i";
connectAttr "groupId12.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr "set1.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts2.og" "polySurfaceShape2.i";
connectAttr "groupId8.id" "polySurfaceShape2.iog.og[3].gid";
connectAttr "set1.mwc" "polySurfaceShape2.iog.og[3].gco";
connectAttr "polyTweakUV15.uvtk[0]" "polySurfaceShape2.uvst[0].uvtw";
connectAttr "groupId9.id" "polySurfaceShape2.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCubeShape2.iog.og[4].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[4].gco";
connectAttr "groupParts1.og" "pCubeShape2.i";
connectAttr "groupId2.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "polyTweakUV11.out" "mattress_and_blanketsShape.i";
connectAttr "polyTweakUV11.uvtk[0]" "mattress_and_blanketsShape.uvst[0].uvtw";
connectAttr "polyTweakUV4.out" "cushion_LShape.i";
connectAttr "polyTweakUV4.uvtk[0]" "cushion_LShape.uvst[0].uvtw";
connectAttr "polyTweakUV2.out" "cushion_RShape.i";
connectAttr "polyTweakUV2.uvtk[0]" "cushion_RShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CubeFBXASC046002SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "trimsheet_bedframeSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CubeFBXASC046002SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "trimsheet_bedframeSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polyTweak1.out" "polySplit3.ip";
connectAttr "polySplit2.out" "polyTweak1.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polyTweak2.out" "polySplit5.ip";
connectAttr "polySplit4.out" "polyTweak2.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polyTweak3.out" "polySplit7.ip";
connectAttr "polySplit6.out" "polyTweak3.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polyCube2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak4.out" "polySplit9.ip";
connectAttr "polyExtrudeFace1.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplit10.ip";
connectAttr "polySplit9.out" "polyTweak5.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polyTweak6.out" "polyChipOff1.ip";
connectAttr "pCubeShape2.wm" "polyChipOff1.mp";
connectAttr "polySplit11.out" "polyTweak6.ip";
connectAttr "pCubeShape2.o" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySeparate1.out[0]" "polyExtrudeEdge1.ip";
connectAttr "drawerShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace2.ip";
connectAttr "drawerShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace3.ip";
connectAttr "drawerShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace4.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polySeparate1.out[1]" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyBevel1.ip";
connectAttr "mattress_and_blanketsShape.wm" "polyBevel1.mp";
connectAttr "polyCube3.out" "polyTweak10.ip";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "mattress_and_blanketsShape.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polyExtrudeFace5.ip";
connectAttr "mattress_and_blanketsShape.wm" "polyExtrudeFace5.mp";
connectAttr "MaterialFBXASC046026.oc" "CubeFBXASC046002SG.ss";
connectAttr "CubeFBXASC046002SG.msg" "materialInfo1.sg";
connectAttr "MaterialFBXASC046026.msg" "materialInfo1.m";
connectAttr "polyCube4.out" "polyBevel3.ip";
connectAttr "cushion_LShape.wm" "polyBevel3.mp";
connectAttr "polySurfaceShape8.o" "polyPlanarProj1.ip";
connectAttr "cushion_RShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV2.ip";
connectAttr "polyBevel3.out" "polyPlanarProj2.ip";
connectAttr "cushion_LShape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV4.ip";
connectAttr "polyTweak11.out" "polyPlanarProj3.ip";
connectAttr "mattress_and_blanketsShape.wm" "polyPlanarProj3.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyMapCut7.ip";
connectAttr "polyPlanarProj3.out" "polyTweak12.ip";
connectAttr "polyMapCut7.out" "polyMapDel1.ip";
connectAttr "polyMapDel1.out" "polyPlanarProj4.ip";
connectAttr "mattress_and_blanketsShape.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapCut12.ip";
connectAttr "polyMapCut12.out" "polyMapCut13.ip";
connectAttr "polyMapCut13.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapCut15.ip";
connectAttr "polyMapCut15.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyMapCut16.ip";
connectAttr "polyMapCut16.out" "polyTweakUV11.ip";
connectAttr "polyTweak13.out" "polyPlanarProj5.ip";
connectAttr "polySurfaceShape2.wm" "polyPlanarProj5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak13.ip";
connectAttr "polyPlanarProj5.out" "polyMapCut17.ip";
connectAttr "polyMapCut17.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyMapCut18.ip";
connectAttr "polyMapCut18.out" "polyMapCut19.ip";
connectAttr "polyMapCut19.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyMapCut20.ip";
connectAttr "polyMapCut20.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyMapCut21.ip";
connectAttr "polyMapCut21.out" "polyTweakUV15.ip";
connectAttr "polyTweak14.out" "polyPlanarProj6.ip";
connectAttr "drawerShape.wm" "polyPlanarProj6.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak14.ip";
connectAttr "polyPlanarProj6.out" "polyMapCut22.ip";
connectAttr "polyMapCut22.out" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyMapCut23.ip";
connectAttr "polyMapCut23.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyMapCut24.ip";
connectAttr "polyMapCut24.out" "polyTweakUV18.ip";
connectAttr "standardSurface2.oc" "trimsheet_bedframeSG.ss";
connectAttr "trimsheet_bedframeSG.msg" "materialInfo2.sg";
connectAttr "standardSurface2.msg" "materialInfo2.m";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture1.o" "file2.uv";
connectAttr "place2dTexture1.ofs" "file2.fs";
connectAttr "place2dTexture1.c" "file2.c";
connectAttr "place2dTexture1.tf" "file2.tf";
connectAttr "place2dTexture1.rf" "file2.rf";
connectAttr "place2dTexture1.mu" "file2.mu";
connectAttr "place2dTexture1.mv" "file2.mv";
connectAttr "place2dTexture1.s" "file2.s";
connectAttr "place2dTexture1.wu" "file2.wu";
connectAttr "place2dTexture1.wv" "file2.wv";
connectAttr "place2dTexture1.re" "file2.re";
connectAttr "place2dTexture1.of" "file2.of";
connectAttr "place2dTexture1.r" "file2.ro";
connectAttr "place2dTexture1.n" "file2.n";
connectAttr "place2dTexture1.vt1" "file2.vt1";
connectAttr "place2dTexture1.vt2" "file2.vt2";
connectAttr "place2dTexture1.vt3" "file2.vt3";
connectAttr "place2dTexture1.vc1" "file2.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture1.o" "file3.uv";
connectAttr "place2dTexture1.ofs" "file3.fs";
connectAttr "place2dTexture1.c" "file3.c";
connectAttr "place2dTexture1.tf" "file3.tf";
connectAttr "place2dTexture1.rf" "file3.rf";
connectAttr "place2dTexture1.mu" "file3.mu";
connectAttr "place2dTexture1.mv" "file3.mv";
connectAttr "place2dTexture1.s" "file3.s";
connectAttr "place2dTexture1.wu" "file3.wu";
connectAttr "place2dTexture1.wv" "file3.wv";
connectAttr "place2dTexture1.re" "file3.re";
connectAttr "place2dTexture1.of" "file3.of";
connectAttr "place2dTexture1.r" "file3.ro";
connectAttr "place2dTexture1.n" "file3.n";
connectAttr "place2dTexture1.vt1" "file3.vt1";
connectAttr "place2dTexture1.vt2" "file3.vt2";
connectAttr "place2dTexture1.vt3" "file3.vt3";
connectAttr "place2dTexture1.vc1" "file3.vc1";
connectAttr "file1.oc" "multiplyDivide1.i1";
connectAttr "multiplyDivide1.o" "bedframe.base_color";
connectAttr "file2.oa" "bedframe.metalness";
connectAttr "bump2d1.o" "bedframe.n";
connectAttr "bedframe.out" "set1.ss";
connectAttr "drawer3Shape.iog" "set1.dsm" -na;
connectAttr "drawer2Shape.iog" "set1.dsm" -na;
connectAttr "drawer1Shape.iog" "set1.dsm" -na;
connectAttr "drawerShape.iog" "set1.dsm" -na;
connectAttr "mattress_and_blanketsShape.iog" "set1.dsm" -na;
connectAttr "cushion_LShape.iog" "set1.dsm" -na;
connectAttr "cushion_RShape.iog" "set1.dsm" -na;
connectAttr "trimsheet_bedframeShape.iog" "set1.dsm" -na;
connectAttr "bedframe_headShape.iog" "set1.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[3]" "set1.dsm" -na;
connectAttr "polySurfaceShape2.ciog.cog[0]" "set1.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" "set1.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" "set1.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" "set1.dsm" -na;
connectAttr "groupId8.msg" "set1.gn" -na;
connectAttr "groupId9.msg" "set1.gn" -na;
connectAttr "groupId10.msg" "set1.gn" -na;
connectAttr "groupId11.msg" "set1.gn" -na;
connectAttr "groupId12.msg" "set1.gn" -na;
connectAttr "set1.msg" "materialInfo3.sg";
connectAttr "bedframe.msg" "materialInfo3.m";
connectAttr "file1.msg" "materialInfo3.t" -na;
connectAttr "file3.oa" "bump2d1.bv";
connectAttr "polySplit8.out" "polyTweakUV19.ip";
connectAttr "polyTweak15.out" "polyMapCut25.ip";
connectAttr "polyTweakUV19.out" "polyTweak15.ip";
connectAttr "polyMapCut25.out" "polyTweakUV20.ip";
connectAttr "polyTweakUV20.out" "polyMapCut26.ip";
connectAttr "polyMapCut26.out" "polyTweakUV21.ip";
connectAttr "polyTweakUV21.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyMapCut27.ip";
connectAttr "polyMapCut27.out" "polyTweakUV22.ip";
connectAttr "polyTweakUV22.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyTweakUV23.ip";
connectAttr "polyTweakUV23.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyTweakUV24.ip";
connectAttr "polyTweakUV15.out" "polyChipOff2.ip";
connectAttr "polySurfaceShape2.wm" "polyChipOff2.mp";
connectAttr "polySurfaceShape2.o" "polySeparate2.ip";
connectAttr "polyChipOff2.out" "groupParts2.ig";
connectAttr "groupId8.id" "groupParts2.gi";
connectAttr "polySeparate2.out[0]" "groupParts3.ig";
connectAttr "groupId10.id" "groupParts3.gi";
connectAttr "polySeparate2.out[1]" "groupParts4.ig";
connectAttr "groupId11.id" "groupParts4.gi";
connectAttr "polySeparate2.out[2]" "groupParts5.ig";
connectAttr "groupId12.id" "groupParts5.gi";
connectAttr "groupParts4.og" "polyExtrudeFace6.ip";
connectAttr "polySurfaceShape10.wm" "polyExtrudeFace6.mp";
connectAttr "groupParts5.og" "polyExtrudeFace7.ip";
connectAttr "polySurfaceShape11.wm" "polyExtrudeFace7.mp";
connectAttr "CubeFBXASC046002SG.pa" ":renderPartition.st" -na;
connectAttr "trimsheet_bedframeSG.pa" ":renderPartition.st" -na;
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "MaterialFBXASC046026.msg" ":defaultShaderList1.s" -na;
connectAttr "standardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "bedframe.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape2.iog.og[4]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of Bedframe.ma
