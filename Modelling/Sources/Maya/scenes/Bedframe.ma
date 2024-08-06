//Maya ASCII 2024 scene
//Name: Bedframe.ma
//Last modified: Tue, Aug 06, 2024 10:50:16 AM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "91C46831-4EF3-AEA5-DD15-3B9E1F606F76";
createNode transform -s -n "persp";
	rename -uid "BECBE092-4685-61E8-E5F2-6CBE463B8159";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -375.20328037560284 182.48267726231092 -406.04563244497092 ;
	setAttr ".r" -type "double3" -23.138352731709947 -1209.8000000026359 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0D15DEAF-44A2-7304-5259-0DBB558BB193";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 463.69846771103488;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -106.04003573288276 -8.0641299879614277 0 ;
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
createNode transform -n "bedframe_head";
	rename -uid "5CF80D24-4E35-37E8-93E5-D1B5FCACA5F7";
	setAttr ".s" -type "double3" 1 85 164 ;
createNode mesh -n "bedframe_headShape" -p "bedframe_head";
	rename -uid "9750E2C4-47D7-2274-C40A-E48AC0D47C77";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[32]" -type "float3" 0 0.046182375 0 ;
	setAttr ".pt[35]" -type "float3" 0 0.046182375 0 ;
	setAttr ".pt[36]" -type "float3" 0 0.046182375 0 ;
	setAttr ".pt[39]" -type "float3" 0 0.046182375 0 ;
createNode transform -n "frame_and_drawers";
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
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2" -p "frame_and_drawers";
	rename -uid "B9CBF1C0-4A0F-E20C-A8E9-1F8BA5F08F7C";
	setAttr ".t" -type "double3" -0.0016566532212107313 0 0 ;
createNode mesh -n "polySurfaceShape2" -p "polySurface2";
	rename -uid "A52B0078-420A-F99E-094A-FF9DC88CE486";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.0090080797672271729 0.16434357315301895 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.62463039 0.10039144
		 0.10039145 0.10039145 0.028766811 0.90728456 0.63009626 0.984375 0.62463039 0.45653158
		 0.10039145 0.45653161 0.015625 0.45653161 0.6137948 0.89621007 0.122159 0.89621007
		 0.122159 0.56221896 0.6137948 0.56221896 0.63009626 0.47405404 0.045068622 0.89621007
		 0.6137948 0.97330046 0.122159 0.48512858 0.69088525 0.56221896 0.62463039 0.015625022
		 0.70939684 0.45653161 0.01562506 0.10039145 0.028766811 0.55114442 0.6137948 0.48512858
		 0.045068622 0.56221896 0.69088519 0.89621007 0.122159 0.97330046 0.70718664 0.55114442
		 0.10585719 0.47405404 0.70718664 0.90728462 0.10585719 0.98437494 0.70939684 0.10039143
		 0.10039139 0.015625;
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
createNode transform -n "mattress_and_blankets";
	rename -uid "83D41BA4-4DF4-475F-5EA1-939DA7200361";
	setAttr ".t" -type "double3" -109.82279968261719 0 0 ;
	setAttr ".s" -type "double3" 211.80748656211318 45.87200809396041 149.8813122803451 ;
createNode mesh -n "mattress_and_blanketsShape" -p "mattress_and_blankets";
	rename -uid "F25A0CDA-4040-ADD7-5874-B1BF126A06C7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46679079532623291 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	rename -uid "BEAA8AA5-437B-116F-5906-72B5B42FB18F";
	setAttr ".t" -type "double3" -31.616318743805493 39.916636353581872 -37.458211898803711 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 8.858712636122517 36.120506700118618 49.312726046496756 ;
	setAttr ".rp" -type "double3" -2.8877505759842421 -25.223299817139132 22.76884651184082 ;
	setAttr ".rpt" -type "double3" -9.9918652077071712 -9.9918652077071677 0 ;
	setAttr ".sp" -type "double3" 0.65732632607276387 -0.49999996998894636 0.49999999275859475 ;
	setAttr ".spt" -type "double3" -3.5450769020570352 -24.723299847149452 22.268846519082224 ;
