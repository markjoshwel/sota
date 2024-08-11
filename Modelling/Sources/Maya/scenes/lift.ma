//Maya ASCII 2024 scene
//Name: lift.ma
//Last modified: Sun, Aug 11, 2024 09:43:16 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "CF84C1E2-4193-5174-B2BF-D793E6206724";
createNode transform -s -n "persp";
	rename -uid "B69D4E06-4617-3B00-FF16-648D543563E8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -417.30803478242916 617.21737213628523 -76.784001508741198 ;
	setAttr ".r" -type "double3" 305.66164733967543 -2996.1999999997861 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8639E6BB-4E60-E032-51D6-B8B55851DCD6";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 1126.8277637097563;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -32.467881510357444 126.717110680632 ;
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
createNode transform -n "liftInterior";
	rename -uid "053B2C72-42B5-DCF6-14F0-05926FF19E6A";
createNode transform -n "buttons" -p "liftInterior";
	rename -uid "7F997ADA-4665-20FF-551E-97B00ACD0469";
	setAttr ".rp" -type "double3" 67.362785339355469 8.906009795394958 120.33904266357422 ;
	setAttr ".sp" -type "double3" 67.362785339355469 8.906009795394958 120.33904266357422 ;
createNode transform -n "pCylinder1" -p "buttons";
	rename -uid "28F23F61-432A-B04B-5D8A-62B9160CFC17";
	setAttr ".rp" -type "double3" 81.484859751872364 24.906445628011195 119.95321683845373 ;
	setAttr ".sp" -type "double3" 81.484859751872364 24.906445628011195 119.95321683845373 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "0C21176C-4840-EDCC-91B8-FEAE5098FC14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.57396060228347778 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape10" -p "pCylinder1";
	rename -uid "1A99E8F7-49C0-E8C7-2AEF-79BA1D36CB5F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.57396060228347778 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  82.408737 26.671812 119.95008 
		82.191963 27.320658 120.2745 81.867546 27.754204 120.49127 81.484863 27.906446 120.56739 
		81.10218 27.754206 120.49127 80.777756 27.32066 120.2745 80.560982 26.671814 119.95008 
		80.484863 25.906446 119.5674 80.560982 25.141079 119.18471 80.777756 24.492233 118.86029 
		81.102173 24.058687 118.64352 81.484863 23.906446 118.56739 81.867546 24.058687 118.64352 
		82.191963 24.492231 118.86029 82.408737 25.141079 119.18471 82.484863 25.906446 119.56739 
		82.408737 24.671812 120.72173 82.191963 25.320658 121.04614 81.867546 25.754204 121.26292 
		81.484863 25.906446 121.33904 81.10218 25.754206 121.26292 80.777756 25.32066 121.04615 
		80.560982 24.671814 120.72173 80.484863 23.906446 120.33904 80.560982 23.141079 119.95636 
		80.777756 22.492233 119.63194 81.102173 22.058687 119.41516 81.484863 21.906446 119.33904 
		81.867546 22.058687 119.41516 82.191963 22.492231 119.63194 82.408737 23.141079 119.95635 
		82.484863 23.906446 120.33904 81.484863 25.906446 119.56739 81.484863 23.906446 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder2" -p "buttons";
	rename -uid "B3B54229-41EB-0CAD-043C-E8A41CFD3403";
	setAttr ".rp" -type "double3" 67.362781769214308 24.906445628011195 119.95321683845373 ;
	setAttr ".sp" -type "double3" 67.362781769214308 24.906445628011195 119.95321683845373 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "73A7B550-4BF5-C218-C864-E98D9DD996D1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape11" -p "pCylinder2";
	rename -uid "67FFF06C-4E3E-20B8-CAC1-F29BE2511C76";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  68.286659 26.671812 119.95008 
		68.069885 27.320658 120.2745 67.745468 27.754204 120.49127 67.362785 27.906446 120.56739 
		66.980103 27.754206 120.49127 66.655678 27.32066 120.2745 66.438904 26.671814 119.95008 
		66.362785 25.906446 119.5674 66.438904 25.141079 119.18471 66.655678 24.492233 118.86029 
		66.980095 24.058687 118.64352 67.362785 23.906446 118.56739 67.745468 24.058687 118.64352 
		68.069885 24.492231 118.86029 68.286659 25.141079 119.18471 68.362785 25.906446 119.56739 
		68.286659 24.671812 120.72173 68.069885 25.320658 121.04614 67.745468 25.754204 121.26292 
		67.362785 25.906446 121.33904 66.980103 25.754206 121.26292 66.655678 25.32066 121.04615 
		66.438904 24.671814 120.72173 66.362785 23.906446 120.33904 66.438904 23.141079 119.95636 
		66.655678 22.492233 119.63194 66.980095 22.058687 119.41516 67.362785 21.906446 119.33904 
		67.745468 22.058687 119.41516 68.069885 22.492231 119.63194 68.286659 23.141079 119.95635 
		68.362785 23.906446 120.33904 67.362785 25.906446 119.56739 67.362785 23.906446 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3" -p "buttons";
	rename -uid "009ECCD3-481D-4E5F-46DF-FA9B43C4B9BA";
	setAttr ".rp" -type "double3" 67.362781769214308 17.906009345746831 119.95321683845373 ;
	setAttr ".sp" -type "double3" 67.362781769214308 17.906009345746831 119.95321683845373 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "BA3D61A4-4F68-E108-7F31-CF884289148B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape12" -p "pCylinder3";
	rename -uid "B40392FA-412B-9020-5FE9-48B3F4D6ABD4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  68.286659 19.671375 119.95008 
		68.069885 20.320223 120.2745 67.745468 20.753767 120.49127 67.362785 20.90601 120.56739 
		66.980103 20.753769 120.49127 66.655678 20.320223 120.2745 66.438904 19.671377 119.95008 
		66.362785 18.90601 119.5674 66.438904 18.140642 119.18471 66.655678 17.491796 118.86029 
		66.980095 17.05825 118.64352 67.362785 16.90601 118.56739 67.745468 17.05825 118.64352 
		68.069885 17.491796 118.86029 68.286659 18.140642 119.18471 68.362785 18.90601 119.56739 
		68.286659 17.671375 120.72173 68.069885 18.320223 121.04614 67.745468 18.753767 121.26292 
		67.362785 18.90601 121.33904 66.980103 18.753769 121.26292 66.655678 18.320223 121.04615 
		66.438904 17.671377 120.72173 66.362785 16.90601 120.33904 66.438904 16.140642 119.95636 
		66.655678 15.491796 119.63194 66.980095 15.05825 119.41516 67.362785 14.90601 119.33904 
		67.745468 15.05825 119.41516 68.069885 15.491796 119.63194 68.286659 16.140642 119.95635 
		68.362785 16.90601 120.33904 67.362785 18.90601 119.56739 67.362785 16.90601 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder4" -p "buttons";
	rename -uid "AC686A94-4DFA-98E5-EFA6-6CA5FC9F0524";
	setAttr ".rp" -type "double3" 81.484859751872364 17.906009345746831 119.95321683845373 ;
	setAttr ".sp" -type "double3" 81.484859751872364 17.906009345746831 119.95321683845373 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "6FF3C03B-42E3-DAD0-C378-71BB48DD5F7F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape13" -p "pCylinder4";
	rename -uid "40D24638-4E4E-35C6-B4B3-C5B069DEF24B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  82.408737 19.671375 119.95008 
		82.191963 20.320223 120.2745 81.867546 20.753767 120.49127 81.484863 20.90601 120.56739 
		81.10218 20.753769 120.49127 80.777756 20.320223 120.2745 80.560982 19.671377 119.95008 
		80.484863 18.90601 119.5674 80.560982 18.140642 119.18471 80.777756 17.491796 118.86029 
		81.102173 17.05825 118.64352 81.484863 16.90601 118.56739 81.867546 17.05825 118.64352 
		82.191963 17.491796 118.86029 82.408737 18.140642 119.18471 82.484863 18.90601 119.56739 
		82.408737 17.671375 120.72173 82.191963 18.320223 121.04614 81.867546 18.753767 121.26292 
		81.484863 18.90601 121.33904 81.10218 18.753769 121.26292 80.777756 18.320223 121.04615 
		80.560982 17.671377 120.72173 80.484863 16.90601 120.33904 80.560982 16.140642 119.95636 
		80.777756 15.491796 119.63194 81.102173 15.05825 119.41516 81.484863 14.90601 119.33904 
		81.867546 15.05825 119.41516 82.191963 15.491796 119.63194 82.408737 16.140642 119.95635 
		82.484863 16.90601 120.33904 81.484863 18.90601 119.56739 81.484863 16.90601 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5" -p "buttons";
	rename -uid "D362D89D-4D76-0919-560B-36A19BC8270F";
	setAttr ".rp" -type "double3" 81.484859751872364 10.906009345746831 119.95321683845373 ;
	setAttr ".sp" -type "double3" 81.484859751872364 10.906009345746831 119.95321683845373 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	rename -uid "E7EF9E1E-4C1B-2C18-79BD-459A41FF6C9B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape14" -p "pCylinder5";
	rename -uid "FB3F5114-43A0-553D-50F6-9E85EF8F72C3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  82.408737 12.671375 119.95008 
		82.191963 13.320222 120.2745 81.867546 13.753768 120.49127 81.484863 13.90601 120.56739 
		81.10218 13.753769 120.49127 80.777756 13.320224 120.2745 80.560982 12.671377 119.95008 
		80.484863 11.90601 119.5674 80.560982 11.140643 119.18471 80.777756 10.491796 118.86029 
		81.102173 10.05825 118.64352 81.484863 9.9060097 118.56739 81.867546 10.05825 118.64352 
		82.191963 10.491796 118.86029 82.408737 11.140642 119.18471 82.484863 11.90601 119.56739 
		82.408737 10.671375 120.72173 82.191963 11.320222 121.04614 81.867546 11.753768 121.26292 
		81.484863 11.90601 121.33904 81.10218 11.753769 121.26292 80.777756 11.320224 121.04615 
		80.560982 10.671377 120.72173 80.484863 9.9060097 120.33904 80.560982 9.1406431 119.95636 
		80.777756 8.4917965 119.63194 81.102173 8.0582504 119.41516 81.484863 7.9060092 119.33904 
		81.867546 8.0582504 119.41516 82.191963 8.4917955 119.63194 82.408737 9.1406422 119.95635 
		82.484863 9.9060097 120.33904 81.484863 11.90601 119.56739 81.484863 9.9060097 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder6" -p "buttons";
	rename -uid "B51E4233-490C-8126-96BE-2C9247F4187F";
	setAttr ".rp" -type "double3" 67.362781769214308 10.906009345746831 119.95321683845373 ;
	setAttr ".sp" -type "double3" 67.362781769214308 10.906009345746831 119.95321683845373 ;
createNode mesh -n "pCylinderShape6" -p "pCylinder6";
	rename -uid "1D3719C8-44CA-FCF1-4A28-74A80904E6DE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape15" -p "pCylinder6";
	rename -uid "37A0ABBF-49EB-F750-5D19-4BAFF0219C45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  68.286659 12.671375 119.95008 
		68.069885 13.320222 120.2745 67.745468 13.753768 120.49127 67.362785 13.90601 120.56739 
		66.980103 13.753769 120.49127 66.655678 13.320224 120.2745 66.438904 12.671377 119.95008 
		66.362785 11.90601 119.5674 66.438904 11.140643 119.18471 66.655678 10.491796 118.86029 
		66.980095 10.05825 118.64352 67.362785 9.9060097 118.56739 67.745468 10.05825 118.64352 
		68.069885 10.491796 118.86029 68.286659 11.140642 119.18471 68.362785 11.90601 119.56739 
		68.286659 10.671375 120.72173 68.069885 11.320222 121.04614 67.745468 11.753768 121.26292 
		67.362785 11.90601 121.33904 66.980103 11.753769 121.26292 66.655678 11.320224 121.04615 
		66.438904 10.671377 120.72173 66.362785 9.9060097 120.33904 66.438904 9.1406431 119.95636 
		66.655678 8.4917965 119.63194 66.980095 8.0582504 119.41516 67.362785 7.9060092 119.33904 
		67.745468 8.0582504 119.41516 68.069885 8.4917955 119.63194 68.286659 9.1406422 119.95635 
		68.362785 9.9060097 120.33904 67.362785 11.90601 119.56739 67.362785 9.9060097 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder7" -p "buttons";
	rename -uid "62188FAE-467F-8A55-6858-D3822129F203";
	setAttr ".rp" -type "double3" 81.484859751872364 3.9060093457468312 119.95321683845373 ;
	setAttr ".sp" -type "double3" 81.484859751872364 3.9060093457468312 119.95321683845373 ;
createNode mesh -n "pCylinderShape7" -p "pCylinder7";
	rename -uid "77D3A471-4B41-D4F9-D154-2BAD0964306A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape16" -p "pCylinder7";
	rename -uid "2DF52A41-4BF0-ABC5-0BCE-3CB3075D762D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  82.408737 5.6713753 119.95008 
		82.191963 6.3202219 120.2745 81.867546 6.753768 120.49127 81.484863 6.9060092 120.56739 
		81.10218 6.7537689 120.49127 80.777756 6.3202233 120.2745 80.560982 5.6713767 119.95008 
		80.484863 4.9060102 119.5674 80.560982 4.1406431 119.18471 80.777756 3.4917963 118.86029 
		81.102173 3.0582504 118.64352 81.484863 2.9060094 118.56739 81.867546 3.0582502 118.64352 
		82.191963 3.4917958 118.86029 82.408737 4.1406426 119.18471 82.484863 4.9060092 119.56739 
		82.408737 3.671375 120.72173 82.191963 4.3202219 121.04614 81.867546 4.753768 121.26292 
		81.484863 4.9060092 121.33904 81.10218 4.7537689 121.26292 80.777756 4.3202233 121.04615 
		80.560982 3.6713769 120.72173 80.484863 2.9060102 120.33904 80.560982 2.1406431 119.95636 
		80.777756 1.4917961 119.63194 81.102173 1.0582504 119.41516 81.484863 0.90600932 
		119.33904 81.867546 1.0582502 119.41516 82.191963 1.4917957 119.63194 82.408737 2.1406424 
		119.95635 82.484863 2.9060094 120.33904 81.484863 4.9060092 119.56739 81.484863 2.9060094 
		120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder8" -p "buttons";
	rename -uid "EA110992-41DE-8A7E-8F3F-A4AE883BCFB8";
	setAttr ".rp" -type "double3" 67.362781769214308 3.9060093457468312 119.95321683845373 ;
	setAttr ".sp" -type "double3" 67.362781769214308 3.9060093457468312 119.95321683845373 ;
createNode mesh -n "pCylinderShape8" -p "pCylinder8";
	rename -uid "BA8F1FA4-4A7D-1D81-0304-858FC91906E8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape17" -p "pCylinder8";
	rename -uid "F68D46A9-4526-929D-A0D9-A7804E84DF34";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  68.286659 5.6713753 119.95008 
		68.069885 6.3202219 120.2745 67.745468 6.753768 120.49127 67.362785 6.9060092 120.56739 
		66.980103 6.7537689 120.49127 66.655678 6.3202233 120.2745 66.438904 5.6713767 119.95008 
		66.362785 4.9060102 119.5674 66.438904 4.1406431 119.18471 66.655678 3.4917963 118.86029 
		66.980095 3.0582504 118.64352 67.362785 2.9060094 118.56739 67.745468 3.0582502 118.64352 
		68.069885 3.4917958 118.86029 68.286659 4.1406426 119.18471 68.362785 4.9060092 119.56739 
		68.286659 3.671375 120.72173 68.069885 4.3202219 121.04614 67.745468 4.753768 121.26292 
		67.362785 4.9060092 121.33904 66.980103 4.7537689 121.26292 66.655678 4.3202233 121.04615 
		66.438904 3.6713769 120.72173 66.362785 2.9060102 120.33904 66.438904 2.1406431 119.95636 
		66.655678 1.4917961 119.63194 66.980095 1.0582504 119.41516 67.362785 0.90600932 
		119.33904 67.745468 1.0582502 119.41516 68.069885 1.4917957 119.63194 68.286659 2.1406424 
		119.95635 68.362785 2.9060094 120.33904 67.362785 4.9060092 119.56739 67.362785 2.9060094 
		120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder9" -p "buttons";
	rename -uid "D0F6A46F-4555-8C82-40B6-27ADC6F32E8D";
	setAttr ".rp" -type "double3" 81.484859751872364 -3.0939906542531688 119.95321683845373 ;
	setAttr ".sp" -type "double3" 81.484859751872364 -3.0939906542531688 119.95321683845373 ;