createNode mesh -n "pCubeShape4" -p "pCube2";
	rename -uid "3CDAA0F7-41E3-AE22-5270-5C89C6A2DB3E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.19692623615264893 0.0083990218117833138 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	rename -uid "0200C551-4A18-51F7-FF66-B6BBCB8E0019";
	setAttr ".t" -type "double3" 4.5041923522941829 51.562768822758883 35.121258735656738 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 8.858712636122517 36.120506700118618 49.312726046496756 ;
	setAttr ".rp" -type "double3" -10.925716350520368 10.897210284178481 -20.431759834289554 ;
	setAttr ".rpt" -type "double3" -38.074409534488652 -54.150341083560903 0 ;
	setAttr ".sp" -type "double3" -0.25002512607393723 0.50000012417358275 -0.45260682051276657 ;
	setAttr ".spt" -type "double3" -10.67569122444643 10.397210160004899 -19.979153013776788 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "D97757EC-41DF-0819-A5FB-0DA88D4FED26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50730297341942787 0.067787140607833862 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape8" -p "pCube3";
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
	rename -uid "F6CF05FA-4393-EE74-0EA4-E0BE5B57FE37";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B4C65D0F-4208-B88A-21AA-5699F0C3BE84";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "789F77D3-4CAB-974F-306A-5E8404097EF4";
createNode displayLayerManager -n "layerManager";
	rename -uid "D102C2BD-4C5A-8DE6-0844-8683125C2573";