createNode mesh -n "pCylinderShape9" -p "pCylinder9";
	rename -uid "B5CB05C4-476F-F755-772A-4EA42E7462D0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape18" -p "pCylinder9";
	rename -uid "EC9CA379-4F3F-9831-5DD3-1BB59C5A7B5D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  82.408737 -1.3286248 119.95008 
		82.191963 -0.67977798 120.2745 81.867546 -0.24623212 120.49127 81.484863 -0.093990773 
		120.56739 81.10218 -0.24623129 120.49127 80.777756 -0.67977655 120.2745 80.560982 
		-1.3286231 119.95008 80.484863 -2.0939898 119.5674 80.560982 -2.8593569 119.18471 
		80.777756 -3.5082037 118.86029 81.102173 -3.9417496 118.64352 81.484863 -4.0939908 
		118.56739 81.867546 -3.9417498 118.64352 82.191963 -3.5082042 118.86029 82.408737 
		-2.8593576 119.18471 82.484863 -2.0939906 119.56739 82.408737 -3.328625 120.72173 
		82.191963 -2.6797779 121.04614 81.867546 -2.246232 121.26292 81.484863 -2.0939908 
		121.33904 81.10218 -2.2462313 121.26292 80.777756 -2.6797764 121.04615 80.560982 
		-3.3286231 120.72173 80.484863 -4.0939898 120.33904 80.560982 -4.8593569 119.95636 
		80.777756 -5.508204 119.63194 81.102173 -5.9417496 119.41516 81.484863 -6.0939908 
		119.33904 81.867546 -5.9417496 119.41516 82.191963 -5.5082045 119.63194 82.408737 
		-4.8593574 119.95635 82.484863 -4.0939908 120.33904 81.484863 -2.0939906 119.56739 
		81.484863 -4.0939908 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder10" -p "buttons";
	rename -uid "4E2C8FCE-42E6-B706-8F83-0CAFF6056BCE";
	setAttr ".rp" -type "double3" 67.362781769214308 -3.0939906542531688 119.95321683845373 ;
	setAttr ".sp" -type "double3" 67.362781769214308 -3.0939906542531688 119.95321683845373 ;
createNode mesh -n "pCylinderShape10" -p "pCylinder10";
	rename -uid "0375570E-42E7-D600-94B5-849E914C2379";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape19" -p "pCylinder10";
	rename -uid "958A9A8C-4AE3-6909-9ADA-25A6FC47ABA4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  68.286659 -1.3286248 119.95008 
		68.069885 -0.67977798 120.2745 67.745468 -0.24623212 120.49127 67.362785 -0.093990773 
		120.56739 66.980103 -0.24623129 120.49127 66.655678 -0.67977655 120.2745 66.438904 
		-1.3286231 119.95008 66.362785 -2.0939898 119.5674 66.438904 -2.8593569 119.18471 
		66.655678 -3.5082037 118.86029 66.980095 -3.9417496 118.64352 67.362785 -4.0939908 
		118.56739 67.745468 -3.9417498 118.64352 68.069885 -3.5082042 118.86029 68.286659 
		-2.8593576 119.18471 68.362785 -2.0939906 119.56739 68.286659 -3.328625 120.72173 
		68.069885 -2.6797779 121.04614 67.745468 -2.246232 121.26292 67.362785 -2.0939908 
		121.33904 66.980103 -2.2462313 121.26292 66.655678 -2.6797764 121.04615 66.438904 
		-3.3286231 120.72173 66.362785 -4.0939898 120.33904 66.438904 -4.8593569 119.95636 
		66.655678 -5.508204 119.63194 66.980095 -5.9417496 119.41516 67.362785 -6.0939908 
		119.33904 67.745468 -5.9417496 119.41516 68.069885 -5.5082045 119.63194 68.286659 
		-4.8593574 119.95635 68.362785 -4.0939908 120.33904 67.362785 -2.0939906 119.56739 
		67.362785 -4.0939908 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder11" -p "buttons";
	rename -uid "F5051F18-4D9D-4238-D4A3-A69F392D55B5";
	setAttr ".rp" -type "double3" 81.484859751872364 -10.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 81.484859751872364 -10.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape11" -p "pCylinder11";
	rename -uid "B254A392-4A96-CD68-C546-DBAF7FAE9BA3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape20" -p "pCylinder11";
	rename -uid "9B244D12-4FD8-215B-FFB5-39A5CCE9C069";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  82.408737 -8.3286247 119.95008 
		82.191963 -7.6797781 120.2745 81.867546 -7.246232 120.49127 81.484863 -7.0939908 
		120.56739 81.10218 -7.2462311 120.49127 80.777756 -7.6797767 120.2745 80.560982 -8.3286228 
		119.95008 80.484863 -9.0939903 119.5674 80.560982 -9.8593569 119.18471 80.777756 
		-10.508204 118.86029 81.102173 -10.94175 118.64352 81.484863 -11.09399 118.56739 
		81.867546 -10.94175 118.64352 82.191963 -10.508204 118.86029 82.408737 -9.8593578 
		119.18471 82.484863 -9.0939903 119.56739 82.408737 -10.328625 120.72173 82.191963 
		-9.6797781 121.04614 81.867546 -9.246232 121.26292 81.484863 -9.0939903 121.33904 
		81.10218 -9.2462311 121.26292 80.777756 -9.6797762 121.04615 80.560982 -10.328623 
		120.72173 80.484863 -11.09399 120.33904 80.560982 -11.859357 119.95636 80.777756 
		-12.508204 119.63194 81.102173 -12.94175 119.41516 81.484863 -13.09399 119.33904 
		81.867546 -12.94175 119.41516 82.191963 -12.508204 119.63194 82.408737 -11.859358 
		119.95635 82.484863 -11.09399 120.33904 81.484863 -9.0939903 119.56739 81.484863 
		-11.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder12" -p "buttons";
	rename -uid "0B586838-497E-A130-148A-8598054017AB";
	setAttr ".rp" -type "double3" 67.362781769214308 -10.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 67.362781769214308 -10.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape12" -p "pCylinder12";
	rename -uid "3F56B031-4C5F-AA92-265E-558DF3399ACE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape21" -p "pCylinder12";
	rename -uid "47ECA842-496B-09F2-5F37-D583FC1F36C0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  68.286659 -8.3286247 119.95008 
		68.069885 -7.6797781 120.2745 67.745468 -7.246232 120.49127 67.362785 -7.0939908 
		120.56739 66.980103 -7.2462311 120.49127 66.655678 -7.6797767 120.2745 66.438904 
		-8.3286228 119.95008 66.362785 -9.0939903 119.5674 66.438904 -9.8593569 119.18471 
		66.655678 -10.508204 118.86029 66.980095 -10.94175 118.64352 67.362785 -11.09399 
		118.56739 67.745468 -10.94175 118.64352 68.069885 -10.508204 118.86029 68.286659 
		-9.8593578 119.18471 68.362785 -9.0939903 119.56739 68.286659 -10.328625 120.72173 
		68.069885 -9.6797781 121.04614 67.745468 -9.246232 121.26292 67.362785 -9.0939903 
		121.33904 66.980103 -9.2462311 121.26292 66.655678 -9.6797762 121.04615 66.438904 
		-10.328623 120.72173 66.362785 -11.09399 120.33904 66.438904 -11.859357 119.95636 
		66.655678 -12.508204 119.63194 66.980095 -12.94175 119.41516 67.362785 -13.09399 
		119.33904 67.745468 -12.94175 119.41516 68.069885 -12.508204 119.63194 68.286659 
		-11.859358 119.95635 68.362785 -11.09399 120.33904 67.362785 -9.0939903 119.56739 
		67.362785 -11.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder13" -p "buttons";
	rename -uid "79BA3912-4197-091D-723A-FAA76ECFB16C";
	setAttr ".rp" -type "double3" 81.484859751872364 -17.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 81.484859751872364 -17.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape13" -p "pCylinder13";
	rename -uid "63D4764B-457A-68DD-60EB-328A7EAB56D2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape22" -p "pCylinder13";
	rename -uid "72817F96-46B6-DD01-90FC-52AC87281819";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  82.408737 -15.328625 119.95008 
		82.191963 -14.679778 120.2745 81.867546 -14.246232 120.49127 81.484863 -14.09399 
		120.56739 81.10218 -14.246231 120.49127 80.777756 -14.679776 120.2745 80.560982 -15.328623 
		119.95008 80.484863 -16.09399 119.5674 80.560982 -16.859358 119.18471 80.777756 -17.508204 
		118.86029 81.102173 -17.94175 118.64352 81.484863 -18.09399 118.56739 81.867546 -17.94175 
		118.64352 82.191963 -17.508204 118.86029 82.408737 -16.859358 119.18471 82.484863 
		-16.09399 119.56739 82.408737 -17.328625 120.72173 82.191963 -16.679777 121.04614 
		81.867546 -16.246233 121.26292 81.484863 -16.09399 121.33904 81.10218 -16.246231 
		121.26292 80.777756 -16.679777 121.04615 80.560982 -17.328623 120.72173 80.484863 
		-18.09399 120.33904 80.560982 -18.859358 119.95636 80.777756 -19.508204 119.63194 
		81.102173 -19.94175 119.41516 81.484863 -20.09399 119.33904 81.867546 -19.94175 119.41516 
		82.191963 -19.508204 119.63194 82.408737 -18.859358 119.95635 82.484863 -18.09399 
		120.33904 81.484863 -16.09399 119.56739 81.484863 -18.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder14" -p "buttons";
	rename -uid "89C23CC3-4854-11BB-42BF-32AFB0858A81";
	setAttr ".rp" -type "double3" 67.362781769214308 -17.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 67.362781769214308 -17.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape14" -p "pCylinder14";
	rename -uid "D7A89DE1-4CF7-066D-2037-2AAC03F75D58";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape23" -p "pCylinder14";
	rename -uid "AF35807C-4AC1-0FF5-8A38-8893941771D4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  68.286659 -15.328625 119.95008 
		68.069885 -14.679778 120.2745 67.745468 -14.246232 120.49127 67.362785 -14.09399 
		120.56739 66.980103 -14.246231 120.49127 66.655678 -14.679776 120.2745 66.438904 
		-15.328623 119.95008 66.362785 -16.09399 119.5674 66.438904 -16.859358 119.18471 
		66.655678 -17.508204 118.86029 66.980095 -17.94175 118.64352 67.362785 -18.09399 
		118.56739 67.745468 -17.94175 118.64352 68.069885 -17.508204 118.86029 68.286659 
		-16.859358 119.18471 68.362785 -16.09399 119.56739 68.286659 -17.328625 120.72173 
		68.069885 -16.679777 121.04614 67.745468 -16.246233 121.26292 67.362785 -16.09399 
		121.33904 66.980103 -16.246231 121.26292 66.655678 -16.679777 121.04615 66.438904 
		-17.328623 120.72173 66.362785 -18.09399 120.33904 66.438904 -18.859358 119.95636 
		66.655678 -19.508204 119.63194 66.980095 -19.94175 119.41516 67.362785 -20.09399 
		119.33904 67.745468 -19.94175 119.41516 68.069885 -19.508204 119.63194 68.286659 
		-18.859358 119.95635 68.362785 -18.09399 120.33904 67.362785 -16.09399 119.56739 
		67.362785 -18.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder15" -p "buttons";
	rename -uid "2455E8C1-4D68-5AA7-EAB9-12A02A0D654E";
	setAttr ".rp" -type "double3" 81.484859751872364 -24.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 81.484859751872364 -24.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape15" -p "pCylinder15";
	rename -uid "E099B9D7-4B1A-7AC7-A354-33BC4F3B54D7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape24" -p "pCylinder15";
	rename -uid "226F3C95-4C8D-AEAF-DB8B-69B755858445";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  82.408737 -22.328625 119.95008 
		82.191963 -21.679777 120.2745 81.867546 -21.246233 120.49127 81.484863 -21.09399 
		120.56739 81.10218 -21.246231 120.49127 80.777756 -21.679777 120.2745 80.560982 -22.328623 
		119.95008 80.484863 -23.09399 119.5674 80.560982 -23.859358 119.18471 80.777756 -24.508204 
		118.86029 81.102173 -24.94175 118.64352 81.484863 -25.09399 118.56739 81.867546 -24.94175 
		118.64352 82.191963 -24.508204 118.86029 82.408737 -23.859358 119.18471 82.484863 
		-23.09399 119.56739 82.408737 -24.328625 120.72173 82.191963 -23.679777 121.04614 
		81.867546 -23.246233 121.26292 81.484863 -23.09399 121.33904 81.10218 -23.246231 
		121.26292 80.777756 -23.679777 121.04615 80.560982 -24.328623 120.72173 80.484863 
		-25.09399 120.33904 80.560982 -25.859358 119.95636 80.777756 -26.508204 119.63194 
		81.102173 -26.94175 119.41516 81.484863 -27.09399 119.33904 81.867546 -26.94175 119.41516 
		82.191963 -26.508204 119.63194 82.408737 -25.859358 119.95635 82.484863 -25.09399 
		120.33904 81.484863 -23.09399 119.56739 81.484863 -25.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder16" -p "buttons";
	rename -uid "03179B62-44D7-FBA9-1464-709222370DEA";
	setAttr ".rp" -type "double3" 67.362781769214308 -24.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 67.362781769214308 -24.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape16" -p "pCylinder16";
	rename -uid "C7F0CBB8-4793-8083-B9A9-D3BAFFD7EE8C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape25" -p "pCylinder16";
	rename -uid "04802BAC-4FAB-ADFA-EFAE-259FBEE930E3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  68.286659 -22.328625 119.95008 
		68.069885 -21.679777 120.2745 67.745468 -21.246233 120.49127 67.362785 -21.09399 
		120.56739 66.980103 -21.246231 120.49127 66.655678 -21.679777 120.2745 66.438904 
		-22.328623 119.95008 66.362785 -23.09399 119.5674 66.438904 -23.859358 119.18471 
		66.655678 -24.508204 118.86029 66.980095 -24.94175 118.64352 67.362785 -25.09399 
		118.56739 67.745468 -24.94175 118.64352 68.069885 -24.508204 118.86029 68.286659 
		-23.859358 119.18471 68.362785 -23.09399 119.56739 68.286659 -24.328625 120.72173 
		68.069885 -23.679777 121.04614 67.745468 -23.246233 121.26292 67.362785 -23.09399 
		121.33904 66.980103 -23.246231 121.26292 66.655678 -23.679777 121.04615 66.438904 
		-24.328623 120.72173 66.362785 -25.09399 120.33904 66.438904 -25.859358 119.95636 
		66.655678 -26.508204 119.63194 66.980095 -26.94175 119.41516 67.362785 -27.09399 
		119.33904 67.745468 -26.94175 119.41516 68.069885 -26.508204 119.63194 68.286659 
		-25.859358 119.95635 68.362785 -25.09399 120.33904 67.362785 -23.09399 119.56739 
		67.362785 -25.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder17" -p "buttons";
	rename -uid "107F5CD2-485D-2E76-974D-CD9518FC6088";
	setAttr ".rp" -type "double3" 81.484859751872364 -31.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 81.484859751872364 -31.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape17" -p "pCylinder17";
	rename -uid "DB58614D-4665-E9B3-B0C9-8093DFE19D36";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape26" -p "pCylinder17";
	rename -uid "373EA120-44FA-B8E0-57A9-178602CCFC62";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  82.408737 -29.328625 119.95008 
		82.191963 -28.679777 120.2745 81.867546 -28.246233 120.49127 81.484863 -28.09399 
		120.56739 81.10218 -28.246231 120.49127 80.777756 -28.679777 120.2745 80.560982 -29.328623 
		119.95008 80.484863 -30.09399 119.5674 80.560982 -30.859358 119.18471 80.777756 -31.508204 
		118.86029 81.102173 -31.94175 118.64352 81.484863 -32.09399 118.56739 81.867546 -31.94175 
		118.64352 82.191963 -31.508204 118.86029 82.408737 -30.859358 119.18471 82.484863 
		-30.09399 119.56739 82.408737 -31.328625 120.72173 82.191963 -30.679777 121.04614 
		81.867546 -30.246233 121.26292 81.484863 -30.09399 121.33904 81.10218 -30.246231 
		121.26292 80.777756 -30.679777 121.04615 80.560982 -31.328623 120.72173 80.484863 
		-32.09399 120.33904 80.560982 -32.859356 119.95636 80.777756 -33.508205 119.63194 
		81.102173 -33.94175 119.41516 81.484863 -34.09399 119.33904 81.867546 -33.94175 119.41516 
		82.191963 -33.508205 119.63194 82.408737 -32.859356 119.95635 82.484863 -32.09399 
		120.33904 81.484863 -30.09399 119.56739 81.484863 -32.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder18" -p "buttons";
	rename -uid "0BE2C542-47C4-5B68-D7A3-CCAC28083B63";
	setAttr ".rp" -type "double3" 67.362781769214308 -31.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 67.362781769214308 -31.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape18" -p "pCylinder18";
	rename -uid "F7A336BF-4BE5-C690-FC92-1CAAE766BB30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape27" -p "pCylinder18";
	rename -uid "BEEC81C6-4D09-2D24-0BCC-BA9DB9DD409A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  68.286659 -29.328625 119.95008 
		68.069885 -28.679777 120.2745 67.745468 -28.246233 120.49127 67.362785 -28.09399 
		120.56739 66.980103 -28.246231 120.49127 66.655678 -28.679777 120.2745 66.438904 
		-29.328623 119.95008 66.362785 -30.09399 119.5674 66.438904 -30.859358 119.18471 
		66.655678 -31.508204 118.86029 66.980095 -31.94175 118.64352 67.362785 -32.09399 
		118.56739 67.745468 -31.94175 118.64352 68.069885 -31.508204 118.86029 68.286659 
		-30.859358 119.18471 68.362785 -30.09399 119.56739 68.286659 -31.328625 120.72173 
		68.069885 -30.679777 121.04614 67.745468 -30.246233 121.26292 67.362785 -30.09399 
		121.33904 66.980103 -30.246231 121.26292 66.655678 -30.679777 121.04615 66.438904 
		-31.328623 120.72173 66.362785 -32.09399 120.33904 66.438904 -32.859356 119.95636 
		66.655678 -33.508205 119.63194 66.980095 -33.94175 119.41516 67.362785 -34.09399 
		119.33904 67.745468 -33.94175 119.41516 68.069885 -33.508205 119.63194 68.286659 
		-32.859356 119.95635 68.362785 -32.09399 120.33904 67.362785 -30.09399 119.56739 
		67.362785 -32.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder19" -p "buttons";
	rename -uid "F5A89423-494A-8203-CAA4-A885ED88CAD1";
	setAttr ".rp" -type "double3" 81.484859751872364 -38.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 81.484859751872364 -38.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape19" -p "pCylinder19";
	rename -uid "13FDE65A-4830-E133-0770-1DA6504DAEFD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape28" -p "pCylinder19";
	rename -uid "0AD16B05-4B0A-81EF-ACC2-6CB307A4AAB9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  82.408737 -36.328625 119.95008 
		82.191963 -35.679779 120.2745 81.867546 -35.246231 120.49127 81.484863 -35.09399 
		120.56739 81.10218 -35.246231 120.49127 80.777756 -35.679775 120.2745 80.560982 -36.328625 
		119.95008 80.484863 -37.09399 119.5674 80.560982 -37.859356 119.18471 80.777756 -38.508205 
		118.86029 81.102173 -38.94175 118.64352 81.484863 -39.09399 118.56739 81.867546 -38.94175 
		118.64352 82.191963 -38.508205 118.86029 82.408737 -37.859356 119.18471 82.484863 
		-37.09399 119.56739 82.408737 -38.328625 120.72173 82.191963 -37.679779 121.04614 
		81.867546 -37.246231 121.26292 81.484863 -37.09399 121.33904 81.10218 -37.246231 
		121.26292 80.777756 -37.679775 121.04615 80.560982 -38.328625 120.72173 80.484863 
		-39.09399 120.33904 80.560982 -39.859356 119.95636 80.777756 -40.508205 119.63194 
		81.102173 -40.94175 119.41516 81.484863 -41.09399 119.33904 81.867546 -40.94175 119.41516 
		82.191963 -40.508205 119.63194 82.408737 -39.859356 119.95635 82.484863 -39.09399 
		120.33904 81.484863 -37.09399 119.56739 81.484863 -39.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder20" -p "buttons";
	rename -uid "15C3997B-4782-C9FC-69C7-E397FFEDCB5D";
	setAttr ".rp" -type "double3" 67.362781769214308 -38.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 67.362781769214308 -38.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape20" -p "pCylinder20";
	rename -uid "A2C718D9-408C-3A19-BFB3-3287409F0725";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape29" -p "pCylinder20";
	rename -uid "B5BA20C5-40A1-EF96-0F37-DB8452459663";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  68.286659 -36.328625 119.95008 
		68.069885 -35.679779 120.2745 67.745468 -35.246231 120.49127 67.362785 -35.09399 
		120.56739 66.980103 -35.246231 120.49127 66.655678 -35.679775 120.2745 66.438904 
		-36.328625 119.95008 66.362785 -37.09399 119.5674 66.438904 -37.859356 119.18471 
		66.655678 -38.508205 118.86029 66.980095 -38.94175 118.64352 67.362785 -39.09399 
		118.56739 67.745468 -38.94175 118.64352 68.069885 -38.508205 118.86029 68.286659 
		-37.859356 119.18471 68.362785 -37.09399 119.56739 68.286659 -38.328625 120.72173 
		68.069885 -37.679779 121.04614 67.745468 -37.246231 121.26292 67.362785 -37.09399 
		121.33904 66.980103 -37.246231 121.26292 66.655678 -37.679775 121.04615 66.438904 
		-38.328625 120.72173 66.362785 -39.09399 120.33904 66.438904 -39.859356 119.95636 
		66.655678 -40.508205 119.63194 66.980095 -40.94175 119.41516 67.362785 -41.09399 
		119.33904 67.745468 -40.94175 119.41516 68.069885 -40.508205 119.63194 68.286659 
		-39.859356 119.95635 68.362785 -39.09399 120.33904 67.362785 -37.09399 119.56739 
		67.362785 -39.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder21" -p "buttons";
	rename -uid "82865321-46F8-9825-3708-8593A0C3668A";
	setAttr ".rp" -type "double3" 81.484859751872364 -45.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 81.484859751872364 -45.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape21" -p "pCylinder21";
	rename -uid "869F18E5-4207-59C3-51F5-B8B03C2C00BB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape30" -p "pCylinder21";
	rename -uid "C321B256-4CF9-77D8-E514-8AB0D3B4A48E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  82.408737 -43.328625 119.95008 
		82.191963 -42.679779 120.2745 81.867546 -42.246231 120.49127 81.484863 -42.09399 
		120.56739 81.10218 -42.246231 120.49127 80.777756 -42.679775 120.2745 80.560982 -43.328625 
		119.95008 80.484863 -44.09399 119.5674 80.560982 -44.859356 119.18471 80.777756 -45.508205 
		118.86029 81.102173 -45.94175 118.64352 81.484863 -46.09399 118.56739 81.867546 -45.94175 
		118.64352 82.191963 -45.508205 118.86029 82.408737 -44.859356 119.18471 82.484863 
		-44.09399 119.56739 82.408737 -45.328625 120.72173 82.191963 -44.679779 121.04614 
		81.867546 -44.246231 121.26292 81.484863 -44.09399 121.33904 81.10218 -44.246231 
		121.26292 80.777756 -44.679775 121.04615 80.560982 -45.328625 120.72173 80.484863 
		-46.09399 120.33904 80.560982 -46.859356 119.95636 80.777756 -47.508205 119.63194 
		81.102173 -47.94175 119.41516 81.484863 -48.09399 119.33904 81.867546 -47.94175 119.41516 
		82.191963 -47.508205 119.63194 82.408737 -46.859356 119.95635 82.484863 -46.09399 
		120.33904 81.484863 -44.09399 119.56739 81.484863 -46.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder22" -p "buttons";
	rename -uid "0AD1033E-4D37-0AE2-D809-59A2C98686EC";
	setAttr ".rp" -type "double3" 67.362781769214308 -45.093990654253169 119.95321683845373 ;
	setAttr ".sp" -type "double3" 67.362781769214308 -45.093990654253169 119.95321683845373 ;
createNode mesh -n "pCylinderShape22" -p "pCylinder22";
	rename -uid "8E46D390-45F8-1BC5-2586-B2977CA00B07";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape31" -p "pCylinder22";
	rename -uid "8F05833C-4554-BD06-A9B6-1BB81EE79AFF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.6875
		 0.390625 0.6875 0.40625 0.6875 0.421875 0.6875 0.4375 0.6875 0.453125 0.6875 0.46875
		 0.6875 0.484375 0.6875 0.5 0.6875 0.515625 0.6875 0.53125 0.6875 0.546875 0.6875
		 0.5625 0.6875 0.578125 0.6875 0.59375 0.6875 0.609375 0.6875 0.625 0.6875 0.64435619
		 0.78395581 0.61048549 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578
		 0.69939381 0.38951463 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381
		 0.90354425 0.38951454 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619
		 0.61048543 0.95423543 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  68.286659 -43.328625 119.95008 
		68.069885 -42.679779 120.2745 67.745468 -42.246231 120.49127 67.362785 -42.09399 
		120.56739 66.980103 -42.246231 120.49127 66.655678 -42.679775 120.2745 66.438904 
		-43.328625 119.95008 66.362785 -44.09399 119.5674 66.438904 -44.859356 119.18471 
		66.655678 -45.508205 118.86029 66.980095 -45.94175 118.64352 67.362785 -46.09399 
		118.56739 67.745468 -45.94175 118.64352 68.069885 -45.508205 118.86029 68.286659 
		-44.859356 119.18471 68.362785 -44.09399 119.56739 68.286659 -45.328625 120.72173 
		68.069885 -44.679779 121.04614 67.745468 -44.246231 121.26292 67.362785 -44.09399 
		121.33904 66.980103 -44.246231 121.26292 66.655678 -44.679775 121.04615 66.438904 
		-45.328625 120.72173 66.362785 -46.09399 120.33904 66.438904 -46.859356 119.95636 
		66.655678 -47.508205 119.63194 66.980095 -47.94175 119.41516 67.362785 -48.09399 
		119.33904 67.745468 -47.94175 119.41516 68.069885 -47.508205 119.63194 68.286659 
		-46.859356 119.95635 68.362785 -46.09399 120.33904 67.362785 -44.09399 119.56739 
		67.362785 -46.09399 120.33904;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface1" -p "liftInterior";
	rename -uid "1B2E12C4-438B-5793-8710-249E2574CF12";