createNode displayLayer -n "defaultLayer";
	rename -uid "83235546-4F81-C645-6BD0-279E425CA613";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "04D6805C-43D9-17D3-0B30-84A82A43CA5E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "504DA631-4E05-868F-A95D-DBAAE37DD04F";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "9520D734-43EF-A547-FC4D-448E7190ED42";
	setAttr ".version" -type "string" "5.3.4.1";
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
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1594\n            -height 883\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1594\\n    -height 883\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1594\\n    -height 883\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
createNode groupParts -n "groupParts2";
	rename -uid "B1CA3232-40A3-FC9C-8515-EB823EAAC183";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId4";
	rename -uid "7693AB18-42B3-470D-68D2-688C4A0DCB8D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "F2B32476-41A7-EEC8-C072-5FA89F00A7E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
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
	setAttr ".ro" -type "double3" 155.06162872037498 -89.800000145238258 -179.99998071521603 ;
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
	setAttr -s 19 ".uvtk";
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
	setAttr -s 50 ".uvtk[0:49]" -type "float2" -0.40033913 0.14330533 -0.007848978
		 -0.41539288 -0.1660307 0.029326003 0.72645754 0.14431688 0.0035600066 -0.44746861
		 -0.39798653 0.11410764 0.019257486 -0.4916012 0.31684923 -0.33603501 -0.33858359
		 0.30167708 -0.36272788 0.58232898 0.73542297 0.11508226 0.76471096 0.11928749 -0.049438655
		 0.69376254 -0.35058618 0.25368816 -0.33352536 0.31297243 0.15036075 0.31439182 0.14725852
		 0.14075962 -0.33024538 0.27407578 0.10874304 0.2490437 0.16293664 0.27544782 0.15295114
		 0.29341012 -0.17743969 0.061401755 0.12015203 0.21696794 0.81387126 0.12991264 0.80436885
		 0.15970817 -0.1931372 0.10553436 -0.20454618 0.13761011 0.16570802 0.25516796 0.15508431
		 0.24414353 0.13584954 0.17283538 0.73199368 0.16531804 0.11610215 0.30706897 -0.31775427
		 0.23884475 -0.35331601 0.29187885 0.33254671 -0.3801676 0.30544025 -0.30395928 -0.46356285
		 0.12881377 -0.39418679 0.12229541 -0.41340703 0.1682509 -0.46560979 0.15856782 0.030666471
		 -0.52367693 0.34395576 -0.41224328 0.1406635 0.24016015 -0.33217514 0.24282816 0.13052297
		 0.3030856 -0.32416278 0.30566049 0.75029016 0.12327087 -0.4086076 0.11831203 0.74641448
		 0.16930142 -0.39898616 0.16426753;
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
	setAttr -s 50 ".uvtk[0:49]" -type "float2" -0.24753505 0.23894459 -0.97626257
		 0.21752283 0.21544877 0.19686943 0.75269592 0.23998308 -1.062215805 0.21901247 -0.24738556
		 0.33829594 -1.18047786 0.22106206 -1.076765418 -0.62050742 -0.74037689 -0.32323986
		 1.69732857 0.17118713 0.75284553 0.3393344 0.77324444 0.40765214 1.68277907 -0.66833276
		 -0.76398522 -0.50435168 -0.71885103 -0.38953799 0.24067792 -0.17053133 0.20089915
		 -0.64265043 -0.69732052 -0.48493415 0.49106765 -0.64767933 0.26220828 -0.26592761
		 0.30734292 -0.15111423 0.30140203 0.19537978 0.40511435 -0.64618969 0.82395595 0.34396562
		 0.82575715 0.2361255 0.41966397 0.1933302 0.50561726 0.19184054 0.33372644 -0.25374234
		 0.28373349 -0.33222616 0.28685242 -0.64414012 0.75916189 0.16851155 0.24489897 -0.10299876
		 -0.70154142 -0.55246669 -0.79036903 -0.40172404 -1.19502747 -0.61845779 -0.99081218
		 -0.62199706 -0.32044691 0.34215304 -0.25385171 0.40976742 -0.26793301 0.17062674
		 -0.31864512 0.23431258 -1.26643109 0.2225517 -1.28098071 -0.61696815 0.29815426 -0.32824281
		 -0.68712062 -0.55645007 0.23047817 -0.099015385 -0.7547977 -0.32722324 0.75882363
		 0.41163552 -0.26827252 0.40578404 0.7735827 0.17249493 -0.25351226 0.16664337;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "1AC800EC-4222-F027-882D-54B37B3C499E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:33]";
	setAttr ".ix" -type "matrix" 211.80748656211318 0 0 0 0 45.87200809396041 0 0 0 0 149.8813122803451 0
		 -109.82279968261719 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -106.75957489013672 -8.7281494140625 -0.0572357177734375 ;
	setAttr ".ro" -type "double3" 158.66164710801149 -41.800000506288491 -179.99999954192472 ;
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
	setAttr -s 20 ".tk";
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
	setAttr -s 9 ".tk";
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
	setAttr -s 17 ".uvtk";
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
	setAttr -s 21 ".uvtk";
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
	setAttr -s 9 ".uvtk";
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
	setAttr -s 9 ".uvtk";
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
	setAttr -s 15 ".uvtk";
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
	setAttr -s 72 ".uvtk[0:71]" -type "float2" 0.4179318 -0.42290792 0.41386047
		 -0.42655408 -0.29016063 0.12573457 -0.01425308 0.14711854 -0.12189469 0.34859335
		 0.4145956 -0.41557634 0.1763128 0.43012321 -0.35487187 0.52828348 0.71549493 0.22460327
		 0.71559864 0.22557893 0.59897548 0.14565741 0.59991133 0.14539562 -0.012056828 0.15667284
		 -0.2941148 0.12530142 -0.52709198 0.30499163 0.63264638 0.99849689 -0.3107723 -0.14129375
		 0.55941033 -0.35094765 -0.12478513 0.27490255 -0.052448809 0.1039429 0.67875469 0.28358671
		 0.32563084 0.44834742 0.70097768 0.24700776 0.70006043 0.24726433 0.58445549 0.16804217
		 0.58435386 0.16708606 0.45147485 1.092872381 0.55769694 0.20262642 0.55151749 -0.34968847
		 0.31926757 0.4439466 0.4573831 1.086914539 -0.11924583 0.27476856 -0.3588469 0.52786648
		 0.17591703 0.43849441 0.64583856 1.0034821033 0.63601995 1.0090863705 0.7370438 0.27161634
		 0.74294245 0.19037202 -0.58388978 0.12173079 -0.32588503 0.39028275 0.55700999 0.20228927
		 0.56290919 0.12104879 0.62131143 0.10891527 0.74237019 0.18986177 0.54828781 0.1424776
		 0.75166482 0.25018749 0.67932737 0.28409204 0.62062466 0.10857426 0.0014077425 0.15065956
		 0.64382577 0.98948574 0.62131143 0.10891527 -0.52769834 0.30894214 0.16454947 0.42826208
		 0.40284783 -0.41748959 0.74237019 0.18986177 0.17205155 0.44058457 -0.12130916 0.34465885
		 -0.16006625 0.97585148 -0.58477652 0.11992849 -0.32406393 0.39114615 -0.31075147
		 -0.14375092 -0.049954623 0.1038695 -0.29696894 0.94407672 -0.16466081 0.97761869
		 0.020953357 0.24545401 -0.11135477 0.21191198 -0.009971261 0.14235565 0.024151087
		 0.24919677 0.64066607 1.0043436289 -0.019352555 0.15230727 -0.12888944 0.27901053
		 0.45558316 1.097592473;
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
	setAttr -s 9 ".tk";
	setAttr ".tk[32]" -type "float3" 1.4210855e-14 -0.57248521 0 ;
	setAttr ".tk[33]" -type "float3" 1.4210855e-14 -0.57248521 0 ;
	setAttr ".tk[34]" -type "float3" 1.4210855e-14 -0.57248521 0 ;
	setAttr ".tk[35]" -type "float3" 1.4210855e-14 -0.57248521 0 ;
	setAttr ".tk[36]" -type "float3" 1.4210855e-14 -0.57248521 0 ;
	setAttr ".tk[37]" -type "float3" 1.4210855e-14 -0.57248521 0 ;
	setAttr ".tk[38]" -type "float3" 1.4210855e-14 -0.57248521 0 ;
	setAttr ".tk[39]" -type "float3" 1.4210855e-14 -0.57248521 0 ;