createNode mesh -n "polySurfaceShape2" -p "polySurface1";
	rename -uid "194BC993-4B28-0E09-10FD-C9BF1B2940AE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.96871292591094971 0.50634017586708069 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape32" -p "polySurface1";
	rename -uid "08EFB593-4A4C-2D1B-C837-2E8C78D609BE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:93]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 18 "f[2]" "f[7]" "f[11]" "f[15]" "f[18]" "f[19]" "f[20]" "f[21]" "f[60]" "f[61]" "f[62]" "f[63]" "f[68]" "f[69]" "f[70]" "f[80]" "f[81]" "f[82]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 20 "f[3]" "f[8]" "f[12]" "f[16]" "f[29]" "f[30]" "f[31]" "f[32]" "f[47]" "f[48]" "f[49]" "f[50]" "f[71]" "f[72]" "f[73]" "f[83]" "f[84]" "f[85]" "f[88]" "f[89]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 20 "f[0]" "f[9]" "f[13]" "f[23]" "f[24]" "f[25]" "f[26]" "f[54]" "f[55]" "f[56]" "f[64]" "f[74]" "f[75]" "f[76]" "f[86]" "f[87]" "f[90]" "f[91]" "f[92]" "f[93]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "f[5]" "f[17]" "f[27]" "f[28]" "f[39]" "f[40]" "f[51]" "f[52]" "f[53]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "f[4]" "f[22]" "f[33]" "f[34]" "f[45]" "f[46]" "f[57]" "f[58]" "f[59]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 18 "f[1]" "f[6]" "f[10]" "f[14]" "f[35]" "f[36]" "f[37]" "f[38]" "f[41]" "f[42]" "f[43]" "f[44]" "f[65]" "f[66]" "f[67]" "f[77]" "f[78]" "f[79]";
	setAttr ".pv" -type "double2" 0.47448030114173889 0.8669583797454834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 121 ".uvst[0].uvsp[0:120]" -type "float2" 0.4489606 0.73391682
		 0.4489606 0.85891682 0.46146059 0.85891682 0.46146059 0.73391682 0.4489606 0.98391682
		 0.4489606 1.10891676 0.46146059 1.10891676 0.46146059 0.98391682 0.4489606 1.35891676
		 0.4489606 1.48391676 0.46146059 1.48391676 0.46146059 1.35891676 0.4489606 1.60891676
		 0.4489606 1.73391676 0.46146059 1.73391676 0.46146059 1.60891676 0.6989606 0.73391682
		 0.6989606 0.85891682 0.8239606 0.85891682 0.8239606 0.73391682 0.3239606 0.85891682
		 0.3239606 0.73391682 0.6414606 0.98391682 0.5739606 0.98391682 0.5739606 1.10891676
		 0.6414606 1.10891676 0.5739606 1.48391676 0.6414606 1.48391676 0.6414606 1.35891676
		 0.5739606 1.35891676 0.5739606 1.73391676 0.6414606 1.73391676 0.6414606 1.60891676
		 0.5739606 1.60891676 0.50646061 1.23391676 0.50646061 0.85891682 0.50646061 0.98391682
		 0.50646061 1.10891676 0.50646061 1.48391676 0.50646061 1.35891676 0.50646061 1.60891676
		 0.68646061 0.73391682 0.68646061 0.85891682 0.6989606 1.10891676 0.6989606 0.98391682
		 0.68646061 0.98391682 0.68646061 1.10891676 0.68646061 1.48391676 0.6989606 1.48391676
		 0.6989606 1.35891676 0.68646061 1.35891676 0.68646061 1.73391676 0.6989606 1.73391676
		 0.6989606 1.60891676 0.68646061 1.60891676 0.3239606 0.98391682 0.4489606 0.95891678
		 0.3239606 0.95891684 0.4489606 1.23391676 0.4489606 1.25891685 0.46146059 1.25891685
		 0.46146059 1.23391676 0.50646061 1.23391676 0.50646061 1.25891685 0.6414606 1.23391676
		 0.5739606 1.23391676 0.5739606 1.25891685 0.6414606 1.25891685 0.6989606 1.25891685
		 0.6989606 1.23391676 0.68646061 1.23391676 0.68646061 1.25891685 0.6989606 0.95891678
		 0.8239606 0.98391682 0.8239606 0.95891678 0.68646061 0.95891678 0.6414606 0.95891678
		 0.5739606 0.95891678 0.50646061 0.95891678 0.46146059 0.95891678 0.1989606 0.95891684
		 0.1989606 0.98391682 0.21146062 0.98391682 0.21146062 0.95891678 0.1989606 0.73391682
		 0.1989606 0.85891682 0.21146062 0.85891682 0.21146062 0.73391682 0.44896057 1.49641681
		 0.46146056 1.49641681 0.50646061 1.49641681 0.5739606 1.49641681 0.6414606 1.49641681
		 0.6989606 1.49641681 0.68646055 1.49641681 0.93646055 0.85891682 0.9489606 0.85891682
		 0.9489606 0.73391682 0.93646055 0.73391682 0.93646055 0.98391682 0.9489606 0.98391682
		 0.9489606 0.95891684 0.93646061 0.95891684 0.6989606 1.22141683 0.68646061 1.22141683
		 0.6414606 1.22141683 0.5739606 1.22141683 0.50646061 1.22141683 0.46146059 1.22141683
		 0.4489606 1.22141683 0.6414606 0.73391682 0.6414606 0.85891682 0.63271064 0.93361682
		 0.63271064 0.97641683 0.63271064 0.88191682 0.5739606 1.47391677 0.63271064 1.38191676
		 0.51521057 1.31591678 0.51521063 1.03121686 0.51521063 1.016416788 0.5739606 0.99641681;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 99 ".vt[0:98]"  -100 -144.96788025 120.33904266 100 -144.96788025 120.33904266
		 -100 105.032119751 120.33904266 100 105.032119751 120.33903503 -100 105.032119751 -79.66095734
		 100 105.032119751 -79.66095734 -100 -144.96788025 -79.66095734 100 -144.96788025 -79.66095734
		 0 -144.96788025 120.33904266 0 105.032119751 120.33904266 0 105.032119751 -79.66095734
		 0 -144.96788025 -79.66095734 -90 -144.96788025 120.33904266 -90 105.032119751 120.33904266
		 -90 105.032119751 -79.66095734 -90 -144.96788025 -79.66095734 90 -144.96788025 120.33904266
		 90 105.032119751 120.33904266 90 105.032119751 -79.66095734 90 -144.96788025 -79.66095734
		 -100 -19.96788216 120.33904266 -100 -19.96788216 -79.66095734 -90 -19.96788216 -79.66095734
		 0 -19.96788216 -79.66095734 90 -19.96788216 -79.66095734 100 -19.96788216 -79.66095734
		 100 -19.96788216 120.33904266 90 -19.96788216 120.33904266 -90 -19.96788216 120.33904266
		 -100 105.032119751 20.33904076 -100 -19.96788216 20.33904076 -100 -144.96788025 20.33904076
		 -90 -144.96788025 20.33904076 0 -144.96788025 20.33904076 90 -144.96788025 20.33904076
		 100 -144.96788025 20.33904076 100 -19.96788216 20.33904076 100 105.032119751 20.33904076
		 90 105.032119751 20.33904076 0 105.032119751 20.33904076 -90 105.032119751 20.33904076
		 -100 -144.96788025 -69.66095734 -100 -19.96788216 -69.66095734 -100 105.032119751 -69.66095734
		 -90 105.032119751 -69.66095734 0 105.032119751 -69.66095734 90 105.032119751 -69.66095734
		 100 105.032119751 -69.66095734 100 -19.96788216 -69.66095734 100 -144.96788025 -69.66095734
		 90 -144.96788025 -69.66095734 0 -144.96788025 -69.66095734 -90 -144.96788025 -69.66095734
		 -100 80.032119751 -79.66095734 -100 80.032119751 -69.66095734 -100 80.032119751 20.33904076
		 -100 80.032119751 120.33904266 -90 80.032119751 120.33904266 0 80.032119751 120.33904266
		 90 80.032119751 120.33904266 100 80.032119751 120.33903503 100 80.032119751 20.33904076
		 100 80.032119751 -69.66095734 100 80.032119751 -79.66095734 90 80.032119751 -79.66095734
		 0 80.032119751 -79.66095734 -90 80.032119751 -79.66095734 -54.000003814697 -144.96788025 120.33904266
		 -54.000003814697 -19.96788216 120.33904266 -54.000003814697 80.032119751 120.33904266
		 -54.000003814697 105.032119751 120.33904266 -54.000003814697 105.032119751 20.33904076
		 -54.000003814697 105.032119751 -69.66095734 -54.000003814697 105.032119751 -79.66095734
		 -54.000003814697 80.032119751 -79.66095734 -54.000003814697 -19.96788216 -79.66095734
		 -54.000003814697 -144.96788025 -79.66095734 -54.000003814697 -144.96788025 -69.66095734
		 -54.000003814697 -144.96788025 20.33904076 54.000003814697 -144.96788025 120.33904266
		 54.000003814697 -19.96788216 120.33904266 54.000003814697 80.032119751 120.33904266
		 54.000003814697 105.032119751 120.33904266 54.000003814697 105.032119751 20.33904076
		 54.000003814697 105.032119751 -69.66095734 54.000003814697 105.032119751 -79.66095734
		 54.000003814697 80.032119751 -79.66095734 54.000003814697 -19.96788216 -79.66095734
		 54.000003814697 -144.96788025 -79.66095734 54.000003814697 -144.96788025 -69.66095734
		 54.000003814697 -144.96788025 20.33904076 54.000007629395 -19.96788406 126.71710205
		 54.000003814697 80.032119751 126.71710205 54.000003814697 -144.96788025 126.71710205
		 0 -144.96788025 126.71710205 -54.000003814697 -144.96788025 126.71710205 -54 -19.96788025 126.71710205
		 -54 80.032119751 126.71710205 0 80.032119751 126.71710205;
	setAttr -s 192 ".ed";
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
	setAttr ".ed[166:191]" 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1
		 88 89 1 89 90 1 90 79 1 80 91 0 81 92 0 67 95 0 79 93 0 8 94 0 68 96 0 69 97 0 58 98 0
		 91 92 0 93 91 0 94 93 0 95 94 0 96 95 0 97 96 0 98 97 0 92 98 0;
	setAttr -s 94 -ch 376 ".fc[0:93]" -type "polyFaces" 
		f 4 4 -53 -24 -1
		mu 0 4 0 1 2 3
		f 4 6 -77 -25 -2
		mu 0 4 4 5 6 7
		f 4 36 3 -38 -46
		mu 0 4 8 9 10 11
		f 4 55 0 -57 -68
		mu 0 4 12 13 14 15
		f 4 5 -61 -72 59
		mu 0 4 16 17 18 19
		f 4 -45 -5 -56 -67
		mu 0 4 20 1 0 21
		f 4 -14 16 -157 -168
		mu 0 4 22 23 24 25
		f 4 15 -173 -48 38
		mu 0 4 26 27 28 29
		f 4 12 -176 -70 57
		mu 0 4 30 31 32 33
		f 4 -20 23 -131 -142
		mu 0 4 34 3 2 35
		f 4 -21 24 -134 -145
		mu 0 4 36 7 6 37
		f 4 22 -150 -47 37
		mu 0 4 10 38 39 11
		f 4 19 -153 -69 56
		mu 0 4 14 34 40 15
		f 4 -6 -28 31 -51
		mu 0 4 17 16 41 42
		f 4 -8 -29 32 -74
		mu 0 4 43 44 45 46
		f 4 30 -41 -49 39
		mu 0 4 47 48 49 50
		f 4 27 -60 -71 58
		mu 0 4 51 52 53 54
		f 4 -7 -105 -118 -66
		mu 0 4 55 4 56 57
		f 4 8 -129 -26 -3
		mu 0 4 58 59 60 61
		f 4 -22 25 -137 -148
		mu 0 4 62 61 60 63
		f 4 -15 17 -160 -171
		mu 0 4 64 65 66 67
		f 4 -10 -30 33 -126
		mu 0 4 68 69 70 71
		f 4 108 7 -110 -123
		mu 0 4 72 44 73 74
		f 4 28 -109 -122 107
		mu 0 4 45 44 72 75
		f 4 13 -167 -121 106
		mu 0 4 23 22 76 77
		f 4 20 -144 -120 105
		mu 0 4 7 36 78 79
		f 4 104 1 -106 -119
		mu 0 4 56 4 7 79
		f 4 -9 -80 -103 -116
		mu 0 4 80 81 82 83
		f 4 -37 -79 -90 -11
		mu 0 4 84 85 86 87
		f 4 10 -101 -27 -4
		mu 0 4 9 88 89 10
		f 4 -23 26 -140 -151
		mu 0 4 38 10 89 90
		f 4 -16 18 -163 -174
		mu 0 4 27 26 91 92
		f 4 -12 -31 34 -98
		mu 0 4 93 48 47 94
		f 4 -50 40 11 -97
		mu 0 4 95 96 97 98
		f 4 83 9 -125 -96
		mu 0 4 99 100 101 102
		f 4 29 -84 -95 82
		mu 0 4 70 69 103 104
		f 4 14 -170 -94 81
		mu 0 4 65 64 105 106
		f 4 21 -147 -93 80
		mu 0 4 61 62 107 108
		f 4 79 2 -81 -92
		mu 0 4 109 58 61 108
		f 4 -55 66 -78 89
		mu 0 4 86 20 21 87
		f 4 -54 65 -117 102
		mu 0 4 82 55 57 83
		f 4 53 91 -65 76
		mu 0 4 5 109 108 6
		f 4 133 64 92 -146
		mu 0 4 37 6 108 107
		f 4 156 63 93 -169
		mu 0 4 25 24 106 105
		f 4 -62 73 62 94
		mu 0 4 103 43 46 104
		f 4 61 95 -124 109
		mu 0 4 73 99 102 74
		f 4 -85 96 85 71
		mu 0 4 18 95 98 19
		f 4 -86 97 86 70
		mu 0 4 53 93 94 54
		f 4 162 87 69 -175
		mu 0 4 92 91 33 32
		f 4 139 88 68 -152
		mu 0 4 90 89 15 40
		f 4 77 67 -89 100
		mu 0 4 88 12 15 89
		f 4 -102 115 -91 78
		mu 0 4 85 80 83 86
		f 4 103 54 90 116
		mu 0 4 57 20 86 83
		f 4 -36 44 -104 117
		mu 0 4 56 1 20 57
		f 4 35 118 -44 52
		mu 0 4 1 56 79 2
		f 4 130 43 119 -143
		mu 0 4 35 2 79 78
		f 4 -42 50 42 121
		mu 0 4 72 17 42 75
		f 4 41 122 -73 60
		mu 0 4 17 72 74 18
		f 4 110 84 72 123
		mu 0 4 102 95 18 74
		f 4 111 49 -111 124
		mu 0 4 101 96 95 102
		f 4 -112 125 112 48
		mu 0 4 49 68 71 50
		f 4 159 113 47 -172
		mu 0 4 67 66 29 28
		f 4 136 114 46 -149
		mu 0 4 63 60 11 39
		f 4 101 45 -115 128
		mu 0 4 59 8 11 60
		f 4 132 -107 -132 143
		mu 0 4 36 23 77 78
		f 4 -17 -133 144 -76
		mu 0 4 24 23 36 37
		f 4 -64 75 145 134
		mu 0 4 106 24 37 107
		f 4 135 -82 -135 146
		mu 0 4 62 65 106 107
		f 4 -18 -136 147 -128
		mu 0 4 66 65 62 63
		f 4 -114 127 148 137
		mu 0 4 29 66 63 39
		f 4 138 -39 -138 149
		mu 0 4 38 26 29 39
		f 4 -19 -139 150 -100
		mu 0 4 91 26 38 90
		f 4 -88 99 151 140
		mu 0 4 33 91 90 40
		f 4 129 -58 -141 152
		mu 0 4 34 30 33 40
		f 4 -32 -154 164 -52
		mu 0 4 42 41 110 111
		f 4 -43 51 165 154
		mu 0 4 75 42 111 76
		f 4 155 -108 -155 166
		mu 0 4 22 45 75 76
		f 4 -33 -156 167 -75
		mu 0 4 46 45 22 25
		f 4 -63 74 168 157
		mu 0 4 104 46 25 105
		f 4 158 -83 -158 169
		mu 0 4 64 70 104 105
		f 4 -34 -159 170 -127
		mu 0 4 71 70 64 67
		f 4 -113 126 171 160
		mu 0 4 50 71 67 28
		f 4 161 -40 -161 172
		mu 0 4 27 47 50 28
		f 4 -35 -162 173 -99
		mu 0 4 94 47 27 92
		f 4 -87 98 174 163
		mu 0 4 54 94 92 32
		f 4 153 -59 -164 175
		mu 0 4 31 51 54 32
		f 4 -166 176 184 -178
		mu 0 4 76 111 112 113
		f 4 -165 179 185 -177
		mu 0 4 111 110 114 112
		f 4 -13 180 186 -180
		mu 0 4 31 30 115 116
		f 4 -130 178 187 -181
		mu 0 4 30 34 117 115
		f 4 141 181 188 -179
		mu 0 4 34 35 118 117
		f 4 142 182 189 -182
		mu 0 4 35 78 119 118
		f 4 131 183 190 -183
		mu 0 4 78 77 120 119
		f 4 120 177 191 -184
		mu 0 4 77 76 113 120;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface3" -p "liftInterior";
	rename -uid "0B4D7B13-46AB-3994-C873-E99030066B1F";
	setAttr ".rp" -type "double3" 0 -19.967881510357444 86.279148838498656 ;
	setAttr ".sp" -type "double3" 0 -19.967881510357444 86.279148838498656 ;
createNode mesh -n "polySurfaceShape5" -p "polySurface3";
	rename -uid "8C436E08-4018-F548-527A-25AACCA46FB6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape33" -p "polySurface3";
	rename -uid "324495D2-4D5A-9945-49BA-CC94A69CD343";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "front";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.5 0.125 0.5 0 0.4325
		 0 0.4325 0.125 0.5 0.22499999 0.4325 0.22499999 0.5 0.125 0.5 0 0.5 0.22499999 0.4325
		 0.22499999 0.4325 0.125 0.4325 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 -19.967882 24.295031 0 
		-19.967882 24.295031 0 -19.967882 24.295031 0 -19.967882 24.295031 0 -19.967882 24.295031 
		0 -19.967882 24.295031 0 -19.967882 19.467138 0 -19.967882 19.467138 0 -19.967882 
		19.467138 0 -19.967882 19.467138 0 -19.967882 19.467138 0 -19.967882 19.467138;
	setAttr -s 12 ".vt[0:11]"  4.5019219e-16 -125 99.49998474 4.5019219e-16 0 99.49998474
		 -54.000003814697 -125 99.49998474 -54.000003814697 0 99.49998474 0 100 99.49998474
		 -54.000003814697 100 99.49998474 2.2509609e-16 -125 107.24995422 2.2509609e-16 0 107.24995422
		 0 100 107.24995422 -54.000003814697 100 107.24995422 -54.000003814697 0 107.24995422
		 -54.000003814697 -125 107.24995422;
	setAttr -s 19 ".ed[0:18]"  0 1 0 2 0 0 2 3 0 1 3 1 1 4 0 3 5 0 5 4 0
		 6 0 0 7 1 1 8 4 0 9 5 0 10 3 1 11 2 0 6 7 0 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 -1 -2 2 -4
		mu 0 4 0 1 2 3
		f 4 -5 3 5 6
		mu 0 4 4 0 3 5
		f 4 -14 7 0 -9
		mu 0 4 6 7 1 0
		f 4 -15 8 4 -10
		mu 0 4 8 6 0 4
		f 4 -16 9 -7 -11
		mu 0 4 9 8 4 5
		f 4 -17 10 -6 -12
		mu 0 4 10 9 5 3
		f 4 -18 11 -3 -13
		mu 0 4 11 10 3 2
		f 4 -19 12 1 -8
		mu 0 4 7 11 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface5" -p "liftInterior";
	rename -uid "83154498-4D0C-EF9F-1BEF-60ACDA0ACB55";
	setAttr ".rp" -type "double3" 0 -19.967881510357444 86.279148838498628 ;
	setAttr ".sp" -type "double3" 0 -19.967881510357444 86.279148838498628 ;
createNode mesh -n "polySurfaceShape8" -p "polySurface5";
	rename -uid "D66DAEB1-4E8A-3AD9-0B6E-3D9AD1B1317C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape34" -p "polySurface5";
	rename -uid "0F20ADD8-46CA-0B32-9B0A-ADBE5E1BB05A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "front";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.5675 0 0.5 0 0.5
		 0.125 0.5675 0.125 0.5 0.22499999 0.5675 0.22499999 0.5675 0 0.5 0 0.5675 0.125 0.5675
		 0.22499999 0.5 0.22499999 0.5 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 -19.967882 24.294992 0 
		-19.967882 24.294992 0 -19.967882 24.294992 0 -19.967882 24.294992 0 -19.967882 24.295031 
		0 -19.967882 24.295031 0 -19.967882 19.467121 0 -19.967882 19.467121 0 -19.967882 
		19.467102 0 -19.967882 19.467121 0 -19.967882 19.467121 0 -19.967882 19.467102;
	setAttr -s 12 ".vt[0:11]"  7.1054274e-15 -125 99.50004578 54.000003814697 -125 99.50004578
		 1.5352913e-15 0 99.50004578 54.000003814697 0 99.50004578 -4.0348448e-15 100 99.49998474
		 54.000003814697 100 99.49998474 7.1054274e-15 -125 107.24998474 54.000003814697 -125 107.24998474
		 54.000003814697 0 107.25001526 54.000003814697 100 107.24998474 -4.0348448e-15 100 107.24998474
		 1.5352913e-15 0 107.25001526;
	setAttr -s 19 ".ed[0:18]"  0 1 0 0 2 0 3 2 1 1 3 0 2 4 0 4 5 0 3 5 0
		 6 0 0 7 1 0 8 3 1 9 5 0 10 4 0 11 2 1 6 7 0 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 -1 1 -3 -4
		mu 0 4 0 1 2 3
		f 4 2 4 5 -7
		mu 0 4 3 2 4 5
		f 4 -14 7 0 -9
		mu 0 4 6 7 1 0
		f 4 -15 8 3 -10
		mu 0 4 8 6 0 3
		f 4 -16 9 6 -11
		mu 0 4 9 8 3 5
		f 4 -17 10 -6 -12
		mu 0 4 10 9 5 4
		f 4 -18 11 -5 -13
		mu 0 4 11 10 4 2
		f 4 -19 12 -2 -8
		mu 0 4 7 11 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "liftExterior";
	rename -uid "1C08DEA1-435A-73C7-15E3-32A1D0C78356";
createNode transform -n "polySurface2" -p "liftExterior";
	rename -uid "AB40FD65-4212-5D35-4613-CAA46233B16B";
createNode mesh -n "polySurfaceShape3" -p "polySurface2";
	rename -uid "96323361-43DC-8DFC-D9F5-F78FD6E6B8E1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:83]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 20 "f[0]" "f[9]" "f[11]" "f[13]" "f[17]" "f[18]" "f[19]" "f[20]" "f[31]" "f[32]" "f[33]" "f[34]" "f[44]" "f[45]" "f[46]" "f[47]" "f[80]" "f[81]" "f[82]" "f[83]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[57]" "f[58]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[59]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 15 "f[2]" "f[3]" "f[5]" "f[14]" "f[15]" "f[16]" "f[28]" "f[29]" "f[30]" "f[48]" "f[49]" "f[50]" "f[68]" "f[69]" "f[70]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 15 "f[1]" "f[4]" "f[6]" "f[21]" "f[22]" "f[23]" "f[35]" "f[36]" "f[37]" "f[41]" "f[42]" "f[43]" "f[77]" "f[78]" "f[79]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 121 ".uvst[0].uvsp[0:120]" -type "float2" 0.375 0.72999996
		 0.44999999 0.72999996 0.44999999 0.75 0.375 0.75 0.625 0 0.63125002 0 0.63125002
		 0.020000001 0.625 0.020000001 0.37499997 0.020000001 0.36874998 0.020000005 0.36874998
		 0 0.375 0 0.125 0 0.25 0 0.25 0.020000005 0.125 0.020000005 0.875 0.020000005 0.74999994
		 0.020000001 0.75 0 0.875 0 0.42000002 0.81999999 0.41999996 0.7744 0.37499997 0.94
		 0.375 1 0.57999998 0.18560001 0.58000004 0.18000001 0.55000001 0.75 0.55000001 0.72999996
		 0.625 0.72999996 0.625 0.75 0.5 0.5 0.5 0.47999999 0.44999996 0.66399997 0.44999999
		 0.69999999 0.5 0.72999996 0.5 0.75 0.55000001 0.30000001 0.55000001 0.296 0.36874998
		 0.25 0.36874998 0.22499999 0.375 0.22499999 0.375 0.25 0.25 0.22499999 0.25 0.25
		 0.125 0.22499999 0.125 0.25 0.375 0.5 0.44999999 0.5 0.44999999 0.52499998 0.375
		 0.52499998 0.5 0.52499998 0.5 0.5 0.55000001 0.52499998 0.55000001 0.5 0.625 0.52499998
		 0.625 0.5 0.75 0.25 0.75 0.22499999 0.875 0.22499999 0.875 0.25 0.63125002 0.25 0.63125002
		 0.22499999 0.625 0.22499999 0.625 0.25 0.58000004 0.25 0.58000004 0.243 0.5 0.27500001
		 0.55000001 0.255 0.55000001 0.25 0.5 0.25 0.44999999 0.29499999 0.44999999 0.25 0.375
		 0.32499999 0.42000002 0.30699998 0.42000002 0.25 0.375 0.2 0.36874998 0.2 0.36874998
		 0.12800001 0.375 0.12800001 0.25 0.12800001 0.25 0.2 0.125 0.12800001 0.125 0.2 0.375
		 0.55000001 0.44999999 0.55000001 0.44999999 0.62199998 0.375 0.62199998 0.5 0.62199998
		 0.5 0.55000001 0.55000001 0.62199998 0.55000001 0.55000001 0.625 0.62199998 0.625
		 0.55000001 0.875 0.2 0.75 0.2 0.75 0.12800001 0.875 0.12800001 0.63125002 0.2 0.63125002
		 0.12800001 0.625 0.12800001 0.625 0.2 0.57999998 0.236 0.58000004 0.21584001 0.375
		 0.616 0.42000002 0.52815998 0.42000002 0.36399999 0.375 0.39999998 0.55875003 0.24249999
		 0.55875003 0.1997 0.55000001 0.2744 0.55000001 0.25999999 0.5 0.26249999 0.5 0.30000001
		 0.44125 0.28249997 0.44999999 0.33999997 0.44125 0.29729998 0.44999999 0.46959996
		 0.44124997 0.58200002 0.5 0.74000001 0.55875003 0.648 0.55875003 0.148;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 103 ".vt[0:102]"  -150 -150 150 150 -150 150 -150 150 150 150 150 150
		 -150 150 -150 150 150 -150 -150 -150 -150 150 -150 -150 -150 150 0 -150 -150 -2.2265176e-15
		 150 -150 2.4394549e-16 150 150 -7.1054274e-15 -150 150 142.5 -150 -150 142.5 150 -150 142.5
		 150 150 142.5 3.5527137e-15 -150 150 1.4710455e-15 150 150 0 150 -150 0 -150 -150
		 -54.000003814697 -150 150 -54.000003814697 150 150 -54.000003814697 150 -150 -54.000003814697 -150 -150
		 54.000003814697 150 150 54.000003814697 -150 150 54.000003814697 -150 -150 54.000003814697 150 -150
		 -150 80.032119751 150 -150 80.032119751 142.5 -150 80.032119751 -2.4206298e-15 -150 80.032119751 -150
		 -54.000003814697 80.032119751 -150 -2.2215599e-15 80.032119751 -150 54.000003814697 80.032119751 -150
		 150 80.032119751 -150 150 80.032119751 -2.4206298e-15 150 80.032119751 142.5 150 80.032119751 150
		 54.000003814697 80.032119751 139.56517029 2.4592246e-16 80.032119751 139.56517029
		 -54 80.032119751 139.56517029 -150 -144.96788025 150 -150 -144.96788025 142.5 -150 -144.96788025 1.4122125e-15
		 -150 -144.96788025 -150 -54.000003814697 -144.96788025 -150 0 -144.96788025 -150
		 54.000003814697 -144.96788025 -150 150 -144.96788025 -150 150 -144.96788025 5.7368673e-16
		 150 -144.96788025 142.5 150 -144.96788025 150 54.000003814697 -144.96788025 139.56517029
		 1.7763568e-15 -144.96788025 139.56517029 -54.000003814697 -144.96788025 139.56517029
		 54.000007629395 -19.96788406 139.56517029 150 -19.96788025 150 150 -19.96788025 142.5
		 150 -19.96788025 6.2782737e-17 150 -19.96788406 -150 54.000007629395 -19.96788025 -150
		 5.5399777e-16 -19.96788406 -150 -54.000007629395 -19.96788406 -150 -150 -19.96788406 -150
		 -150 -19.96788406 2.1444509e-15 -150 -19.96788406 142.5 -150 -19.96788025 150 -54 -19.96788025 139.56517029
		 54.000007629395 -19.96788406 126.71710205 54.000003814697 80.032119751 126.71710205
		 -1.7763568e-15 80.032119751 126.71710205 -54 80.032119751 126.71710205 -54 -19.96788025 126.71710205
		 -54.000003814697 -144.96788025 126.71710205 0 -144.96788025 126.71710205 54.000003814697 -144.96788025 126.71710205
		 92.40000916 150 150 92.40000153 80.032119751 150 92.40000916 -19.96788406 150 92.40000153 -144.96788025 150
		 92.40000916 -150 150 -92.40000153 -150 150 -92.40000916 -144.96788025 150 -92.3999939 -19.96788025 150
		 -92.40000153 80.032119751 150 -92.40000153 150 150 -150 115.016059875 -150 -150 115.016059875 -1.2827401e-15
		 -150 115.016059875 142.5 -150 115.016059875 150 -92.40000153 115.016059875 150 -54 115.016059875 150
		 1.7429643e-15 115.016059875 150 54.000003814697 115.016059875 150 92.40000916 115.016059875 150
		 150 115.016059875 150 150 115.016059875 142.5 150 115.016059875 -4.8354536e-15 150 115.016059875 -150
		 54.000003814697 115.016059875 -150 0 115.016059875 -150 -54.000003814697 115.016059875 -150;
	setAttr -s 188 ".ed";
	setAttr ".ed[0:165]"  0 82 0 2 86 0 4 22 0 6 23 0 0 42 0 1 52 0 2 12 0 3 15 0
		 4 87 0 5 99 0 6 9 0 7 10 0 8 4 0 9 13 0 11 5 0 8 88 1 10 50 1 10 14 0 12 8 0 13 0 0
		 14 1 0 15 11 0 12 89 1 14 51 1 16 25 0 17 24 0 18 27 0 19 26 0 16 54 1 18 101 1 20 16 0
		 21 17 0 22 18 0 23 19 0 20 55 1 22 102 1 24 77 0 25 81 0 26 7 0 27 5 0 24 94 1 26 48 1
		 28 90 0 29 66 1 30 65 1 31 64 0 32 63 1 33 62 1 34 100 1 35 60 0 36 98 1 37 97 1
		 38 96 0 39 56 0 40 93 1 41 92 1 28 29 1 29 30 1 30 31 1 31 32 1 32 33 1 33 34 1 34 35 1
		 35 36 1 36 37 1 37 38 1 38 78 1 39 40 0 40 41 0 41 85 1 42 67 0 43 13 1 44 9 1 45 6 0
		 46 23 1 47 19 1 48 61 1 49 7 0 50 59 1 51 58 1 52 57 0 53 25 1 55 68 0 42 43 1 43 44 1
		 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 53 54 0 54 55 0 55 83 1
		 52 80 1 56 53 0 57 38 0 58 37 1 59 36 1 60 49 0 61 34 1 62 47 1 63 46 1 64 45 0 65 44 1
		 66 43 1 67 28 0 68 41 0 56 79 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 84 1 69 56 0 70 39 0 71 40 0 72 41 0 73 68 0 74 55 0 75 54 0
		 76 53 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 76 69 0 77 3 0 78 39 1
		 79 57 1 80 53 1 81 1 0 77 95 1 78 79 1 79 80 1 80 81 1 82 20 0 83 42 1 84 68 1 85 28 1
		 86 21 0 82 83 1 83 84 1 84 85 1 85 91 1 87 31 0 88 30 1 89 29 1 90 2 0 91 86 1 92 21 1
		 93 17 1 94 39 1 95 78 1 96 3 0;
	setAttr ".ed[166:187]" 97 15 1 98 11 1 99 35 0 100 27 1 101 33 1 102 32 1 87 88 1
		 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1 97 98 1 98 99 1
		 99 100 1 100 101 1 101 102 1 102 87 1;
	setAttr -s 84 -ch 336 ".fc[0:83]" -type "polyFaces" 
		f 4 86 74 -4 -74
		mu 0 4 0 1 2 3
		f 4 -21 23 92 -6
		mu 0 4 4 5 6 7
		f 4 83 71 19 4
		mu 0 4 8 9 10 11
		f 4 10 -73 85 73
		mu 0 4 12 13 14 15
		f 4 90 -17 -12 -78
		mu 0 4 16 17 18 19
		f 4 -72 84 72 13
		mu 0 4 10 9 14 13
		f 4 91 -24 -18 16
		mu 0 4 17 6 5 18
		f 4 152 148 -5 0
		mu 0 4 20 21 22 23
		f 4 5 96 146 142
		mu 0 4 4 7 24 25
		f 4 41 89 77 -39
		mu 0 4 26 27 28 29
		f 4 28 94 -35 30
		mu 0 4 30 31 32 33
		f 4 -75 87 75 -34
		mu 0 4 2 1 34 35
		f 4 -82 93 -29 24
		mu 0 4 36 37 31 30
		f 4 -76 88 -42 -28
		mu 0 4 35 34 27 26
		f 4 22 174 159 6
		mu 0 4 38 39 40 41
		f 4 173 -23 18 15
		mu 0 4 42 39 38 43
		f 4 172 -16 12 8
		mu 0 4 44 42 43 45
		f 4 2 35 187 -9
		mu 0 4 46 47 48 49
		f 4 186 -36 32 29
		mu 0 4 50 48 47 51
		f 4 185 -30 26 -170
		mu 0 4 52 50 51 53
		f 4 184 169 39 9
		mu 0 4 54 52 53 55
		f 4 -168 183 -10 -15
		mu 0 4 56 57 58 59
		f 4 -22 -167 182 167
		mu 0 4 56 60 61 57
		f 4 181 166 -8 -166
		mu 0 4 62 61 60 63
		f 4 143 180 165 -139
		mu 0 4 64 65 62 63
		f 4 178 -41 -26 -163
		mu 0 4 66 67 68 69
		f 4 177 162 -32 -162
		mu 0 4 70 66 69 71
		f 4 175 160 -2 -160
		mu 0 4 72 73 74 41
		f 4 56 43 120 108
		mu 0 4 75 76 77 78
		f 4 119 -44 57 44
		mu 0 4 79 77 76 80
		f 4 118 -45 58 45
		mu 0 4 81 79 80 82
		f 4 59 46 117 -46
		mu 0 4 83 84 85 86
		f 4 116 -47 60 47
		mu 0 4 87 85 84 88
		f 4 115 -48 61 -103
		mu 0 4 89 87 88 90
		f 4 114 102 62 49
		mu 0 4 91 89 90 92
		f 4 63 -101 113 -50
		mu 0 4 93 94 95 96
		f 4 64 -100 112 100
		mu 0 4 94 97 98 95
		f 4 111 99 65 -99
		mu 0 4 99 98 97 100
		f 4 144 140 98 66
		mu 0 4 101 102 99 100
		f 4 121 154 150 -109
		mu 0 4 103 104 105 106
		f 4 145 -97 80 -141
		mu 0 4 102 24 7 99
		f 4 -93 79 -112 -81
		mu 0 4 7 6 98 99
		f 4 -113 -80 -92 78
		mu 0 4 95 98 6 17
		f 4 -114 -79 -91 -102
		mu 0 4 96 95 17 16
		f 4 -90 76 -115 101
		mu 0 4 28 27 89 91
		f 4 -89 -104 -116 -77
		mu 0 4 27 34 87 89
		f 4 -88 -105 -117 103
		mu 0 4 34 1 85 87
		f 4 -118 104 -87 -106
		mu 0 4 86 85 1 0
		f 4 -86 -107 -119 105
		mu 0 4 15 14 79 81
		f 4 -85 -108 -120 106
		mu 0 4 14 9 77 79
		f 4 -121 107 -84 70
		mu 0 4 78 77 9 8
		f 4 -149 153 -122 -71
		mu 0 4 22 21 104 103
		f 4 -131 122 -54 -124
		mu 0 4 107 108 109 110
		f 4 -132 123 67 -125
		mu 0 4 111 107 110 112
		f 4 -133 124 68 -126
		mu 0 4 113 111 112 114
		f 4 -134 125 -110 -127
		mu 0 4 115 113 114 116
		f 4 -135 126 -83 -128
		mu 0 4 117 115 116 32
		f 4 -136 127 -95 -129
		mu 0 4 118 117 32 31
		f 4 -137 128 -94 -130
		mu 0 4 119 118 31 37
		f 4 -138 129 -98 -123
		mu 0 4 108 120 37 109
		f 4 179 -144 -37 40
		mu 0 4 67 65 64 68
		f 4 110 -145 139 53
		mu 0 4 109 102 101 110
		f 4 -142 -146 -111 97
		mu 0 4 37 24 102 109
		f 4 -147 141 81 37
		mu 0 4 25 24 37 36
		f 4 34 95 -153 147
		mu 0 4 33 32 21 20
		f 4 -154 -96 82 -150
		mu 0 4 104 21 32 116
		f 4 -155 149 109 69
		mu 0 4 105 104 116 114
		f 4 -161 176 161 -152
		mu 0 4 74 73 70 71
		f 4 -59 -158 -173 156
		mu 0 4 82 80 42 44
		f 4 -58 -159 -174 157
		mu 0 4 80 76 39 42
		f 4 -175 158 -57 42
		mu 0 4 40 39 76 75
		f 4 -151 155 -176 -43
		mu 0 4 106 105 73 72
		f 4 -177 -156 -70 55
		mu 0 4 70 73 105 114
		f 4 -69 54 -178 -56
		mu 0 4 114 112 66 70
		f 4 -68 -164 -179 -55
		mu 0 4 112 110 67 66
		f 4 -140 -165 -180 163
		mu 0 4 110 101 65 67
		f 4 -181 164 -67 52
		mu 0 4 62 65 101 100
		f 4 -66 51 -182 -53
		mu 0 4 100 97 61 62
		f 4 -183 -52 -65 50
		mu 0 4 57 61 97 94
		f 4 -184 -51 -64 -169
		mu 0 4 58 57 94 93
		f 4 -63 48 -185 168
		mu 0 4 92 90 52 54
		f 4 -62 -171 -186 -49
		mu 0 4 90 88 50 52
		f 4 -61 -172 -187 170
		mu 0 4 88 84 48 50
		f 4 -188 171 -60 -157
		mu 0 4 49 48 84 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lift" -p "liftExterior";
	rename -uid "B9CD1DDE-464F-F121-2AC0-A6A7DD3A85C2";
createNode transform -n "polySurface4" -p "liftExterior";
	rename -uid "A75EFB75-499C-2034-0361-FB9A8356DFC4";
	setAttr ".rp" -type "double3" 0 -19.967881510357444 86.279148838498656 ;
	setAttr ".sp" -type "double3" 0 -19.967881510357444 86.279148838498656 ;
createNode mesh -n "polySurfaceShape6" -p "polySurface4";
	rename -uid "31404847-4377-CC23-AF26-9BA86B0F663E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "front";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.5 0.125 0.4325
		 0.125 0.4325 0 0.5 0 0.5 0.22499999 0.4325 0.22499999 0.5 0.125 0.5 0 0.5 0 0.5 0.125
		 0.4325 0 0.4325 0 0.4325 0.125 0.4325 0.125 0.5 0.22499999 0.5 0.22499999 0.4325
		 0.22499999 0.4325 0.22499999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 -19.967882 14.63923 0 -19.967882 
		14.63923 0 -19.967882 14.63923 0 -19.967882 14.63923 0 -19.967882 14.63923 0 -19.967882 
		14.63923 0 -19.967882 19.467138 0 -19.967882 19.467138 0 -19.967882 19.467138 0 -19.967882 
		19.467138 0 -19.967882 19.467138 0 -19.967882 19.467138;
	setAttr -s 12 ".vt[0:11]"  1.5219952e-15 0 114.99995422 1.2450822e-15 -125 114.99995422
		 -2.3684759e-15 100 114.99995422 -54.000003814697 100 114.99995422 -54.000003814697 0 114.99995422
		 -54.000003814697 -125 114.99995422 7.9244734e-16 -125 107.24995422 2.2509609e-16 0 107.24995422
		 -54.000003814697 -125 107.24995422 -54.000003814697 0 107.24995422 -54.000003814697 100 107.24995422
		 -1.7585531e-15 100 107.24995422;
	setAttr -s 19 ".ed[0:18]"  1 0 0 0 2 0 0 4 1 3 2 0 4 3 0 5 4 0 5 1 0
		 1 6 0 0 7 1 5 8 0 4 9 1 2 11 0 3 10 0 6 7 0 8 6 0 9 8 0 10 9 0 11 10 0 7 11 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 2 -6 6 0
		mu 0 4 0 1 2 3
		f 4 -4 -5 -3 1
		mu 0 4 4 5 1 0
		f 4 -1 7 13 -9
		mu 0 4 6 7 8 9
		f 4 -7 9 14 -8
		mu 0 4 7 10 11 8
		f 4 5 10 15 -10
		mu 0 4 10 12 13 11
		f 4 -2 8 18 -12
		mu 0 4 14 6 9 15
		f 4 4 12 16 -11
		mu 0 4 12 16 17 13
		f 4 3 11 17 -13
		mu 0 4 16 14 15 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lift_door_left" -p "liftExterior";
	rename -uid "72E72125-495A-9CD3-B827-3A89E66A6BBA";
	setAttr ".rp" -type "double3" -54.000003814697266 -144.96788151035744 126.71710205078126 ;
	setAttr ".sp" -type "double3" -54.000003814697266 -144.96788151035744 126.71710205078126 ;
createNode transform -n "polySurface6" -p "liftExterior";
	rename -uid "103D4EF5-4967-E29B-6981-749F8416EE02";
	setAttr ".rp" -type "double3" 0 -19.967881510357444 86.279148838498628 ;
	setAttr ".sp" -type "double3" 0 -19.967881510357444 86.279148838498628 ;