createNode polyMapCut -n "polyMapCut17";
	rename -uid "6B478105-44BF-8284-EFB9-029B30818AC3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[24]" "e[26]" "e[34]" "e[44]";
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "5E335848-403F-E1A8-83B1-5489EAE06676";
	setAttr ".uopa" yes;
	setAttr -s 17 ".uvtk";
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
	setAttr -s 68 ".uvtk[0:67]" -type "float2" 0.76790315 0.49150249 -0.44995496
		 0.73206925 0.052744299 0.63998973 0.71530819 -0.29981416 -0.22982682 0.022656154
		 -0.17858288 0.034536149 -0.19624323 0.11071345 -0.24748719 0.098833472 -0.14427918
		 0.12276042 -0.1266188 0.046583094 -0.11833298 0.048504017 -0.9817515 0.44508731 -0.25577304
		 0.096912533 0.70862341 -0.57371676 0.90830004 0.49067393 -0.51049525 0.61960453 -0.50441116
		 0.61867106 0.7764349 0.61986721 -0.92225873 0.34234747 -0.18260676 0.29976532 -0.18268323
		 0.3055281 -0.84887064 0.28889602 0.17446333 -0.3927986 0.12046742 0.56299853 0.85457975
		 -0.31757379 0.84367287 -0.30834597 -0.17666194 0.026250303 0.25382429 0.8000176 -0.1955232
		 0.1108804 -0.19744411 0.11916625 -0.51723766 0.61569715 -0.51098287 0.61484993 -0.45640671
		 0.72797781 0.048182875 0.6362741 0.11092839 0.55976129 0.11576334 0.55933112 0.17337409
		 0.64024198 -0.17786285 0.03470308 -0.84655833 0.44410735 -0.24203247 0.37416032 -0.58349085
		 0.73631644 -0.19816417 0.1189993 0.17801476 0.64404237 -0.17594191 0.026417233 -0.24196327
		 0.25160265 -0.13599336 0.12468132 1.044610023 0.48161408 -0.23811267 0.020735223
		 0.23559007 0.52688277 0.18299502 -0.26443392 0.11554876 0.56335318 0.24412176 0.65524745
		 0.17398062 -0.40126944 0.16492078 -0.53757948 0.24476448 0.66370767 -0.5768795 0.7405194
		 0.79752696 0.76388037 0.78846711 0.62757039 0.71768332 -0.43740672 0.99088973 -0.32663369
		 0.70677638 -0.42817885 0.89626783 0.48297071 -0.24117887 0.24703252 -0.90736628 0.34739161
		 -0.8611396 0.32447535 -0.86376309 0.28385183 -0.2411024 0.24126968 -0.1213513 0.3722145;
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
	setAttr -s 13 ".uvtk";
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
	setAttr -s 21 ".uvtk";
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
	setAttr -s 30 ".uvtk[0:29]" -type "float2" 0.14068732 0.10039144 -0.89838582
		 -0.41093671 -0.81549871 0.13966793 -0.09877938 0.95774859 0.58663589 0.20444962 -0.50454766
		 -0.2005485 -0.57804382 -0.29526159 -0.015940905 0.81986839 -0.67680216 0.23574317
		 -0.27997872 -0.2132107 0.38088256 0.37091452 0.50754619 0.27177057 -0.78042775 0.14415008
		 -0.10753399 0.92349398 -0.18838564 -0.3168363 0.48450822 0.46250764 0.16329762 -0.095497668
		 0.70939684 0.097327739 -0.98437494 -0.51095486 -0.39235938 -0.33905888 0.47247565
		 0.26728895 -0.38360429 -0.30480379 0.087684691 0.91146147 -0.76839525 0.33936876
		 0.5195787 0.46698925 -0.19714069 -0.35109138 0.096439302 0.94571608 -0.8034662 0.33488661
		 0.24806407 -0.010731257 -0.89960861 -0.5957213;