createNode mesh -n "polySurfaceShape9" -p "polySurface6";
	rename -uid "ED54A6F9-4F3E-17D9-EDD9-7B980CF5EC7E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "front";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.5675 0 0.5675 0.125
		 0.5 0.125 0.5 0 0.5675 0.22499999 0.5 0.22499999 0.5675 0 0.5 0 0.5 0 0.5675 0 0.5
		 0.125 0.5 0.125 0.5675 0.125 0.5675 0.125 0.5 0.22499999 0.5 0.22499999 0.5675 0.22499999
		 0.5675 0.22499999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 -19.967882 14.63923 0 -19.967882 
		14.639192 0 -19.967882 14.639192 0 -19.967882 14.639192 0 -19.967882 14.63923 0 -19.967882 
		14.639192 0 -19.967882 19.467121 0 -19.967882 19.467121 0 -19.967882 19.467102 0 
		-19.967882 19.467121 0 -19.967882 19.467121 0 -19.967882 19.467102;
	setAttr -s 12 ".vt[0:11]"  54.000003814697 -125 114.99995422 54.000003814697 0 115.000015258789
		 54.000003814697 100 115.000015258789 5.1584705e-15 0 115.000015258789 1.0235787e-14 -125 114.99995422
		 -1.666369e-15 100 115.000015258789 7.1232311e-15 -125 107.24998474 54.000003814697 -125 107.24998474
		 1.5352913e-15 0 107.25001526 -4.0348448e-15 100 107.24998474 54.000003814697 100 107.24998474
		 54.000003814697 0 107.25001526;
	setAttr -s 19 ".ed[0:18]"  1 3 1 0 1 0 4 0 0 1 2 0 5 2 0 4 3 0 3 5 0
		 4 6 0 0 7 0 3 8 1 1 11 1 5 9 0 2 10 0 6 7 0 8 6 0 9 8 0 10 9 0 11 10 0 7 11 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 1 0 -6 2
		mu 0 4 0 1 2 3
		f 4 3 -5 -7 -1
		mu 0 4 1 4 5 2
		f 4 -3 7 13 -9
		mu 0 4 6 7 8 9
		f 4 5 9 14 -8
		mu 0 4 7 10 11 8
		f 4 -2 8 18 -11
		mu 0 4 12 6 9 13
		f 4 6 11 15 -10
		mu 0 4 10 14 15 11
		f 4 4 12 16 -12
		mu 0 4 14 16 17 15
		f 4 -4 10 17 -13
		mu 0 4 16 12 13 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lift_trimsheet";
	rename -uid "D3C89044-42DB-9061-9AE4-4294545031BD";
createNode mesh -n "lift_trimsheetShape" -p "lift_trimsheet";
	rename -uid "9F232986-4D87-29F0-14C9-5888325C901C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8A5A7330-48BE-BA60-CFB3-D59865070BFA";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DDF3D11F-4CC0-C660-B159-D5A6D1F59890";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "42F8FE4C-4CA4-9749-8297-5AA6DB2AEC27";
createNode displayLayerManager -n "layerManager";
	rename -uid "77B6C78F-41C4-6D92-03ED-46B3422C8FA2";
createNode displayLayer -n "defaultLayer";
	rename -uid "74E15D65-4372-3A3F-CE8B-DCB6F696DA4E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FC954ABB-4E26-4D2D-C622-3D9222861A17";
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
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 1\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1625\\n    -height 883\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1625\\n    -height 883\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "66958F6B-4519-09D6-CC99-B69A2D3F97AE";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "AB52B90D-47BC-5747-3551-278699F12EA2";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "38E85259-4D5C-E1FB-EBC3-33A1A7AF1913";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "8063F90F-4732-6121-E09B-85814CBCBC20";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "8EE64085-4D2E-CF58-449C-318B271F92E7";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode groupId -n "groupId24";
	rename -uid "0B95D466-40EB-29A7-DEE8-718881F14DFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "B5E9E446-4350-0C2E-6A02-DBB40CEA4320";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "DAC94714-4A0D-EFF6-B9CB-77880DEA97EC";
	setAttr ".ihi" 0;
createNode polyPlane -n "polyPlane1";
	rename -uid "72B1CA80-46F5-2E47-348A-1B8E529A3E87";
	setAttr ".cuv" 2;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "5AD8934A-4A12-CCCA-D1F1-9689DD378DA7";
createNode file -n "file1";
	rename -uid "799DDB1E-41F5-A6ED-A4ED-D588F9FF0738";
	setAttr ".ftn" -type "string" "C:/Users/saiye/Desktop/Y2S1/IP/Modelling/Exports/Trimsheets/trimsheet_for_modular_assets/lift/trimsheet_lift_standardSurface1_AlbedoTransparency.1001.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file2";
	rename -uid "D81E84D7-432F-80B1-E64E-CE8351C47818";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/saiye/Desktop/Y2S1/IP/Modelling/Exports/Trimsheets/trimsheet_for_modular_assets/lift/trimsheet_lift_standardSurface1_Normal.1001.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file3";
	rename -uid "C692F94D-4053-0274-8C12-B68E55E88799";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/saiye/Desktop/Y2S1/IP/Modelling/Exports/Trimsheets/trimsheet_for_modular_assets/lift/trimsheet_lift_standardSurface1_MetallicSmoothness.1001.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file4";
	rename -uid "89A8E625-4C63-EB90-1226-358C2BAEB08F";
	setAttr ".ftn" -type "string" "C:/Users/saiye/Desktop/Y2S1/IP/Modelling/Exports/Trimsheets/trimsheet_for_modular_assets/lift/trimsheet_lift_standardSurface1_Emission.1001.png";
	setAttr ".cs" -type "string" "sRGB";
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "C67F803A-465E-DDF3-91AE-1183B824E577";
createNode aiStandardSurface -n "lift1";
	rename -uid "8EBE64B0-4536-22FB-4E17-4F85FAB2105F";
	setAttr ".emission" 1;
createNode shadingEngine -n "set1";
	rename -uid "A045D018-45E2-CAA0-0838-08A7139AF5F1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "B9850B3B-4842-C515-C170-5C927138E7FB";
createNode bump2d -n "bump2d1";
	rename -uid "88380D07-4759-6C20-5130-D5934437E8FE";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode polyMapDel -n "polyMapDel1";
	rename -uid "76B5E1E2-4543-5D6C-BCD9-DD9B0ED3DA72";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel2";
	rename -uid "9750ADD5-4F06-E6CC-2415-B688F850E732";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel3";
	rename -uid "3F35BD00-4AEE-5405-F7A8-4A9C81C0329B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel4";
	rename -uid "60137FB8-47BE-8843-843C-3B839FDBF042";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel5";
	rename -uid "C97F786A-46B3-D157-B192-9689D8513443";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel6";
	rename -uid "1D25E1B3-405A-BA02-B7F5-2BB5914B7F14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel7";
	rename -uid "3D269128-49CC-40CF-EB43-0B942F1CC79A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel8";
	rename -uid "3760DE54-4AD5-79FD-6A30-38BB87C1118C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel9";
	rename -uid "4649D57B-481C-7248-5738-1F9C5ADCBBB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel10";
	rename -uid "B6ACF73D-407B-7DB4-BFDE-8786838793BD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel11";
	rename -uid "1CA4AB3A-4E77-6B3E-AE24-968A4B59D5F7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel12";
	rename -uid "E8CA85F1-463D-897D-3C2D-11B07C9C7A10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel13";
	rename -uid "449F32A7-4AC0-F14C-7ABA-69BBB434F625";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel14";
	rename -uid "58B25202-42A5-457E-DD9E-EA9A824901E0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel15";
	rename -uid "8A831016-47CE-FF3F-C73F-FBBA8B4208AD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel16";
	rename -uid "2876B834-444C-BF56-7212-5BBC907FF50A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel17";
	rename -uid "BE0E97CB-48A7-FD6E-21EA-A8B6BB13613F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel18";
	rename -uid "5FB77998-4B32-6F70-BE51-B0B2874CB768";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel19";
	rename -uid "94972F82-4683-6D18-D1B9-D49DFBF205E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel20";
	rename -uid "A7D7594F-4939-631B-9E90-F39F6D25654E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel21";
	rename -uid "2B05FD5A-4BA2-3416-6CC4-049797B35CE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel22";
	rename -uid "235F0843-4C2F-1052-BC5A-41922B52ECC0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
createNode polyMapDel -n "polyMapDel23";
	rename -uid "DE31B22E-4417-964B-9059-8C9F396BF91E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:93]";
createNode groupId -n "groupId29";
	rename -uid "06ED47D4-4B19-7B69-82C2-739402F5B8B5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "A8450771-4525-A779-E9BB-4FA34D171201";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[92:93]";
	setAttr ".irc" -type "componentList" 1 "f[0:91]";
createNode polyMapDel -n "polyMapDel24";
	rename -uid "C9E3E7B6-4BBD-B364-0D10-AC9F1A290F9D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId30";
	rename -uid "B1C8115A-42B1-2D65-DA1A-0890DA25227E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "0805671A-4D31-648C-A318-8382AC165BBD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode polyMapDel -n "polyMapDel25";
	rename -uid "9920EF5F-4D46-BAA7-AD97-B4B2B61AFC7D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId31";
	rename -uid "7639075F-4BA4-5B74-A350-B0999E4169E5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "44FA86F7-434F-189D-7C7A-2797E7D4F915";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "4AD37B43-4F3F-88D6-FC0F-259452AB1821";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.074130058288574219 -19.967880249023438 21.021417617797852 ;
	setAttr ".ro" -type "double3" -31.538356209370679 -83.800000497534882 2.3539893697588023e-06 ;
	setAttr ".ps" -type "double2" 221.80284773568678 328.37273142794686 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 0.20999874174594879 1.8607999086380005 0.84732210636138916 0.84730511903762817
		 5.5962116866331937e-17 3.049830436706543 -0.52307963371276855 -0.52306920289993286
		 1.9330713748931885 -0.20214755833148956 -0.092048637568950653 -0.092046797275543213
		 -203.10554504394531 175.71539306640625 405.21798706054688 405.40988159179688;
	setAttr ".prgt" 1625;
	setAttr ".ptop" 883;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "1B0E10A4-4AAA-4F02-D8D9-DEB00F63CBAC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[44:52]" "e[54]" "e[60]" "e[78]" "e[84]" "e[130]" "e[137]" "e[160]" "e[176]" "e[181]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "5A98CC19-434B-E130-506D-53BCCA9E0C3E";
	setAttr ".uopa" yes;
	setAttr -s 69 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 0 0.40109408 ;
	setAttr ".uvtk[2]" -type "float2" 0 0.40109408 ;
	setAttr ".uvtk[4]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[5]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[6]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[7]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[8]" -type "float2" 0 0.40109408 ;
	setAttr ".uvtk[11]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[15]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[16]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[18]" -type "float2" 0 0.40109408 ;
	setAttr ".uvtk[19]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[20]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[21]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[22]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[26]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[32]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[33]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[34]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[40]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[41]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[42]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[43]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[46]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[47]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[49]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[50]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[51]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[52]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[53]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[54]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[55]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[56]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[57]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[58]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[59]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[60]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[61]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[62]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[63]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[64]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[65]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[66]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[67]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[68]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[69]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[70]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[71]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[72]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[73]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[74]" -type "float2" 0 0.40109408 ;
	setAttr ".uvtk[82]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[83]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[84]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[85]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[86]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[87]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[88]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[89]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[92]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[96]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[97]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[98]" -type "float2" 0 0.40109411 ;
	setAttr ".uvtk[101]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[102]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[103]" -type "float2" 0 0.40109405 ;
	setAttr ".uvtk[105]" -type "float2" 0 0.40109408 ;
	setAttr ".uvtk[115]" -type "float2" 0 0.40109405 ;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "CCB39AB8-4F21-7264-95BE-0997C1636F0D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[8:9]" "e[35]" "e[41]" "e[101]" "e[104]" "e[108]" "e[111]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "695F259A-4596-4C97-D60B-B2BE38AC7DE3";
	setAttr ".uopa" yes;
	setAttr -s 77 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 0.32336497 0.26016492 ;
	setAttr ".uvtk[2]" -type "float2" 0.30907375 0.21312118 ;
	setAttr ".uvtk[4]" -type "float2" 0.055720568 -0.10858142 ;
	setAttr ".uvtk[5]" -type "float2" 0.36991346 0.07749629 ;
	setAttr ".uvtk[6]" -type "float2" 0.33087617 0.04874599 ;
	setAttr ".uvtk[7]" -type "float2" 0.032098889 -0.13987958 ;
	setAttr ".uvtk[8]" -type "float2" 0.27854562 1.012545 ;
	setAttr ".uvtk[11]" -type "float2" 0.23613146 0.97569913 ;
	setAttr ".uvtk[15]" -type "float2" -0.68530929 -0.43546468 ;
	setAttr ".uvtk[16]" -type "float2" -0.58168757 -0.23337626 ;
	setAttr ".uvtk[18]" -type "float2" 0.52870017 0.78626865 ;
	setAttr ".uvtk[19]" -type "float2" -0.30975133 -0.50870419 ;
	setAttr ".uvtk[20]" -type "float2" -0.18040532 -0.38305271 ;
	setAttr ".uvtk[21]" -type "float2" 0.018374979 -0.17886579 ;
	setAttr ".uvtk[22]" -type "float2" -0.14777255 -0.29660797 ;
	setAttr ".uvtk[26]" -type "float2" -0.10510124 0.68275797 ;
	setAttr ".uvtk[32]" -type "float2" 0.26546931 0.054866195 ;
	setAttr ".uvtk[33]" -type "float2" -0.047472835 -0.24824679 ;
	setAttr ".uvtk[34]" -type "float2" 0.19913989 -0.048900485 ;
	setAttr ".uvtk[40]" -type "float2" -0.28370917 -0.38802946 ;
	setAttr ".uvtk[41]" -type "float2" -0.42351991 -0.59148127 ;
	setAttr ".uvtk[42]" -type "float2" -0.39871246 -0.57322323 ;
	setAttr ".uvtk[43]" -type "float2" -0.25459731 -0.36849141 ;
	setAttr ".uvtk[46]" -type "float2" -0.49020714 -0.032709479 ;
	setAttr ".uvtk[47]" -type "float2" -0.39965636 0.43637526 ;
	setAttr ".uvtk[49]" -type "float2" 0.092671394 -0.023428559 ;
	setAttr ".uvtk[50]" -type "float2" 0.39792004 0.23809338 ;
	setAttr ".uvtk[51]" -type "float2" 0.6533047 0.27037919 ;
	setAttr ".uvtk[52]" -type "float2" 0.57351977 0.43673217 ;
	setAttr ".uvtk[53]" -type "float2" 0.52349299 0.40678179 ;
	setAttr ".uvtk[54]" -type "float2" 0.60151553 0.24330449 ;
	setAttr ".uvtk[55]" -type "float2" 0.42833933 0.15062666 ;
	setAttr ".uvtk[56]" -type "float2" 0.35683119 0.30513752 ;
	setAttr ".uvtk[57]" -type "float2" -0.0034740269 -0.092113495 ;
	setAttr ".uvtk[58]" -type "float2" 0.19944349 0.024024844 ;
	setAttr ".uvtk[59]" -type "float2" 0.13558725 0.16716886 ;
	setAttr ".uvtk[60]" -type "float2" -0.06214276 0.041630507 ;
	setAttr ".uvtk[61]" -type "float2" -0.21797536 -0.058882833 ;
	setAttr ".uvtk[62]" -type "float2" -0.16225676 -0.18412924 ;
	setAttr ".uvtk[63]" -type "float2" -0.12877476 -0.16471493 ;
	setAttr ".uvtk[64]" -type "float2" -0.18488865 -0.037300587 ;
	setAttr ".uvtk[65]" -type "float2" -0.47627079 -0.55311573 ;
	setAttr ".uvtk[66]" -type "float2" -0.34392601 -0.34887916 ;
	setAttr ".uvtk[67]" -type "float2" -0.37001532 -0.54214227 ;
	setAttr ".uvtk[68]" -type "float2" -0.26796502 -0.48427284 ;
	setAttr ".uvtk[69]" -type "float2" -0.13956177 -0.33940536 ;
	setAttr ".uvtk[70]" -type "float2" 0.0050565004 -0.19241965 ;
	setAttr ".uvtk[71]" -type "float2" 0.075198829 -0.061886072 ;
	setAttr ".uvtk[72]" -type "float2" 0.62590986 0.25101185 ;
	setAttr ".uvtk[73]" -type "float2" 0.63506329 0.40691018 ;
	setAttr ".uvtk[74]" -type "float2" 0.70583445 0.94616473 ;
	setAttr ".uvtk[82]" -type "float2" -0.49890456 -0.053035736 ;
	setAttr ".uvtk[83]" -type "float2" -0.17376184 -0.20409954 ;
	setAttr ".uvtk[84]" -type "float2" -0.2395061 -0.1655556 ;
	setAttr ".uvtk[85]" -type "float2" -0.14060056 -0.18469715 ;
	setAttr ".uvtk[86]" -type "float2" -0.017104298 -0.11237407 ;
	setAttr ".uvtk[87]" -type "float2" 0.18205422 0.0038462877 ;
	setAttr ".uvtk[88]" -type "float2" 0.40626925 0.13055146 ;
	setAttr ".uvtk[89]" -type "float2" 0.57532656 0.22370243 ;
	setAttr ".uvtk[92]" -type "float2" -0.27243358 -0.48907405 ;
	setAttr ".uvtk[96]" -type "float2" 0.23780149 0.040505886 ;
	setAttr ".uvtk[97]" -type "float2" -0.020219266 -0.2082755 ;
	setAttr ".uvtk[98]" -type "float2" -0.15246254 -0.35181099 ;
	setAttr ".uvtk[101]" -type "float2" -0.22726858 -0.46634799 ;
	setAttr ".uvtk[102]" -type "float2" -0.22855026 -0.4647494 ;
	setAttr ".uvtk[103]" -type "float2" -0.28559268 0.53093612 ;
	setAttr ".uvtk[105]" -type "float2" 0.091927469 0.85088873 ;
	setAttr ".uvtk[115]" -type "float2" -0.32406706 -0.51408702 ;
	setAttr ".uvtk[118]" -type "float2" -0.22821791 -0.14487195 ;
	setAttr ".uvtk[119]" -type "float2" -0.43058869 0.41080022 ;
	setAttr ".uvtk[120]" -type "float2" -0.39751476 -0.55497545 ;
	setAttr ".uvtk[121]" -type "float2" 0.10895979 0.055907965 ;
	setAttr ".uvtk[122]" -type "float2" 0.65965819 0.42558885 ;
	setAttr ".uvtk[123]" -type "float2" 0.72426111 0.96398902 ;
	setAttr ".uvtk[124]" -type "float2" -0.35167223 -0.52801996 ;
	setAttr ".uvtk[125]" -type "float2" 0.31343567 0.61297917 ;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "D26B1A80-4525-0937-8B53-67973AF853E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[177]" "e[182]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "B05758ED-42C2-0405-3BA2-2A85A6DCEAFC";
	setAttr ".uopa" yes;
	setAttr -s 79 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 0.14641309 0.15814966 ;
	setAttr ".uvtk[2]" -type "float2" 0.14679873 0.15860546 ;
	setAttr ".uvtk[4]" -type "float2" 0.16065961 0.075164318 ;
	setAttr ".uvtk[5]" -type "float2" 0.13518894 0.064777732 ;
	setAttr ".uvtk[6]" -type "float2" 0.13484323 0.065833449 ;
	setAttr ".uvtk[7]" -type "float2" 0.15721101 0.076164961 ;
	setAttr ".uvtk[8]" -type "float2" 0.11287397 0.061335921 ;
	setAttr ".uvtk[11]" -type "float2" 0.11512595 0.058741331 ;
	setAttr ".uvtk[15]" -type "float2" 0.081494272 0.081485748 ;
	setAttr ".uvtk[16]" -type "float2" 0.1328612 0.089315891 ;
	setAttr ".uvtk[18]" -type "float2" 0.11021745 0.08401382 ;
	setAttr ".uvtk[19]" -type "float2" 0.14507532 0.046462595 ;
	setAttr ".uvtk[20]" -type "float2" 0.15264547 0.056122661 ;
	setAttr ".uvtk[21]" -type "float2" 0.14378804 0.058632851 ;
	setAttr ".uvtk[22]" -type "float2" 0.15088683 0.050498962 ;
	setAttr ".uvtk[26]" -type "float2" 0.13725506 0.055500746 ;
	setAttr ".uvtk[32]" -type "float2" 0.18744802 0.15966862 ;
	setAttr ".uvtk[33]" -type "float2" 0.16038781 0.063598156 ;
	setAttr ".uvtk[34]" -type "float2" 0.14704376 0.055254936 ;
	setAttr ".uvtk[40]" -type "float2" 0.1445173 0.063889027 ;
	setAttr ".uvtk[41]" -type "float2" 0.13310701 0.045655668 ;
	setAttr ".uvtk[42]" -type "float2" 0.13521153 0.047479987 ;
	setAttr ".uvtk[43]" -type "float2" 0.14605081 0.059887767 ;
	setAttr ".uvtk[46]" -type "float2" 0.14092934 0.077365041 ;
	setAttr ".uvtk[47]" -type "float2" 0.14598788 0.073903203 ;
	setAttr ".uvtk[49]" -type "float2" 0.14196253 0.073866487 ;
	setAttr ".uvtk[50]" -type "float2" 0.13436669 0.063008904 ;
	setAttr ".uvtk[51]" -type "float2" 0.13095701 0.072039604 ;
	setAttr ".uvtk[52]" -type "float2" 0.12681103 0.072487831 ;
	setAttr ".uvtk[53]" -type "float2" 0.12893271 0.06976974 ;
	setAttr ".uvtk[54]" -type "float2" 0.13190645 0.07044065 ;
	setAttr ".uvtk[55]" -type "float2" 0.14200538 0.060358763 ;
	setAttr ".uvtk[56]" -type "float2" 0.13941699 0.059014678 ;
	setAttr ".uvtk[57]" -type "float2" 0.14337271 0.055543542 ;
	setAttr ".uvtk[58]" -type "float2" 0.14384815 0.057255268 ;
	setAttr ".uvtk[59]" -type "float2" 0.14309007 0.055291414 ;
	setAttr ".uvtk[60]" -type "float2" 0.14272609 0.055688977 ;
	setAttr ".uvtk[61]" -type "float2" 0.13349815 0.069411159 ;
	setAttr ".uvtk[62]" -type "float2" 0.13521646 0.0682199 ;
	setAttr ".uvtk[63]" -type "float2" 0.13761902 0.065283895 ;
	setAttr ".uvtk[64]" -type "float2" 0.13631861 0.06495738 ;
	setAttr ".uvtk[65]" -type "float2" 0.12347472 0.047412217 ;
	setAttr ".uvtk[66]" -type "float2" 0.14388812 0.068047941 ;
	setAttr ".uvtk[67]" -type "float2" 0.13630116 0.054996133 ;
	setAttr ".uvtk[68]" -type "float2" 0.14422339 0.042161644 ;
	setAttr ".uvtk[69]" -type "float2" 0.15251917 0.053923488 ;
	setAttr ".uvtk[70]" -type "float2" 0.16378593 0.059709311 ;
	setAttr ".uvtk[71]" -type "float2" 0.14360261 0.072643518 ;
	setAttr ".uvtk[72]" -type "float2" 0.12993681 0.069390893 ;
	setAttr ".uvtk[73]" -type "float2" 0.12795657 0.067866087 ;
	setAttr ".uvtk[74]" -type "float2" 0.12459946 0.076421022 ;
	setAttr ".uvtk[82]" -type "float2" 0.14280154 0.078956723 ;
	setAttr ".uvtk[83]" -type "float2" 0.13631955 0.067152143 ;
	setAttr ".uvtk[84]" -type "float2" 0.13603824 0.070964336 ;
	setAttr ".uvtk[85]" -type "float2" 0.13694298 0.064842343 ;
	setAttr ".uvtk[86]" -type "float2" 0.14168602 0.054005504 ;
	setAttr ".uvtk[87]" -type "float2" 0.14127484 0.056081414 ;
	setAttr ".uvtk[88]" -type "float2" 0.1408062 0.059041977 ;
	setAttr ".uvtk[89]" -type "float2" 0.13097626 0.069149017 ;
	setAttr ".uvtk[92]" -type "float2" 0.14174962 0.037083864 ;
	setAttr ".uvtk[96]" -type "float2" 0.19345844 0.15925664 ;
	setAttr ".uvtk[97]" -type "float2" 0.16901743 0.060633242 ;
	setAttr ".uvtk[98]" -type "float2" 0.15279329 0.053761065 ;
	setAttr ".uvtk[101]" -type "float2" 0.071189046 0.034940898 ;
	setAttr ".uvtk[102]" -type "float2" 0.070656419 0.029601157 ;
	setAttr ".uvtk[103]" -type "float2" 0.14958385 0.059354663 ;
	setAttr ".uvtk[105]" -type "float2" 0.12767985 0.050091267 ;
	setAttr ".uvtk[115]" -type "float2" 0.078072071 0.064700961 ;
	setAttr ".uvtk[118]" -type "float2" 0.13364638 0.069369435 ;
	setAttr ".uvtk[119]" -type "float2" 0.14376791 0.077347517 ;
	setAttr ".uvtk[120]" -type "float2" 0.13569546 0.056537151 ;
	setAttr ".uvtk[121]" -type "float2" 0.1600101 0.086998463 ;
	setAttr ".uvtk[122]" -type "float2" 0.12943912 0.06930697 ;
	setAttr ".uvtk[123]" -type "float2" 0.12562484 0.07728529 ;
	setAttr ".uvtk[124]" -type "float2" 0.078032017 0.065560937 ;
	setAttr ".uvtk[125]" -type "float2" 0.13334692 0.12263048 ;
	setAttr ".uvtk[126]" -type "float2" 0.17591691 0.065244138 ;
	setAttr ".uvtk[127]" -type "float2" 0.14230883 0.037147999 ;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "B9B2C8BF-4E1E-B0C1-052E-39B4DA9C4C6E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[120]" "e[131]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "52405269-4B98-4393-C064-249FAAF983DB";
	setAttr ".uopa" yes;
	setAttr -s 82 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" -0.78275919 -0.56184733 ;
	setAttr ".uvtk[2]" -type "float2" -0.7801621 -0.53802752 ;
	setAttr ".uvtk[4]" -type "float2" -0.53269756 -0.51995516 ;
	setAttr ".uvtk[5]" -type "float2" -0.34080172 -0.63317978 ;
	setAttr ".uvtk[6]" -type "float2" -0.32828248 -0.61685628 ;
	setAttr ".uvtk[7]" -type "float2" -0.51771879 -0.50185853 ;
	setAttr ".uvtk[8]" -type "float2" 0.047419071 -0.92460042 ;
	setAttr ".uvtk[11]" -type "float2" 0.058208466 -0.90553784 ;
	setAttr ".uvtk[15]" -type "float2" -0.004396975 0.0012952685 ;
	setAttr ".uvtk[16]" -type "float2" 0.096176594 -0.14353621 ;
	setAttr ".uvtk[18]" -type "float2" -0.47080892 -0.86921382 ;
	setAttr ".uvtk[19]" -type "float2" -0.31583279 -0.21906006 ;
	setAttr ".uvtk[20]" -type "float2" -0.39933228 -0.32083419 ;
	setAttr ".uvtk[21]" -type "float2" -0.22431237 -0.45931217 ;
	setAttr ".uvtk[22]" -type "float2" -0.16062573 -0.3653017 ;
	setAttr ".uvtk[26]" -type "float2" 0.15223032 -0.75587356 ;
	setAttr ".uvtk[32]" -type "float2" -0.81645989 -0.45386767 ;
	setAttr ".uvtk[33]" -type "float2" -0.48269689 -0.41897443 ;
	setAttr ".uvtk[34]" -type "float2" -0.29652101 -0.54425728 ;
	setAttr ".uvtk[40]" -type "float2" -0.090486199 -0.30902585 ;
	setAttr ".uvtk[41]" -type "float2" -0.2334727 -0.15825427 ;
	setAttr ".uvtk[42]" -type "float2" -0.25109082 -0.17375493 ;
	setAttr ".uvtk[43]" -type "float2" -0.10602552 -0.32017937 ;
	setAttr ".uvtk[46]" -type "float2" 0.24296013 -0.26677728 ;
	setAttr ".uvtk[47]" -type "float2" 0.26087651 -0.62942004 ;
	setAttr ".uvtk[49]" -type "float2" -0.55010945 -0.50212741 ;
	setAttr ".uvtk[50]" -type "float2" -0.37065876 -0.67498636 ;
	setAttr ".uvtk[51]" -type "float2" -0.17168301 -0.76996028 ;
	setAttr ".uvtk[52]" -type "float2" -0.12889326 -0.80377209 ;
	setAttr ".uvtk[53]" -type "float2" -0.11806977 -0.78453076 ;
	setAttr ".uvtk[54]" -type "float2" -0.1605401 -0.75190938 ;
	setAttr ".uvtk[55]" -type "float2" -0.12592936 -0.68257445 ;
	setAttr ".uvtk[56]" -type "float2" -0.082653344 -0.71463519 ;
	setAttr ".uvtk[57]" -type "float2" 0.01089406 -0.50468099 ;
	setAttr ".uvtk[58]" -type "float2" -0.059228241 -0.59221667 ;
	setAttr ".uvtk[59]" -type "float2" -0.017393291 -0.62348944 ;
	setAttr ".uvtk[60]" -type "float2" 0.052854985 -0.53768545 ;
	setAttr ".uvtk[61]" -type "float2" 0.12278038 -0.47809428 ;
	setAttr ".uvtk[62]" -type "float2" 0.079368353 -0.44614083 ;
	setAttr ".uvtk[63]" -type "float2" 0.063917547 -0.45842165 ;
	setAttr ".uvtk[64]" -type "float2" 0.10666087 -0.48971939 ;
	setAttr ".uvtk[65]" -type "float2" -0.18770586 -0.11971593 ;
	setAttr ".uvtk[66]" -type "float2" -0.054896384 -0.27514935 ;
	setAttr ".uvtk[67]" -type "float2" -0.278781 -0.15145588 ;
	setAttr ".uvtk[68]" -type "float2" -0.354716 -0.17278689 ;
	setAttr ".uvtk[69]" -type "float2" 0.0051639676 -0.0046977997 ;
	setAttr ".uvtk[70]" -type "float2" -0.0077717304 -0.013756871 ;
	setAttr ".uvtk[71]" -type "float2" -0.54618764 -0.47776622 ;
	setAttr ".uvtk[72]" -type "float2" -0.18673402 -0.75431836 ;
	setAttr ".uvtk[73]" -type "float2" -0.2144739 -0.79456168 ;
	setAttr ".uvtk[74]" -type "float2" -0.33353949 -0.97445726 ;
	setAttr ".uvtk[82]" -type "float2" 0.2255532 -0.25460714 ;
	setAttr ".uvtk[83]" -type "float2" 0.062097102 -0.43222308 ;
	setAttr ".uvtk[84]" -type "float2" 0.09569025 -0.39867461 ;
	setAttr ".uvtk[85]" -type "float2" 0.048233807 -0.44510025 ;
	setAttr ".uvtk[86]" -type "float2" -0.0039868951 -0.48990989 ;
	setAttr ".uvtk[87]" -type "float2" -0.073085368 -0.57774174 ;
	setAttr ".uvtk[88]" -type "float2" -0.1410867 -0.66783911 ;
	setAttr ".uvtk[89]" -type "float2" -0.17568272 -0.73746145 ;
	setAttr ".uvtk[92]" -type "float2" -0.3633104 -0.16246694 ;
	setAttr ".uvtk[96]" -type "float2" -0.82217818 -0.43774354 ;
	setAttr ".uvtk[97]" -type "float2" -0.0038815737 -0.012977719 ;
	setAttr ".uvtk[98]" -type "float2" 0.0050432086 -0.0064868331 ;
	setAttr ".uvtk[101]" -type "float2" -0.31549549 0.032578051 ;
	setAttr ".uvtk[102]" -type "float2" -0.32683966 0.03708297 ;
	setAttr ".uvtk[103]" -type "float2" 0.20983437 -0.67281586 ;
	setAttr ".uvtk[105]" -type "float2" 0.092218816 -0.83782846 ;
	setAttr ".uvtk[115]" -type "float2" -0.25937673 0.010959446 ;
	setAttr ".uvtk[118]" -type "float2" 0.11370283 -0.41078269 ;
	setAttr ".uvtk[119]" -type "float2" 0.27636242 -0.61667311 ;
	setAttr ".uvtk[120]" -type "float2" -0.25996333 -0.14615303 ;
	setAttr ".uvtk[121]" -type "float2" -0.56527352 -0.57587659 ;
	setAttr ".uvtk[122]" -type "float2" -0.19894052 -0.80861974 ;
	setAttr ".uvtk[123]" -type "float2" -0.31745088 -0.98785305 ;
	setAttr ".uvtk[124]" -type "float2" -0.24097538 0.013916075 ;
	setAttr ".uvtk[125]" -type "float2" -0.66390455 -0.78554595 ;
	setAttr ".uvtk[126]" -type "float2" -0.5552187 -0.37117901 ;
	setAttr ".uvtk[127]" -type "float2" -0.0011450648 0.016619444 ;
	setAttr ".uvtk[128]" -type "float2" -0.53712511 -0.38239869 ;
	setAttr ".uvtk[129]" -type "float2" -0.43816632 -0.28606209 ;
	setAttr ".uvtk[130]" -type "float2" 0.0025911927 0.02129972 ;
createNode groupId -n "groupId33";
	rename -uid "4D138D78-4B78-6B13-B582-C5A002B8823D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "C119387A-496C-4B8F-1024-11BF89D2E343";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:91]";