createNode groupId -n "groupId8";
	rename -uid "0A783046-4412-6E2A-9789-0AA242F5BFC4";
	setAttr ".ihi" 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "BD8780E0-4DDD-BE7A-DCBC-0E9D443DE3EB";
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
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
connectAttr "polySplit8.out" "bedframe_headShape.i";
connectAttr "polyTweakUV18.out" "drawerShape.i";
connectAttr "groupId3.id" "drawerShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "drawerShape.iog.og[0].gco";
connectAttr "polyTweakUV18.uvtk[0]" "drawerShape.uvst[0].uvtw";
connectAttr "polyTweakUV15.out" "polySurfaceShape2.i";
connectAttr "groupId4.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "polyTweakUV15.uvtk[0]" "polySurfaceShape2.uvst[0].uvtw";
connectAttr "groupId1.id" "pCubeShape2.iog.og[4].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[4].gco";
connectAttr "groupParts1.og" "pCubeShape2.i";
connectAttr "groupId2.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId8.id" "drawer1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "drawer1Shape.iog.og[0].gco";
connectAttr "polyTweakUV11.out" "mattress_and_blanketsShape.i";
connectAttr "polyTweakUV11.uvtk[0]" "mattress_and_blanketsShape.uvst[0].uvtw";
connectAttr "polyTweakUV4.out" "pCubeShape4.i";
connectAttr "polyTweakUV4.uvtk[0]" "pCubeShape4.uvst[0].uvtw";
connectAttr "polyTweakUV2.out" "pCubeShape3.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape3.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CubeFBXASC046002SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CubeFBXASC046002SG.message" ":defaultLightSet.message";
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
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySeparate1.out[1]" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "groupParts2.og" "polyExtrudeEdge1.ip";
connectAttr "drawerShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace2.ip";
connectAttr "drawerShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace3.ip";
connectAttr "drawerShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace4.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeFace4.mp";
connectAttr "groupParts3.og" "polyTweak9.ip";
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
connectAttr "pCubeShape4.wm" "polyBevel3.mp";
connectAttr "polySurfaceShape8.o" "polyPlanarProj1.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV2.ip";
connectAttr "polyBevel3.out" "polyPlanarProj2.ip";
connectAttr "pCubeShape4.wm" "polyPlanarProj2.mp";
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
connectAttr "CubeFBXASC046002SG.pa" ":renderPartition.st" -na;
connectAttr "MaterialFBXASC046026.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "bedframe_headShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[4]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "drawerShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "mattress_and_blanketsShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "drawer1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
// End of Bedframe.ma