createNode polyMapCut -n "polyMapCut5";
	rename -uid "3CD558CB-4953-46FD-A0DB-638BEA7F8505";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[36]" "e[40]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "164CDA32-4B54-5522-FBAD-0CBA13BBD7E4";
	setAttr ".uopa" yes;
	setAttr -s 54 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.12299657 0.054621786 ;
	setAttr ".uvtk[3]" -type "float2" -0.11366206 0.04812064 ;
	setAttr ".uvtk[9]" -type "float2" 0.079157531 0.14243624 ;
	setAttr ".uvtk[10]" -type "float2" 0.070211291 0.13952583 ;
	setAttr ".uvtk[12]" -type "float2" -0.010011196 0.10199298 ;
	setAttr ".uvtk[13]" -type "float2" -0.011164367 0.0981372 ;
	setAttr ".uvtk[14]" -type "float2" -0.031057596 0.14195985 ;
	setAttr ".uvtk[17]" -type "float2" -0.023537636 0.17760414 ;
	setAttr ".uvtk[23]" -type "float2" 0.011866659 0.15237302 ;
	setAttr ".uvtk[24]" -type "float2" -0.010857344 0.18557778 ;
	setAttr ".uvtk[25]" -type "float2" -0.22685687 -0.0083543062 ;
	setAttr ".uvtk[27]" -type "float2" -0.063332558 0.057907686 ;
	setAttr ".uvtk[28]" -type "float2" -0.023434162 0.098023415 ;
	setAttr ".uvtk[29]" -type "float2" -0.020308435 0.1367856 ;
	setAttr ".uvtk[30]" -type "float2" -0.019067883 0.1055917 ;
	setAttr ".uvtk[31]" -type "float2" -0.077186525 0.034523681 ;
	setAttr ".uvtk[35]" -type "float2" 0.042641014 0.13699552 ;
	setAttr ".uvtk[36]" -type "float2" -0.13792756 -0.094134301 ;
	setAttr ".uvtk[37]" -type "float2" -0.014733076 0.090787947 ;
	setAttr ".uvtk[38]" -type "float2" -0.029565573 0.13175476 ;
	setAttr ".uvtk[39]" -type "float2" 0.23583865 -0.086675346 ;
	setAttr ".uvtk[44]" -type "float2" -0.02231583 0.21532384 ;
	setAttr ".uvtk[45]" -type "float2" -0.025087923 0.22449067 ;
	setAttr ".uvtk[48]" -type "float2" -0.023031414 0.16789484 ;
	setAttr ".uvtk[75]" -type "float2" 0.070786446 0.13837831 ;
	setAttr ".uvtk[76]" -type "float2" 0.062682986 0.13551256 ;
	setAttr ".uvtk[77]" -type "float2" 0.037306279 0.13259757 ;
	setAttr ".uvtk[78]" -type "float2" 0.009224683 0.14765683 ;
	setAttr ".uvtk[79]" -type "float2" -0.011624247 0.18069488 ;
	setAttr ".uvtk[80]" -type "float2" -0.024742544 0.21987593 ;
	setAttr ".uvtk[81]" -type "float2" -0.022049665 0.21047223 ;
	setAttr ".uvtk[90]" -type "float2" 0.25838107 -0.12766045 ;
	setAttr ".uvtk[91]" -type "float2" 0.24379653 -0.14081362 ;
	setAttr ".uvtk[93]" -type "float2" -0.03092134 0.087100834 ;
	setAttr ".uvtk[94]" -type "float2" -0.066893935 0.055046529 ;
	setAttr ".uvtk[95]" -type "float2" -0.08279866 0.041580297 ;
	setAttr ".uvtk[99]" -type "float2" 0.12870288 -0.48949626 ;
	setAttr ".uvtk[100]" -type "float2" 0.11684757 -0.47831282 ;
	setAttr ".uvtk[104]" -type "float2" -0.24448384 0.03329736 ;
	setAttr ".uvtk[106]" -type "float2" -0.19010802 -0.059444964 ;
	setAttr ".uvtk[107]" -type "float2" 0.082684457 -0.47493491 ;
	setAttr ".uvtk[108]" -type "float2" 0.080932885 0.23177636 ;
	setAttr ".uvtk[109]" -type "float2" 0.056517303 0.19468218 ;
	setAttr ".uvtk[110]" -type "float2" 0.084025666 -0.45100605 ;
	setAttr ".uvtk[111]" -type "float2" -0.076196149 -0.10731632 ;
	setAttr ".uvtk[112]" -type "float2" 0.22959226 -0.074423015 ;
	setAttr ".uvtk[113]" -type "float2" -0.051692992 -0.49622005 ;
	setAttr ".uvtk[114]" -type "float2" -0.22767317 -0.54940623 ;
	setAttr ".uvtk[116]" -type "float2" 0.082804948 0.23590988 ;
	setAttr ".uvtk[117]" -type "float2" -0.091311365 -0.10593325 ;
	setAttr ".uvtk[131]" -type "float2" -0.24847668 0.04584372 ;
	setAttr ".uvtk[132]" -type "float2" 0.097965583 -0.445595 ;
	setAttr ".uvtk[133]" -type "float2" 0.02060467 0.15803927 ;
	setAttr ".uvtk[134]" -type "float2" 0.070367873 -0.46820116 ;
createNode polyMapCut -n "polyMapCut6";
	rename -uid "0797A5B2-4981-06C4-0DD1-3581C4591714";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[12]" "e[129]" "e[141]" "e[164]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "F4774060-4B90-2F85-B307-2781B7B57654";
	setAttr ".uopa" yes;
	setAttr -s 59 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.0047724843 0.0093592256 ;
	setAttr ".uvtk[3]" -type "float2" -0.001208961 0.011488713 ;
	setAttr ".uvtk[9]" -type "float2" -0.0081120729 -0.0035018325 ;
	setAttr ".uvtk[10]" -type "float2" -0.0085466206 -0.0026491284 ;
	setAttr ".uvtk[12]" -type "float2" -0.0062711239 -0.0011837035 ;
	setAttr ".uvtk[13]" -type "float2" -0.0084308386 -0.00050255656 ;
	setAttr ".uvtk[14]" -type "float2" -0.0016852617 -0.013179958 ;
	setAttr ".uvtk[17]" -type "float2" -0.0028341413 0.002628088 ;
	setAttr ".uvtk[23]" -type "float2" -0.0097989738 0.0033219457 ;
	setAttr ".uvtk[24]" -type "float2" -0.0066188574 0.0057898164 ;
	setAttr ".uvtk[25]" -type "float2" -0.0049331784 0.0064019561 ;
	setAttr ".uvtk[27]" -type "float2" 0.10801822 -0.029436901 ;
	setAttr ".uvtk[28]" -type "float2" 0.10965532 -0.048521489 ;
	setAttr ".uvtk[29]" -type "float2" -0.011780739 0.0047272742 ;
	setAttr ".uvtk[30]" -type "float2" -0.014688909 0.0033025742 ;
	setAttr ".uvtk[31]" -type "float2" 0.082650244 -0.0079645216 ;
	setAttr ".uvtk[35]" -type "float2" -0.0097064674 5.3435564e-05 ;
	setAttr ".uvtk[36]" -type "float2" -0.0082052872 0.0027055144 ;
	setAttr ".uvtk[37]" -type "float2" -0.013604164 0.0035203546 ;
	setAttr ".uvtk[38]" -type "float2" -0.0081152916 -0.011701912 ;
	setAttr ".uvtk[39]" -type "float2" -0.00809443 -0.14551789 ;
	setAttr ".uvtk[44]" -type "float2" -0.0032578409 0.0072414279 ;
	setAttr ".uvtk[45]" -type "float2" -0.0021383166 0.0076378584 ;
	setAttr ".uvtk[48]" -type "float2" -0.0048734546 0.0031819344 ;
	setAttr ".uvtk[75]" -type "float2" -0.0078446865 -0.003312245 ;
	setAttr ".uvtk[76]" -type "float2" -0.0085403919 -0.0026124865 ;
	setAttr ".uvtk[77]" -type "float2" -0.009974122 0.00013509393 ;
	setAttr ".uvtk[78]" -type "float2" -0.010307193 0.0033266842 ;
	setAttr ".uvtk[79]" -type "float2" -0.0069509149 0.0056633353 ;
	setAttr ".uvtk[80]" -type "float2" -0.0020830631 0.0070436001 ;
	setAttr ".uvtk[81]" -type "float2" -0.0034324527 0.006923914 ;
	setAttr ".uvtk[90]" -type "float2" -0.058689475 0.14951628 ;
	setAttr ".uvtk[91]" -type "float2" -0.04913938 0.15731773 ;
	setAttr ".uvtk[93]" -type "float2" 0.11439931 -0.042734027 ;
	setAttr ".uvtk[94]" -type "float2" 0.10732007 -0.031498849 ;
	setAttr ".uvtk[95]" -type "float2" 0.082162261 -0.019659981 ;
	setAttr ".uvtk[99]" -type "float2" 0.037745953 0.14285946 ;
	setAttr ".uvtk[100]" -type "float2" -0.24705297 -0.071540408 ;
	setAttr ".uvtk[104]" -type "float2" -0.0031426251 0.0065180659 ;
	setAttr ".uvtk[106]" -type "float2" -0.0072951019 0.0048263371 ;
	setAttr ".uvtk[107]" -type "float2" 0.07223618 0.12294573 ;
	setAttr ".uvtk[108]" -type "float2" 0.020497143 0.006618619 ;
	setAttr ".uvtk[109]" -type "float2" 0.020402849 -0.0057423711 ;
	setAttr ".uvtk[110]" -type "float2" 0.01008448 -0.013588391 ;
	setAttr ".uvtk[111]" -type "float2" -0.0078111812 0.0018588006 ;
	setAttr ".uvtk[112]" -type "float2" 0.0030138493 -0.14611316 ;
	setAttr ".uvtk[113]" -type "float2" 0.014607519 -0.0059789568 ;
	setAttr ".uvtk[114]" -type "float2" 0.024901628 0.0067081451 ;
	setAttr ".uvtk[116]" -type "float2" 0.020902812 0.0079988837 ;
	setAttr ".uvtk[117]" -type "float2" -0.0079628974 0.001871258 ;
	setAttr ".uvtk[131]" -type "float2" -0.0027102977 0.0063613653 ;
	setAttr ".uvtk[132]" -type "float2" 0.0097307861 -0.014757261 ;
	setAttr ".uvtk[133]" -type "float2" 0.020297766 -0.023680687 ;
	setAttr ".uvtk[134]" -type "float2" 0.08175534 0.11720678 ;
	setAttr ".uvtk[135]" -type "float2" -0.031591177 -0.0058149695 ;
	setAttr ".uvtk[136]" -type "float2" -0.047621369 -0.14331952 ;
	setAttr ".uvtk[137]" -type "float2" -0.024564087 0.018021479 ;
	setAttr ".uvtk[138]" -type "float2" -0.24932349 -0.055477805 ;
	setAttr ".uvtk[139]" -type "float2" -0.016212225 0.0049093664 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "D7A277A9-4099-A3FC-93A9-C294EF70EA4D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -156.8547850663866 -2087.9775772311077 ;
	setAttr ".tgi[0].vh" -type "double2" 561.39327575220022 210.98176704255749 ;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "3BA637C4-4FC0-8F5B-04ED-8A82D3FA896F";
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 29 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
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
connectAttr "polyMapDel1.out" "pCylinderShape1.i";
connectAttr "polyMapDel2.out" "pCylinderShape2.i";
connectAttr "polyMapDel3.out" "pCylinderShape3.i";
connectAttr "polyMapDel4.out" "pCylinderShape4.i";
connectAttr "polyMapDel5.out" "pCylinderShape5.i";
connectAttr "polyMapDel6.out" "pCylinderShape6.i";
connectAttr "polyMapDel7.out" "pCylinderShape7.i";
connectAttr "polyMapDel8.out" "pCylinderShape8.i";
connectAttr "polyMapDel9.out" "pCylinderShape9.i";
connectAttr "polyMapDel10.out" "pCylinderShape10.i";
connectAttr "polyMapDel11.out" "pCylinderShape11.i";
connectAttr "polyMapDel12.out" "pCylinderShape12.i";
connectAttr "polyMapDel13.out" "pCylinderShape13.i";
connectAttr "polyMapDel14.out" "pCylinderShape14.i";
connectAttr "polyMapDel15.out" "pCylinderShape15.i";
connectAttr "polyMapDel16.out" "pCylinderShape16.i";
connectAttr "polyMapDel17.out" "pCylinderShape17.i";
connectAttr "polyMapDel18.out" "pCylinderShape18.i";
connectAttr "polyMapDel19.out" "pCylinderShape19.i";
connectAttr "polyMapDel20.out" "pCylinderShape20.i";
connectAttr "polyMapDel21.out" "pCylinderShape21.i";
connectAttr "polyMapDel22.out" "pCylinderShape22.i";
connectAttr "groupId29.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId33.id" "polySurfaceShape2.iog.og[2].gid";
connectAttr "set1.mwc" "polySurfaceShape2.iog.og[2].gco";
connectAttr "polyTweakUV6.out" "polySurfaceShape2.i";
connectAttr "polyTweakUV6.uvtk[0]" "polySurfaceShape2.uvst[0].uvtw";
connectAttr "groupId30.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "polyMapDel24.out" "polySurfaceShape5.i";
connectAttr "groupId31.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "polyMapDel25.out" "polySurfaceShape8.i";
connectAttr "groupId28.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId26.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupId24.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "polyPlane1.out" "lift_trimsheetShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
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
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture1.o" "file4.uv";
connectAttr "place2dTexture1.ofs" "file4.fs";
connectAttr "place2dTexture1.c" "file4.c";
connectAttr "place2dTexture1.tf" "file4.tf";
connectAttr "place2dTexture1.rf" "file4.rf";
connectAttr "place2dTexture1.mu" "file4.mu";
connectAttr "place2dTexture1.mv" "file4.mv";
connectAttr "place2dTexture1.s" "file4.s";
connectAttr "place2dTexture1.wu" "file4.wu";
connectAttr "place2dTexture1.wv" "file4.wv";
connectAttr "place2dTexture1.re" "file4.re";
connectAttr "place2dTexture1.of" "file4.of";
connectAttr "place2dTexture1.r" "file4.ro";
connectAttr "place2dTexture1.n" "file4.n";
connectAttr "place2dTexture1.vt1" "file4.vt1";
connectAttr "place2dTexture1.vt2" "file4.vt2";
connectAttr "place2dTexture1.vt3" "file4.vt3";
connectAttr "place2dTexture1.vc1" "file4.vc1";
connectAttr "file1.oc" "multiplyDivide1.i1";
connectAttr "multiplyDivide1.o" "lift1.base_color";
connectAttr "bump2d1.o" "lift1.n";
connectAttr "file3.oa" "lift1.metalness";
connectAttr "file4.oc" "lift1.emission_color";
connectAttr "lift1.out" "set1.ss";
connectAttr "polySurfaceShape2.iog.og[2]" "set1.dsm" -na;
connectAttr "groupId33.msg" "set1.gn" -na;
connectAttr "set1.msg" "materialInfo1.sg";
connectAttr "lift1.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "file2.oa" "bump2d1.bv";
connectAttr "polySurfaceShape10.o" "polyMapDel1.ip";
connectAttr "polySurfaceShape11.o" "polyMapDel2.ip";
connectAttr "polySurfaceShape12.o" "polyMapDel3.ip";
connectAttr "polySurfaceShape13.o" "polyMapDel4.ip";
connectAttr "polySurfaceShape14.o" "polyMapDel5.ip";
connectAttr "polySurfaceShape15.o" "polyMapDel6.ip";
connectAttr "polySurfaceShape16.o" "polyMapDel7.ip";
connectAttr "polySurfaceShape17.o" "polyMapDel8.ip";
connectAttr "polySurfaceShape18.o" "polyMapDel9.ip";
connectAttr "polySurfaceShape19.o" "polyMapDel10.ip";
connectAttr "polySurfaceShape20.o" "polyMapDel11.ip";
connectAttr "polySurfaceShape21.o" "polyMapDel12.ip";
connectAttr "polySurfaceShape22.o" "polyMapDel13.ip";
connectAttr "polySurfaceShape23.o" "polyMapDel14.ip";
connectAttr "polySurfaceShape24.o" "polyMapDel15.ip";
connectAttr "polySurfaceShape25.o" "polyMapDel16.ip";
connectAttr "polySurfaceShape26.o" "polyMapDel17.ip";
connectAttr "polySurfaceShape27.o" "polyMapDel18.ip";
connectAttr "polySurfaceShape28.o" "polyMapDel19.ip";
connectAttr "polySurfaceShape29.o" "polyMapDel20.ip";
connectAttr "polySurfaceShape30.o" "polyMapDel21.ip";
connectAttr "polySurfaceShape31.o" "polyMapDel22.ip";
connectAttr "groupParts1.og" "polyMapDel23.ip";
connectAttr "polySurfaceShape32.o" "groupParts1.ig";
connectAttr "groupId29.id" "groupParts1.gi";
connectAttr "groupParts2.og" "polyMapDel24.ip";
connectAttr "polySurfaceShape33.o" "groupParts2.ig";
connectAttr "groupId30.id" "groupParts2.gi";
connectAttr "groupParts3.og" "polyMapDel25.ip";
connectAttr "polySurfaceShape34.o" "groupParts3.ig";
connectAttr "groupId31.id" "groupParts3.gi";
connectAttr "polyMapDel23.out" "polyPlanarProj1.ip";
connectAttr "polySurfaceShape2.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "groupParts5.ig";
connectAttr "groupId33.id" "groupParts5.gi";
connectAttr "groupParts5.og" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV6.ip";
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "lift1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "lift_trimsheetShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
// End of lift.ma
