//Maya ASCII 2025 scene
//Name: Wardrobe.ma
//Last modified: Fri, Jul 26, 2024 02:21:44 PM
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
fileInfo "UUID" "64A15D28-4EF5-02BD-D43E-9A8DEAA8D04F";
createNode transform -s -n "persp";
	rename -uid "7C410566-4D2E-1D5F-48E7-DA8EC7E0FC09";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -190.44216305261742 310.18186768826354 819.69911101082016 ;
	setAttr ".r" -type "double3" -11.138352731448361 707.39999999999327 4.073803737043541e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "7FBE0ADC-4907-58F0-E4D7-96B5728ECE12";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 833.85713701634938;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 31.96127986907959 99.999997922551756 31.949461804974945 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "19262E91-4B4F-1F8E-6539-11A629C3537A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "79BE58B8-4EB6-F2A0-A119-969C99B393EE";
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
	rename -uid "3351FF56-463D-1277-882D-BD8D9043A829";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A871EC4E-435E-AB2A-6388-0DA9E8A52346";
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
	rename -uid "A6AFB17E-473E-3422-0E90-B0AD9462F762";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C3112DF2-4553-65DB-8D46-399440A00151";
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
createNode transform -n "Wardrobe";
	rename -uid "E6A97823-4D2F-3E80-979B-EE9D2FDF8FE1";
createNode transform -n "Wardrobe" -p "|Wardrobe";
	rename -uid "3171DF8A-47D1-871F-E4F0-C685C385D575";
	setAttr ".t" -type "double3" 0 99.999997922551771 0 ;
	setAttr ".rp" -type "double3" 0 -99.999997922551771 0 ;
	setAttr ".sp" -type "double3" 0 -99.999997922551771 0 ;
createNode mesh -n "WardrobeShape" -p "|Wardrobe|Wardrobe";
	rename -uid "48BE637B-4AB1-580F-E5FA-8BA18287FF57";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54538264870643616 0.090405888855457306 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "HangerBar1" -p "|Wardrobe";
	rename -uid "3D086FF7-4A7D-1319-71C7-0D81D01CA49F";
	setAttr ".t" -type "double3" 2.9225597067780882 184.61441040039062 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" 0 0.9999997302003294 0 ;
	setAttr ".rpt" -type "double3" -0.9999997302003294 -0.9999997302003294 0 ;
	setAttr ".sp" -type "double3" 0 0.9999997302003294 0 ;
createNode mesh -n "HangerBar1Shape" -p "HangerBar1";
	rename -uid "389A6165-4961-5F98-2614-F38734EAE8AD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[0]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[1]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[2]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[3]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[4]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[5]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[6]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[7]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[16]" -type "float3" -1.4210855e-13 -51.877434 0 ;
createNode transform -n "HangerBar2" -p "|Wardrobe";
	rename -uid "656981BD-40F9-7F6E-7F36-6F8CC15280EA";
	setAttr ".t" -type "double3" -54.799999506860217 184.61441040039062 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" 0 0.9999997302003294 0 ;
	setAttr ".rpt" -type "double3" -0.9999997302003294 -0.9999997302003294 0 ;
	setAttr ".sp" -type "double3" 0 0.9999997302003294 0 ;
createNode mesh -n "HangerBarShape2" -p "HangerBar2";
	rename -uid "B5FC7A8E-4AE2-5371-6539-1CADE978EF58";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8:15]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:7]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[16:23]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.6875 0.40625 0.6875 0.4375 0.6875 0.46875 0.6875 0.5 0.6875 0.53125 0.6875
		 0.5625 0.6875 0.59375 0.6875 0.625 0.6875 0.61048543 0.73326457 0.5 0.6875 0.38951457
		 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543 0.65625
		 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[0]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[1]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[2]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[3]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[4]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[5]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[6]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[7]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr ".pt[16]" -type "float3" -1.4210855e-13 -51.877434 0 ;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994
		 0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 1 -0.70710671
		 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 1 0.70710677 1 1 0
		 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Drawer1" -p "|Wardrobe";
	rename -uid "E4F9801A-4574-7F7A-6023-27B21AA311A4";
	setAttr ".t" -type "double3" -0.010841325313329264 99.999997922551771 4.5695670394252375e-06 ;
	setAttr ".rp" -type "double3" 28.86127848961997 -54.371766873967786 -26.101078788317039 ;
	setAttr ".sp" -type "double3" 28.86127848961997 -54.371766873967786 -26.101078788317039 ;
createNode mesh -n "DrawerShape1" -p "Drawer1";
	rename -uid "EFD21FBB-4E94-D712-7956-B58EC8B2130D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58185067772865295 0.057781253010034561 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "Drawer1";
	rename -uid "6BDA7137-4A46-AB54-E41E-4EBA50F76DA2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[3:5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.55120132863521576 0.036153566092252731 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.61250001 0.012500003
		 0.61250001 0.080000006 0.61250001 0.080000006 0.48001 0.081729963 0.48001 0.081729963
		 0.61250001 0.080000006 0.48001 0.081729963 0.48001 0.081729963 0.48001 0.081729963
		 0.61250001 0.042151745 0.61250001 0.080000006 0.48001 0.081729963 0.48001 0.081729963
		 0.61249995 0.076215178 0.61249995 0.080000006 0.48990265 0.059807133 0.61250001 0.080000006
		 0.61249995 0.076215178 0.61249995 0.042151742 0.61250001 0.012500003 0.61250001 0.058624994
		 0.48990265 0.059807129 0.48990273 0.059807129 0.48990265 0.059807129;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  55.79999924 -36 30 55.79999924 -36 -26.10107422
		 1.92255998 -36.000038146973 -26.10107422 1.92255998 -36.000038146973 30 1.92255998 -36.000038146973 -1.6212463e-05
		 55.80000305 -36 -1.6212463e-05 1.92255998 -36.000038146973 26.10108376 55.79999924 -36 26.10108376
		 55.79999924 -54.37174606 30 1.9225601 -54.37177277 30 55.79999542 -54.37174225 26.10108185
		 55.79999924 -54.37174225 -1.6514459e-05 55.79999542 -54.37174225 -26.10107422 1.92255998 -54.37176895 -26.10107422
		 1.92255998 -54.37177277 -1.6514461e-05 1.92255986 -54.37176895 26.10108185;
	setAttr -s 25 ".ed[0:24]"  0 8 0 2 1 0 2 4 0 3 0 0 0 7 0 4 6 0 5 1 0
		 4 5 1 6 3 0 7 5 0 6 7 1 9 3 0 4 14 1 1 12 0 7 10 1 11 5 1 13 2 0 15 6 1 8 10 0 10 11 0
		 11 12 0 12 13 0 13 14 0 14 15 0 15 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 10 -5 -4 -9
		mu 0 4 12 14 5 6
		f 4 1 -7 -8 -3
		mu 0 4 3 1 10 8
		f 4 7 -10 -11 -6
		mu 0 4 8 10 14 12
		f 4 -1 4 14 -19
		mu 0 4 16 2 13 17
		f 4 9 -16 -20 -15
		mu 0 4 13 9 18 17
		f 4 6 13 -21 15
		mu 0 4 9 0 19 18
		f 4 -2 -17 -22 -14
		mu 0 4 1 3 21 20
		f 4 2 12 -23 16
		mu 0 4 3 7 22 21
		f 4 5 -18 -24 -13
		mu 0 4 7 11 23 22
		f 4 8 -12 -25 17
		mu 0 4 11 4 15 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "Drawer2" -p "|Wardrobe";
	rename -uid "186581C7-4647-9DFF-BE9B-3688BCB8D566";
	setAttr ".t" -type "double3" -0.010841325313329264 80.66134054340138 4.5695670394252375e-06 ;
	setAttr ".rp" -type "double3" 28.86127848961997 -54.371766873967786 -26.101078788317039 ;
	setAttr ".sp" -type "double3" 28.86127848961997 -54.371766873967786 -26.101078788317039 ;
createNode mesh -n "DrawerShape2" -p "Drawer2";
	rename -uid "D88B0506-4470-13B9-89B3-9084F7661124";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 7 "f[0]" "f[3:4]" "f[6:8]" "f[11:12]" "f[14:16]" "f[19]" "f[21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.54625500738620758 0.047114983201026917 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.61250001 0.012500003
		 0.61250001 0.080000006 0.61250001 0.080000006 0.48001 0.081729963 0.48001 0.081729963
		 0.48990265 0.059807133 0.61250001 0.080000006 0.61250001 0.0355625 0.48990265 0.059807129
		 0.54625499 0.080864981 0.55120134 0.047684815 0.55120134 0.069903567 0.54625499 0.080864981
		 0.61250001 0.080000006 0.61250001 0.080000006 0.61250001 0.0355625 0.61250001 0.012500003
		 0.54625499 0.080864981 0.55120134 0.047684815 0.48990265 0.059807129 0.48001 0.081729963
		 0.48990265 0.059807133 0.48001 0.081729963 0.55120134 0.069903567 0.54625499 0.080864981
		 0.61250001 0.080000006 0.61250001 0.012500003 0.61250001 0.080000006 0.48001 0.081729963
		 0.54625499 0.080864981 0.48001 0.081729963 0.54625499 0.080864981 0.61250001 0.080000006;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[0]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[1]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[2]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[3]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[8]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[11]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[12]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[15]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[16]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[19]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[21]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[23]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr -s 24 ".vt[0:23]"  55.79999924 -36 30 55.79999924 -36 -26.10107422
		 1.92255998 -36.000038146973 -26.10107422 1.92255998 -36.000038146973 30 55.79999924 -54.37174606 30
		 1.9225601 -54.37177277 30 55.79999542 -54.37174225 -26.10107422 1.92255998 -54.37176895 -26.10107422
		 28.86128044 -36.000019073486 -26.10107422 28.86127853 -54.37175751 -26.10107422 28.86128044 -54.37175751 30
		 28.86128044 -36.000019073486 30 54.29999924 -36 28.5 54.29999924 -52.87174606 28.5
		 54.29999542 -52.87174225 -24.60107422 54.29999924 -36 -24.60107422 28.86128044 -36.000019073486 -24.60107422
		 28.86127853 -52.87175751 -24.60107422 3.42255998 -52.87176895 -24.60107422 3.42255998 -36.000038146973 -24.60107422
		 3.42256021 -52.87177277 28.5 3.42255998 -36.000038146973 28.5 28.86128044 -52.87175751 28.5
		 28.86128044 -36.000019073486 28.5;
	setAttr -s 44 ".ed[0:43]"  0 4 0 2 8 0 3 11 0 0 1 0 2 3 0 5 3 0 1 6 0
		 7 2 0 4 6 0 6 9 0 7 5 0 4 10 0 8 1 0 9 7 0 10 5 0 11 0 0 8 9 1 9 10 1 10 11 1 0 12 1
		 12 13 0 13 14 0 1 15 1 15 14 0 12 15 0 8 16 1 16 17 1 17 18 0 2 19 1 18 19 0 19 16 0
		 18 20 0 3 21 1 20 21 0 19 21 0 17 22 1 22 20 0 11 23 1 22 23 1 21 23 0 14 17 0 16 15 0
		 13 22 0 23 12 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 24 23 -22 -21
		mu 0 4 27 26 7 6
		f 4 -31 -30 -28 -27
		mu 0 4 29 28 8 10
		f 4 34 -34 -32 29
		mu 0 4 28 30 5 8
		f 4 31 -37 -36 27
		mu 0 4 8 5 11 10
		f 4 36 33 39 -39
		mu 0 4 11 5 30 31
		f 4 -42 26 -41 -24
		mu 0 4 32 29 10 7
		f 4 -43 21 40 35
		mu 0 4 11 6 7 10
		f 4 20 42 38 43
		mu 0 4 27 6 11 31
		f 4 0 8 -7 -4
		mu 0 4 13 14 15 16
		f 4 16 13 7 1
		mu 0 4 17 18 19 20
		f 4 -8 10 5 -5
		mu 0 4 20 19 21 22
		f 4 -14 17 14 -11
		mu 0 4 19 18 23 21
		f 4 18 -3 -6 -15
		mu 0 4 23 24 22 21
		f 4 6 9 -17 12
		mu 0 4 25 15 18 17
		f 4 -18 -10 -9 11
		mu 0 4 23 18 15 14
		f 4 -16 -19 -12 -1
		mu 0 4 13 24 23 14
		f 4 22 -25 -20 3
		mu 0 4 0 26 27 2
		f 4 28 30 -26 -2
		mu 0 4 3 28 29 9
		f 4 32 -35 -29 4
		mu 0 4 4 30 28 3
		f 4 37 -40 -33 2
		mu 0 4 12 31 30 4
		f 4 25 41 -23 -13
		mu 0 4 9 29 32 1
		f 4 19 -44 -38 15
		mu 0 4 2 27 31 12;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 3 
		2 0 
		4 0 
		7 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "Drawer2";
	rename -uid "2A6560CF-46E7-86B7-A282-5CA61BE4D5AD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[3:5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.55120132863521576 0.036153566092252731 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.61250001 0.012500003
		 0.61250001 0.080000006 0.61250001 0.080000006 0.48001 0.081729963 0.48001 0.081729963
		 0.61250001 0.080000006 0.48001 0.081729963 0.48001 0.081729963 0.48001 0.081729963
		 0.61250001 0.042151745 0.61250001 0.080000006 0.48001 0.081729963 0.48001 0.081729963
		 0.61249995 0.076215178 0.61249995 0.080000006 0.48990265 0.059807133 0.61250001 0.080000006
		 0.61249995 0.076215178 0.61249995 0.042151742 0.61250001 0.012500003 0.61250001 0.058624994
		 0.48990265 0.059807129 0.48990273 0.059807129 0.48990265 0.059807129;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  55.79999924 -36 30 55.79999924 -36 -26.10107422
		 1.92255998 -36.000038146973 -26.10107422 1.92255998 -36.000038146973 30 1.92255998 -36.000038146973 -1.6212463e-05
		 55.80000305 -36 -1.6212463e-05 1.92255998 -36.000038146973 26.10108376 55.79999924 -36 26.10108376
		 55.79999924 -54.37174606 30 1.9225601 -54.37177277 30 55.79999542 -54.37174225 26.10108185
		 55.79999924 -54.37174225 -1.6514459e-05 55.79999542 -54.37174225 -26.10107422 1.92255998 -54.37176895 -26.10107422
		 1.92255998 -54.37177277 -1.6514461e-05 1.92255986 -54.37176895 26.10108185;
	setAttr -s 25 ".ed[0:24]"  0 8 0 2 1 0 2 4 0 3 0 0 0 7 0 4 6 0 5 1 0
		 4 5 1 6 3 0 7 5 0 6 7 1 9 3 0 4 14 1 1 12 0 7 10 1 11 5 1 13 2 0 15 6 1 8 10 0 10 11 0
		 11 12 0 12 13 0 13 14 0 14 15 0 15 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 10 -5 -4 -9
		mu 0 4 12 14 5 6
		f 4 1 -7 -8 -3
		mu 0 4 3 1 10 8
		f 4 7 -10 -11 -6
		mu 0 4 8 10 14 12
		f 4 -1 4 14 -19
		mu 0 4 16 2 13 17
		f 4 9 -16 -20 -15
		mu 0 4 13 9 18 17
		f 4 6 13 -21 15
		mu 0 4 9 0 19 18
		f 4 -2 -17 -22 -14
		mu 0 4 1 3 21 20
		f 4 2 12 -23 16
		mu 0 4 3 7 22 21
		f 4 5 -18 -24 -13
		mu 0 4 7 11 23 22
		f 4 8 -12 -25 17
		mu 0 4 11 4 15 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "Drawer3" -p "|Wardrobe";
	rename -uid "D80E545D-445A-C884-BB65-58AB1D9C2B50";
	setAttr ".t" -type "double3" -0.010841325313329264 60.355760404241224 4.5695670394252375e-06 ;
	setAttr ".rp" -type "double3" 28.86127848961997 -54.371766873967786 -26.101078788317039 ;
	setAttr ".sp" -type "double3" 28.86127848961997 -54.371766873967786 -26.101078788317039 ;
createNode mesh -n "DrawerShape3" -p "Drawer3";
	rename -uid "FCA2E15A-4F11-9254-17A6-CB8CE4B4E2E0";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 7 "f[0]" "f[3:4]" "f[6:8]" "f[11:12]" "f[14:16]" "f[19]" "f[21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.58185067772865295 0.057781253010034561 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.61250001 0.012500003
		 0.61250001 0.080000006 0.61250001 0.080000006 0.48001 0.081729963 0.48001 0.081729963
		 0.48990265 0.059807133 0.61250001 0.080000006 0.61250001 0.0355625 0.48990265 0.059807129
		 0.54625499 0.080864981 0.55120134 0.047684815 0.55120134 0.069903567 0.54625499 0.080864981
		 0.61250001 0.080000006 0.61250001 0.080000006 0.61250001 0.0355625 0.61250001 0.012500003
		 0.54625499 0.080864981 0.55120134 0.047684815 0.48990265 0.059807129 0.48001 0.081729963
		 0.48990265 0.059807133 0.48001 0.081729963 0.55120134 0.069903567 0.54625499 0.080864981
		 0.61250001 0.080000006 0.61250001 0.012500003 0.61250001 0.080000006 0.48001 0.081729963
		 0.54625499 0.080864981 0.48001 0.081729963 0.54625499 0.080864981 0.61250001 0.080000006;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".lev" 3;
	setAttr -s 24 ".vt[0:23]"  55.79999924 -36 30 55.79999924 -36 -26.10107422
		 1.92255998 -36.000038146973 -26.10107422 1.92255998 -36.000038146973 30 55.79999924 -54.37174606 30
		 1.9225601 -54.37177277 30 55.79999542 -54.37174225 -26.10107422 1.92255998 -54.37176895 -26.10107422
		 28.86128044 -36.000019073486 -26.10107422 28.86127853 -54.37175751 -26.10107422 28.86128044 -54.37175751 30
		 28.86128044 -36.000019073486 30 54.29999924 -36 28.5 54.29999924 -52.87174606 28.5
		 54.29999542 -52.87174225 -24.60107422 54.29999924 -36 -24.60107422 28.86128044 -36.000019073486 -24.60107422
		 28.86127853 -52.87175751 -24.60107422 3.42255998 -52.87176895 -24.60107422 3.42255998 -36.000038146973 -24.60107422
		 3.42256021 -52.87177277 28.5 3.42255998 -36.000038146973 28.5 28.86128044 -52.87175751 28.5
		 28.86128044 -36.000019073486 28.5;
	setAttr -s 44 ".ed[0:43]"  0 4 0 2 8 0 3 11 0 0 1 0 2 3 0 5 3 0 1 6 0
		 7 2 0 4 6 0 6 9 0 7 5 0 4 10 0 8 1 0 9 7 0 10 5 0 11 0 0 8 9 1 9 10 1 10 11 1 0 12 1
		 12 13 0 13 14 0 1 15 1 15 14 0 12 15 0 8 16 1 16 17 1 17 18 0 2 19 1 18 19 0 19 16 0
		 18 20 0 3 21 1 20 21 0 19 21 0 17 22 1 22 20 0 11 23 1 22 23 1 21 23 0 14 17 0 16 15 0
		 13 22 0 23 12 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 24 23 -22 -21
		mu 0 4 27 26 7 6
		f 4 -31 -30 -28 -27
		mu 0 4 29 28 8 10
		f 4 34 -34 -32 29
		mu 0 4 28 30 5 8
		f 4 31 -37 -36 27
		mu 0 4 8 5 11 10
		f 4 36 33 39 -39
		mu 0 4 11 5 30 31
		f 4 -42 26 -41 -24
		mu 0 4 32 29 10 7
		f 4 -43 21 40 35
		mu 0 4 11 6 7 10
		f 4 20 42 38 43
		mu 0 4 27 6 11 31
		f 4 0 8 -7 -4
		mu 0 4 13 14 15 16
		f 4 16 13 7 1
		mu 0 4 17 18 19 20
		f 4 -8 10 5 -5
		mu 0 4 20 19 21 22
		f 4 -14 17 14 -11
		mu 0 4 19 18 23 21
		f 4 18 -3 -6 -15
		mu 0 4 23 24 22 21
		f 4 6 9 -17 12
		mu 0 4 25 15 18 17
		f 4 -18 -10 -9 11
		mu 0 4 23 18 15 14
		f 4 -16 -19 -12 -1
		mu 0 4 13 24 23 14
		f 4 22 -25 -20 3
		mu 0 4 0 26 27 2
		f 4 28 30 -26 -2
		mu 0 4 3 28 29 9
		f 4 32 -35 -29 4
		mu 0 4 4 30 28 3
		f 4 37 -40 -33 2
		mu 0 4 12 31 30 4
		f 4 25 41 -23 -13
		mu 0 4 9 29 32 1
		f 4 19 -44 -38 15
		mu 0 4 2 27 31 12;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 3 
		2 0 
		4 0 
		7 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "Drawer3";
	rename -uid "9E301CBE-421C-1EED-02CD-44AD72D8012E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[3:5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.55120132863521576 0.036153566092252731 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.61250001 0.012500003
		 0.61250001 0.080000006 0.61250001 0.080000006 0.48001 0.081729963 0.48001 0.081729963
		 0.61250001 0.080000006 0.48001 0.081729963 0.48001 0.081729963 0.48001 0.081729963
		 0.61250001 0.042151745 0.61250001 0.080000006 0.48001 0.081729963 0.48001 0.081729963
		 0.61249995 0.076215178 0.61249995 0.080000006 0.48990265 0.059807133 0.61250001 0.080000006
		 0.61249995 0.076215178 0.61249995 0.042151742 0.61250001 0.012500003 0.61250001 0.058624994
		 0.48990265 0.059807129 0.48990273 0.059807129 0.48990265 0.059807129;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  55.79999924 -36 30 55.79999924 -36 -26.10107422
		 1.92255998 -36.000038146973 -26.10107422 1.92255998 -36.000038146973 30 1.92255998 -36.000038146973 -1.6212463e-05
		 55.80000305 -36 -1.6212463e-05 1.92255998 -36.000038146973 26.10108376 55.79999924 -36 26.10108376
		 55.79999924 -54.37174606 30 1.9225601 -54.37177277 30 55.79999542 -54.37174225 26.10108185
		 55.79999924 -54.37174225 -1.6514459e-05 55.79999542 -54.37174225 -26.10107422 1.92255998 -54.37176895 -26.10107422
		 1.92255998 -54.37177277 -1.6514461e-05 1.92255986 -54.37176895 26.10108185;
	setAttr -s 25 ".ed[0:24]"  0 8 0 2 1 0 2 4 0 3 0 0 0 7 0 4 6 0 5 1 0
		 4 5 1 6 3 0 7 5 0 6 7 1 9 3 0 4 14 1 1 12 0 7 10 1 11 5 1 13 2 0 15 6 1 8 10 0 10 11 0
		 11 12 0 12 13 0 13 14 0 14 15 0 15 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 10 -5 -4 -9
		mu 0 4 12 14 5 6
		f 4 1 -7 -8 -3
		mu 0 4 3 1 10 8
		f 4 7 -10 -11 -6
		mu 0 4 8 10 14 12
		f 4 -1 4 14 -19
		mu 0 4 16 2 13 17
		f 4 9 -16 -20 -15
		mu 0 4 13 9 18 17
		f 4 6 13 -21 15
		mu 0 4 9 0 19 18
		f 4 -2 -17 -22 -14
		mu 0 4 1 3 21 20
		f 4 2 12 -23 16
		mu 0 4 3 7 22 21
		f 4 5 -18 -24 -13
		mu 0 4 7 11 23 22
		f 4 8 -12 -25 17
		mu 0 4 11 4 15 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "DoorRight" -p "|Wardrobe";
	rename -uid "F9FA537F-44F7-35A2-AA48-1E9F5808FEDF";
	setAttr ".t" -type "double3" 0 99.999997922551771 59.999998914349945 ;
	setAttr ".rp" -type "double3" 62 -99.999997922551771 -29.999998914349945 ;
	setAttr ".sp" -type "double3" 62 -99.999997922551771 -29.999998914349945 ;
createNode mesh -n "DoorRightShape" -p "DoorRight";
	rename -uid "F2CA6219-4E90-0C1C-2BBB-E4B83604ADCF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50562499463558197 0.62499997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape2" -p "DoorRight";
	rename -uid "1BC1DB3A-451C-206B-E3CD-D8BB9043C48E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 17 "f[0]" "f[6]" "f[9]" "f[12:14]" "f[18:20]" "f[22:24]" "f[27:29]" "f[35:39]" "f[44:48]" "f[51:55]" "f[58:62]" "f[67:71]" "f[76:80]" "f[86:90]" "f[94:98]" "f[108:118]" "f[121:131]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 7 "f[2]" "f[7]" "f[10]" "f[40]" "f[43]" "f[107]" "f[120]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 10 "f[1]" "f[11]" "f[16]" "f[21]" "f[30]" "f[56:57]" "f[66]" "f[75]" "f[85]" "f[93]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "f[3]" "f[15]" "f[17]" "f[25:26]" "f[50]" "f[63]" "f[72]" "f[81]" "f[91]" "f[99]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 6 "f[4:5]" "f[8]" "f[34]" "f[49]" "f[119]" "f[132]";
	setAttr ".pv" -type "double2" 0.48031248152256012 0.36249999701976776 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 221 ".uvst[0].uvsp[0:220]" -type "float2" 0.375 0.5 0.625 0.5
		 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.38749999 0.5 0.38749999
		 0.74999994 0.61250001 0.75 0.61250001 0.5 0.125 0.125 0.375 0.625 0.38749999 0.625
		 0.61250001 0.625 0.625 0.625 0.875 0.125 0.125 0.2375 0.37499997 0.51249999 0.625
		 0.51249999 0.87499994 0.2375 0.61250001 0.51249999 0.38749996 0.51249999 0.125 0.012500003
		 0.375 0.73749995 0.38749999 0.73749995 0.61249995 0.73749995 0.625 0.73749995 0.875
		 0.012500003 0.1375 0 0.37499997 0.76249993 0.1375 0.012500003 0.1375 0.125 0.1375
		 0.23749998 0.1375 0.25 0.375 0.48750001 0.38749999 0.48750001 0.61249995 0.48749998
		 0.625 0.48750001 0.86249995 0.25 0.86249995 0.2375 0.86249995 0.125 0.86249995 0.012500002
		 0.625 0.76249993 0.86249995 0 0.61250001 0.76249999 0.38749996 0.76249993 0.86249995
		 0.080000006 0.625 0.66999996 0.875 0.080000006 0.61249995 0.66999996 0.38749999 0.66999996
		 0.125 0.080000006 0.375 0.66999996 0.1375 0.080000006 0.61250001 0.080000006 0.38749999
		 0.125 0.61249995 0.2375 0.5 0.2375 0.38749996 0.0125 0.38749996 0.0125 0.38749999
		 0.080000006 0.61250001 0.012500003 0.51125002 0.0125 0.48001 0.081729963 0.46062502
		 0.13624996 0.39874998 0.23749998 0.51124996 0.48750001 0.51125002 0.5 0.51125002
		 0.51249999 0.51125002 0.625 0.51125002 0.66999996 0.51124996 0.73749995 0.51125002
		 0.74999994 0.51125002 0.76249993 0.38749999 0.22624999 0.43812501 0.12049997 0.45750999
		 0.074979961 0.48874998 0.012499999 0.48874998 0.76249993 0.48874998 0.74999994 0.48874998
		 0.73749995 0.48874998 0.6699999 0.48874998 0.625 0.48874998 0.51249999 0.48874998
		 0.5 0.48874998 0.48750001 0.38749996 0.073250003 0.44006351 0.11594796 0.46256354
		 0.13079797 0.61249995 0.22174999 0.86249995 0.1205 0.625 0.62949997 0.87499994 0.1205
		 0.61250001 0.62950003 0.51125002 0.62949997 0.48874998 0.62950003 0.38749996 0.62949997
		 0.125 0.1205 0.37499997 0.62949997 0.1375 0.1205 0.1375 0.084050007 0.125 0.084050007
		 0.37499997 0.66594994 0.38749996 0.66594994 0.48874998 0.66594988 0.51125002 0.66594994
		 0.61249995 0.66594994 0.625 0.66594994 0.875 0.084050007 0.86249995 0.084050007 0.61250001
		 0.094175011 0.47826535 0.086636767 0.45576537 0.079076767 0.38749996 0.018575 0.1375
		 0.22624998 0.125 0.22624999 0.37499997 0.52374995 0.38749996 0.52374995 0.48874998
		 0.52375001 0.51125002 0.52374995 0.61250001 0.52375001 0.625 0.52374995 0.87499988
		 0.22624999 0.86249995 0.22624999 0.51124996 0.23749998 0.40493751 0.22737497 0.39256248
		 0.215675 0.38749999 0.1205 0.47833666 0.033326633 0.38749993 0.012499999 0.1375 0.058062494
		 0.125 0.058062494 0.375 0.69193751 0.38749999 0.69193751 0.48874998 0.69193739 0.51125002
		 0.69193751 0.61249995 0.69193751 0.625 0.69193751 0.875 0.058062494 0.86249995 0.058062494
		 0.46792334 0.054153297 0.38749993 0.012499999 0.38749993 0.012499998 0.46688199 0.056235962
		 0.86249995 0.059749994 0.625 0.69025004 0.875 0.059749994 0.61249989 0.69024998 0.51125002
		 0.69025004 0.48874998 0.69024986 0.38749999 0.69025004 0.125 0.059749994 0.375 0.69025004
		 0.1375 0.059749994 0.47729534 0.035409302 0.38749993 0.012499998 0.61250001 0.058624994
		 0.48990265 0.059807129 0.1375 0.036124982 0.125 0.036124982 0.375 0.71387494 0.38749999
		 0.71387494 0.48874998 0.71387494 0.51124996 0.71387494 0.61249995 0.71387494 0.625
		 0.71387494 0.875 0.036124982 0.86249995 0.036124982 0.61250001 0.036124982 0.50031602
		 0.036730461 0.1375 0.082025006 0.125 0.082025006 0.375 0.66797495 0.38749999 0.66797495
		 0.48874998 0.66797489 0.51125002 0.66797495 0.61249995 0.66797495 0.625 0.66797495
		 0.875 0.082025006 0.86249995 0.082025006 0.44937497 0.23749998 0.45809373 0.23243748
		 0.5365625 0.18687499 0.53753173 0.17627397 0.54538268 0.090405889 0.54625499 0.080864981
		 0.55120134 0.05921606 0.55640805 0.036427721 0.56187499 0.012500001 0.56187499 0.76249993
		 0.56187499 0.75 0.56187499 0.73749995 0.56187499 0.71387494 0.56187499 0.69193751
		 0.56187499 0.69025004 0.56187499 0.66999996 0.56187499 0.66797495 0.56187499 0.66594994
		 0.56187499 0.62950003 0.56187499 0.625 0.56187499 0.52374995 0.56187499 0.51249999
		 0.56187499 0.5 0.56187499 0.48750001 0.5 0.76249993 0.5 0.74999994 0.49999997 0.73749995
		 0.49999997 0.71387494 0.5 0.69193745 0.5 0.69024992 0.5 0.66999996 0.5 0.66797495
		 0.5 0.66594994 0.5 0.62950003 0.5 0.625 0.5 0.52374995 0.5 0.51249999 0.5 0.5 0.49999997
		 0.48750001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 181 ".vt";
	setAttr ".vt[0:165]"  -62 100 -30 62 100 -30 -62 -100 -30 62 -100 -30 -55.79999924 100 -30
		 -55.79999924 -100 -30 55.79999924 -100 -30 55.79999924 100 -30 -62 0 -30 -55.79999924 0 -30
		 55.79999924 0 -30 62 0 -30 -62 94.01600647 -30 62 94.01600647 -30 55.79999924 94.01600647 -30
		 -55.79999542 94.01600647 -30 -62 -94.01600647 -30 -55.79999924 -94.01600647 -30 55.79999542 -94.01600647 -30
		 62 -94.01600647 -30 -62 -100 -26.10107231 -62 -94.01600647 -26.10107231 -62 0 -26.10107231
		 -62 94.01600647 -26.10107231 -62 100 -26.10107231 -55.79999924 100 -26.10107231 55.79999542 100 -26.10107231
		 62 100 -26.10107231 62 94.01600647 -26.10107231 62 0 -26.10107231 62 -94.01600647 -26.10107231
		 62 -100 -26.10107231 55.79999924 -100 -26.10107231 -55.79999542 -100 -26.10107231
		 62 -36 -26.10107231 62 -36 -30 55.79999542 -36 -30 -55.79999924 -36 -30 -62 -36 -30
		 -62 -36 -26.10107231 55.79999924 0 -26.10107422 55.79999924 -36 -26.10107422 -55.79999924 0 -26.10107422
		 -55.79999924 94.01600647 -26.10107422 55.79999542 94.01600647 -26.10107422 -55.79999542 -94.01600647 -26.10107422
		 -55.79999542 -36 -26.10107422 55.79999924 -94.01600647 -26.10107422 1.92255998 -94.01600647 -26.10107422
		 1.92255998 -36.000038146973 -26.10107422 1.92255998 -2.2888184e-05 -26.10107422 1.92255998 94.01600647 -26.10107422
		 1.92255998 100 -26.10107231 1.92255998 100 -30 1.92255998 94.01600647 -30 1.92255998 0 -30
		 1.92255998 -36 -30 1.92255998 -94.01600647 -30 1.92255998 -100 -30 1.92255998 -100 -26.10107231
		 -1.92255998 94.01600647 -26.10107422 -1.92255998 -2.2888184e-05 -26.10107422 -1.92255998 -36.00004196167 -26.10107422
		 -1.92255998 -94.01600647 -26.10107422 -1.92255998 -100 -26.10107231 -1.92255998 -100 -30
		 -1.92255998 -94.01600647 -30 -1.92255998 -36 -30 -1.92255998 0 -30 -1.92255998 94.01600647 -30
		 -1.92255998 100 -30 -1.92255998 100 -26.10107231 -55.79999924 -3.59999847 -26.10107422
		 -1.92255986 -3.60002899 -26.10107422 1.92255998 -3.60002899 -26.10107422 55.79999542 -3.59999847 -26.10107422
		 62 -3.59999847 -26.10107231 62 -3.59999847 -30 55.79999924 -3.59999847 -30 1.92255986 -3.59999847 -30
		 -1.92255998 -3.59999847 -30 -55.79999542 -3.59999847 -30 -62 -3.59999847 -30 -62 -3.59999847 -26.10107231
		 -62 -32.75999451 -26.10107231 -62 -32.75999451 -30 -55.79999924 -32.75999451 -30
		 -1.92255986 -32.75999451 -30 1.92255998 -32.75999451 -30 55.79999542 -32.75999451 -30
		 62 -32.75999451 -30 62 -32.75999451 -26.10107231 55.79999924 -32.75999451 -26.10107422
		 1.92255986 -32.76004028 -26.10107422 -1.92255998 -32.76004028 -26.10107422 -55.79999542 -32.75999451 -26.10107422
		 -62 84.6144104 -26.10107231 -62 84.6144104 -30 -55.79999542 84.6144104 -30 -1.92255998 84.6144104 -30
		 1.92255986 84.6144104 -30 55.79999924 84.6144104 -30 62 84.6144104 -30 62 84.6144104 -26.10107231
		 55.79999542 84.6144104 -26.10107422 1.92255998 84.6144104 -26.10107422 -1.92255986 84.6144104 -26.10107422
		 -55.79999924 84.6144104 -26.10107422 -1.92255998 -74.67736816 -26.10107422 -55.79999542 -74.67735291 -26.10107422
		 -62 -54.37174606 -26.1010704 -62 -54.37174606 -30 -55.79999924 -54.37174606 -30 -1.9225601 -54.37174606 -30
		 1.9225601 -54.37174606 -30 55.79999924 -54.37174606 -30 62 -54.37174225 -30 62 -54.37174606 -26.1010704
		 -1.92255998 -55.33870697 -26.10107422 -55.79999542 -55.33867645 -26.10107422 -55.79999161 -53.40480423 -26.10107422
		 -1.92255998 -53.40484238 -26.10107422 -1.92255998 -72.74350739 -26.10107422 -55.79999161 -72.7434845 -26.10107422
		 55.79999542 -54.37174225 -26.10107422 1.92255998 -54.37176895 -26.10107422 -61.99999619 -73.7104187 -26.1010704
		 -62 -73.7104187 -30 -55.79999542 -73.7104187 -30 -1.92255998 -73.7104187 -30 1.92255998 -73.7104187 -30
		 55.79999542 -73.7104187 -30 62 -73.7104187 -30 62 -73.7104187 -26.1010704 55.79999542 -73.7104187 -26.10107422
		 1.92255998 -73.71043396 -26.10107422 -62 -34.37999725 -26.10107231 -62 -34.37999725 -30
		 -55.79999924 -34.37999725 -30 -1.92255998 -34.37999725 -30 1.92255998 -34.37999725 -30
		 55.79999542 -34.37999725 -30 62 -34.37999725 -30 62 -34.37999725 -26.10107231 28.86127853 94.01600647 -26.10107422
		 28.86127853 84.6144104 -26.10107422 28.86128044 -1.1444092e-05 -26.10107422 28.86127853 -3.60001373 -26.10107422
		 28.86128044 -32.7600174 -26.10107422 28.86128044 -36.000019073486 -26.10107422 28.86127853 -54.37175751 -26.10107422
		 28.86127853 -73.71042633 -26.10107422 28.86128044 -94.01600647 -26.10107422 28.86128044 -100 -26.10107231
		 28.86128044 -100 -30 28.86127853 -94.01600647 -30 28.86127853 -73.7104187 -30 28.86128044 -54.37174606 -30
		 28.86127853 -36 -30 28.86127853 -34.37999725 -30 28.86127853 -32.75999451 -30 28.86128044 -3.59999847 -30
		 28.86128044 0 -30 28.86128044 84.6144104 -30 28.86128044 94.01600647 -30 28.86128044 100 -30;
	setAttr ".vt[166:180]" 28.86127853 100 -26.10107231 0 -100 -26.10107231 0 -100 -30
		 0 -94.01600647 -30 0 -73.7104187 -30 0 -54.37174606 -30 0 -36 -30 0 -34.37999725 -30
		 5.9604645e-08 -32.75999451 -30 -5.9604645e-08 -3.59999847 -30 0 0 -30 -5.9604645e-08 84.6144104 -30
		 0 94.01600647 -30 0 100 -30 0 100 -26.10107231;
	setAttr -s 306 ".ed";
	setAttr ".ed[0:165]"  0 4 0 2 5 0 0 12 0 1 13 0 2 20 0 3 31 0 4 70 0 5 65 0
		 4 15 1 5 33 1 6 3 0 7 1 0 6 18 1 7 26 1 8 82 0 9 81 1 10 101 1 11 77 0 8 9 1 9 68 1
		 10 11 1 11 29 1 12 97 0 13 102 0 14 7 1 15 98 1 12 23 1 13 14 1 14 164 1 15 12 1
		 16 2 0 17 5 1 19 3 0 16 17 1 17 66 1 18 19 1 19 30 1 21 16 1 22 8 1 24 0 0 25 4 1
		 27 1 0 28 13 1 32 6 1 20 21 0 22 96 0 23 24 0 24 25 0 25 71 0 26 27 0 27 28 0 28 103 0
		 29 76 0 30 31 0 31 32 0 32 153 0 33 20 0 34 117 0 35 116 0 36 141 1 37 112 1 38 111 0
		 39 136 0 34 35 1 35 36 1 36 158 1 37 38 1 38 39 1 40 75 0 42 107 0 44 104 0 43 60 0
		 45 109 0 47 152 0 46 62 0 42 61 0 49 149 0 50 146 1 51 144 0 52 166 0 53 165 0 54 178 1
		 55 162 1 56 172 1 57 155 1 58 154 0 59 167 0 50 105 0 52 53 1 53 54 1 54 100 1 55 79 1
		 56 114 1 57 58 1 58 59 1 63 45 0 64 33 0 65 168 0 66 169 1 67 37 1 68 176 1 69 15 1
		 70 179 0 71 180 0 60 106 0 62 121 0 64 65 1 65 66 1 67 139 1 68 99 1 69 70 1 70 71 1
		 73 94 0 74 50 0 75 92 0 76 91 0 77 90 0 78 10 1 79 88 1 80 68 1 81 86 1 82 85 0 83 22 0
		 72 73 0 74 147 1 76 77 1 77 78 1 78 161 1 79 175 1 80 81 1 81 82 1 82 83 1 84 83 0
		 85 137 0 86 138 1 87 80 1 88 140 1 89 78 1 90 142 0 91 143 0 93 74 0 95 72 0 84 85 1
		 85 86 1 86 87 1 87 174 1 88 160 1 89 90 1 90 91 1 92 148 0 94 95 0 96 23 0 97 8 0
		 98 9 1 99 69 1 100 55 1 101 14 1 102 11 0 103 29 0 104 40 0 105 51 0 106 61 0 107 43 0
		 96 97 1 97 98 1 98 99 1;
	setAttr ".ed[166:305]" 99 177 1 100 163 1 101 102 1 102 103 1 104 145 1 106 107 1
		 21 126 0 66 129 1 18 131 1 48 135 0 108 63 0 108 109 0 111 127 0 112 128 1 114 130 1
		 116 132 0 117 133 0 118 122 0 110 111 1 111 112 1 112 113 1 113 171 1 114 157 1 115 116 1
		 116 117 1 118 119 0 120 46 0 41 124 0 115 36 1 113 67 1 110 39 0 120 121 0 123 119 0
		 122 123 0 124 134 0 125 49 0 124 150 1 126 110 0 127 16 0 128 17 1 129 113 1 130 57 1
		 131 115 1 132 19 0 133 30 0 134 47 0 135 125 0 126 127 1 127 128 1 128 129 1 129 170 1
		 130 156 1 131 132 1 132 133 1 134 151 1 136 84 0 137 38 0 138 37 1 139 87 1 140 56 1
		 141 89 1 142 35 0 143 34 0 136 137 1 137 138 1 138 139 1 139 173 1 140 159 1 141 142 1
		 142 143 1 144 44 0 145 105 1 146 40 1 147 75 1 148 93 0 149 41 0 150 125 1 151 135 1
		 152 48 0 153 59 0 154 6 0 155 18 1 156 131 1 157 115 1 158 56 1 159 141 1 160 89 1
		 161 79 1 162 10 1 163 101 1 164 54 1 165 7 0 166 26 0 144 145 1 145 146 1 146 147 1
		 147 148 1 149 150 1 150 151 1 151 152 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1
		 158 159 1 159 160 1 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1 167 64 0
		 168 58 0 169 57 1 170 130 1 171 114 1 172 67 1 173 140 1 174 88 1 175 80 1 176 55 1
		 177 100 1 178 69 1 179 53 0 180 52 0 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 180 1;
	setAttr -s 133 -ch 532 ".fc[0:132]" -type "polyFaces" 
		f 4 33 31 -2 -31
		mu 0 4 25 26 9 2
		f 4 4 44 37 30
		mu 0 4 6 30 32 24
		f 4 1 9 56 -5
		mu 0 4 2 9 47 31
		f 4 36 53 -6 -33
		mu 0 4 29 43 45 4
		f 4 47 40 -1 -40
		mu 0 4 36 37 8 0
		f 4 13 49 41 -12
		mu 0 4 11 38 39 1
		f 4 12 35 32 -11
		mu 0 4 10 27 28 3
		f 4 54 43 10 5
		mu 0 4 44 46 10 3
		f 4 -292 305 292 88
		mu 0 4 69 219 220 68
		f 4 -281 294 281 93
		mu 0 4 74 207 208 73
		f 4 293 280 94 86
		mu 0 4 206 207 74 75
		f 4 26 46 39 2
		mu 0 4 18 34 35 7
		f 4 0 8 29 -3
		mu 0 4 0 8 23 19
		f 4 304 291 89 81
		mu 0 4 218 219 69 70
		f 4 27 24 11 3
		mu 0 4 20 22 11 1
		f 4 50 42 -4 -42
		mu 0 4 40 41 21 5
		f 4 -39 45 163 152
		mu 0 4 12 33 116 117
		f 4 169 158 -22 -158
		mu 0 4 124 125 42 17
		f 4 -21 16 168 157
		mu 0 4 16 15 122 123
		f 4 -289 302 289 155
		mu 0 4 71 216 217 121
		f 4 164 153 -19 -153
		mu 0 4 118 119 14 13
		f 4 131 122 38 14
		mu 0 4 99 101 33 12
		f 4 18 15 130 -15
		mu 0 4 13 14 98 100
		f 4 128 301 288 91
		mu 0 4 96 215 216 71
		f 4 126 117 20 17
		mu 0 4 93 95 15 16
		f 4 21 52 125 -18
		mu 0 4 17 42 92 94
		f 4 -37 -210 219 210
		mu 0 4 43 29 168 169
		f 4 -36 174 218 209
		mu 0 4 28 27 166 167
		f 4 -282 295 282 207
		mu 0 4 73 208 209 165
		f 4 -34 -205 214 205
		mu 0 4 26 25 162 163
		f 4 -38 172 213 204
		mu 0 4 24 32 160 161
		f 4 265 -74 -212 220
		mu 0 4 189 190 63 170
		f 4 261 239 -69 -239
		mu 0 4 184 185 91 58
		f 4 170 260 238 -160
		mu 0 4 126 183 184 58
		f 4 278 258 -14 -258
		mu 0 4 204 205 38 11
		f 4 28 277 257 -25
		mu 0 4 22 203 204 11
		f 4 -255 275 255 -17
		mu 0 4 15 201 202 122
		f 4 127 274 254 -118
		mu 0 4 95 200 201 15
		f 4 -248 268 248 -175
		mu 0 4 27 193 194 166
		f 4 267 247 -13 -247
		mu 0 4 192 193 27 10
		f 4 55 266 246 -44
		mu 0 4 46 191 192 10
		f 4 75 -162 171 -70
		mu 0 4 62 77 128 129
		f 4 -177 177 -73 -96
		mu 0 4 79 130 131 61
		f 4 -107 96 -10 7
		mu 0 4 81 80 47 9
		f 4 -32 34 -108 -8
		mu 0 4 9 26 82 81
		f 4 -35 -206 215 -174
		mu 0 4 82 26 163 164
		f 4 -120 129 -16 19
		mu 0 4 84 97 98 14
		f 4 165 -110 -20 -154
		mu 0 4 119 120 84 14
		f 4 -111 101 -9 6
		mu 0 4 86 85 23 8
		f 4 -41 48 -112 -7
		mu 0 4 8 37 87 86
		f 4 235 228 63 -228
		mu 0 4 180 181 48 50
		f 4 64 59 234 227
		mu 0 4 49 51 178 179
		f 4 65 271 251 -60
		mu 0 4 51 197 198 178
		f 4 298 285 225 83
		mu 0 4 212 213 177 72
		f 4 231 -109 99 -224
		mu 0 4 175 176 83 52
		f 4 230 223 66 -223
		mu 0 4 174 175 52 54
		f 4 67 62 229 222
		mu 0 4 53 55 172 173
		f 4 -143 132 -132 121
		mu 0 4 103 102 101 99
		f 4 -131 120 -144 -122
		mu 0 4 100 98 105 104
		f 4 -130 -136 -145 -121
		mu 0 4 98 97 106 105
		f 4 -287 300 -129 118
		mu 0 4 107 214 215 96
		f 4 -253 273 -128 -138
		mu 0 4 108 199 200 95
		f 4 -148 137 -127 116
		mu 0 4 109 108 95 93
		f 4 -126 115 -149 -117
		mu 0 4 94 92 111 110
		f 4 262 -150 -115 -240
		mu 0 4 185 186 112 91
		f 4 -151 -113 -124 -142
		mu 0 4 115 114 89 88
		f 4 -164 151 -27 22
		mu 0 4 117 116 34 18
		f 4 -30 25 -165 -23
		mu 0 4 19 23 119 118
		f 4 -155 -166 -26 -102
		mu 0 4 85 120 119 23
		f 4 -290 303 -82 90
		mu 0 4 121 217 218 70
		f 4 -256 276 -29 -157
		mu 0 4 122 202 203 22
		f 4 -169 156 -28 23
		mu 0 4 123 122 22 20
		f 4 -43 51 -170 -24
		mu 0 4 21 41 125 124
		f 4 259 -171 -71 -237
		mu 0 4 182 183 126 59
		f 4 -172 -105 -72 -163
		mu 0 4 129 128 76 57
		f 4 -185 196 -68 61
		mu 0 4 153 155 55 53
		f 4 -67 60 -186 -62
		mu 0 4 54 52 152 154
		f 4 -196 -187 -61 -100
		mu 0 4 83 151 152 52
		f 4 -284 297 -84 92
		mu 0 4 150 211 212 72
		f 4 -250 270 -66 -195
		mu 0 4 149 196 197 51
		f 4 -190 194 -65 58
		mu 0 4 147 149 51 49
		f 4 -64 57 -191 -59
		mu 0 4 50 48 146 148
		f 4 -242 263 -203 -194
		mu 0 4 56 187 188 158
		f 4 197 -106 -75 -193
		mu 0 4 144 145 78 60
		f 4 -200 -184 191 -199
		mu 0 4 157 156 142 143
		f 4 -214 203 184 178
		mu 0 4 161 160 132 133
		f 4 -215 -179 185 179
		mu 0 4 163 162 134 135
		f 4 -207 -216 -180 186
		mu 0 4 136 164 163 135
		f 4 -283 296 283 180
		mu 0 4 165 209 210 137
		f 4 -209 -249 269 249
		mu 0 4 138 166 194 195
		f 4 -219 208 189 181
		mu 0 4 167 166 138 139
		f 4 -220 -182 190 182
		mu 0 4 169 168 140 141
		f 4 264 -221 -201 202
		mu 0 4 188 189 170 158
		f 4 -230 221 142 133
		mu 0 4 173 172 102 103
		f 4 143 134 -231 -134
		mu 0 4 104 105 175 174
		f 4 144 -225 -232 -135
		mu 0 4 105 106 176 175
		f 4 -286 299 286 136
		mu 0 4 177 213 214 107
		f 4 -252 272 252 -227
		mu 0 4 178 198 199 108
		f 4 -235 226 147 138
		mu 0 4 179 178 108 109
		f 4 148 139 -236 -139
		mu 0 4 110 111 181 180
		f 4 -161 -238 -260 -79
		mu 0 4 67 127 183 182
		f 4 -261 237 -88 77
		mu 0 4 184 183 127 66
		f 4 124 -262 -78 -114
		mu 0 4 90 185 184 66
		f 4 -241 -263 -125 -141
		mu 0 4 113 186 185 90
		f 4 -264 -77 -202 -243
		mu 0 4 188 187 65 159
		f 4 -213 -244 -265 242
		mu 0 4 159 171 189 188
		f 4 -245 -266 243 -176
		mu 0 4 64 190 189 171
		f 4 -267 245 -95 85
		mu 0 4 192 191 75 74
		f 4 -94 84 -268 -86
		mu 0 4 74 73 193 192
		f 4 -269 -85 -208 217
		mu 0 4 194 193 73 165
		f 4 -270 -218 -181 188
		mu 0 4 195 194 165 137
		f 4 -271 -189 -93 -251
		mu 0 4 197 196 150 72
		f 4 -272 250 -226 233
		mu 0 4 198 197 72 177
		f 4 -273 -234 -137 146
		mu 0 4 199 198 177 107
		f 4 -274 -147 -119 -254
		mu 0 4 200 199 107 96
		f 4 -275 253 -92 82
		mu 0 4 201 200 96 71
		f 4 -276 -83 -156 167
		mu 0 4 202 201 71 121
		f 4 -277 -168 -91 -257
		mu 0 4 203 202 121 70
		f 4 -278 256 -90 80
		mu 0 4 204 203 70 69
		f 4 -89 79 -279 -81
		mu 0 4 69 68 205 204
		f 4 106 97 -294 279
		mu 0 4 80 81 207 206
		f 4 -295 -98 107 98
		mu 0 4 208 207 81 82
		f 4 -296 -99 173 216
		mu 0 4 209 208 82 164
		f 4 -297 -217 206 187
		mu 0 4 210 209 164 136
		f 4 -298 -188 195 -285
		mu 0 4 212 211 151 83
		f 4 108 232 -299 284
		mu 0 4 83 176 213 212
		f 4 -300 -233 224 145
		mu 0 4 214 213 176 106
		f 4 -301 -146 135 -288
		mu 0 4 215 214 106 97
		f 4 -302 287 119 100
		mu 0 4 216 215 97 84
		f 4 -303 -101 109 166
		mu 0 4 217 216 84 120
		f 4 -304 -167 154 -291
		mu 0 4 218 217 120 85
		f 4 110 102 -305 290
		mu 0 4 85 86 219 218
		f 4 -306 -103 111 103
		mu 0 4 220 219 86 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "DoorLeft" -p "|Wardrobe";
	rename -uid "AFD9EE1E-4AFD-761A-78DD-37930727FA34";
	setAttr ".t" -type "double3" 0 99.999997922551771 59.999999003384517 ;
	setAttr ".rp" -type "double3" -62 -99.999997922551771 -29.999999003384517 ;
	setAttr ".sp" -type "double3" -62 -99.999997922551771 -29.999999003384517 ;
createNode mesh -n "DoorLeftShape" -p "DoorLeft";
	rename -uid "41B26E5D-459B-0E08-CA44-EDAB9F252D32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.3125 0.38124996423721313 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape2" -p "DoorLeft";
	rename -uid "985904DF-444A-887C-A340-4E941392CB9E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 17 "f[0]" "f[6]" "f[9]" "f[12:14]" "f[18:20]" "f[22:24]" "f[27:29]" "f[35:39]" "f[44:48]" "f[51:55]" "f[58:62]" "f[67:71]" "f[76:80]" "f[86:90]" "f[94:98]" "f[108:118]" "f[121:131]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 7 "f[2]" "f[7]" "f[10]" "f[40]" "f[43]" "f[107]" "f[120]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 10 "f[1]" "f[11]" "f[16]" "f[21]" "f[30]" "f[56:57]" "f[66]" "f[75]" "f[85]" "f[93]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "f[3]" "f[15]" "f[17]" "f[25:26]" "f[50]" "f[63]" "f[72]" "f[81]" "f[91]" "f[99]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 6 "f[4:5]" "f[8]" "f[34]" "f[49]" "f[119]" "f[132]";
	setAttr ".pv" -type "double2" 0.48031248152256012 0.36249999701976776 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 221 ".uvst[0].uvsp[0:220]" -type "float2" 0.375 0.5 0.625 0.5
		 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.38749999 0.5 0.38749999
		 0.74999994 0.61250001 0.75 0.61250001 0.5 0.125 0.125 0.375 0.625 0.38749999 0.625
		 0.61250001 0.625 0.625 0.625 0.875 0.125 0.125 0.2375 0.37499997 0.51249999 0.625
		 0.51249999 0.87499994 0.2375 0.61250001 0.51249999 0.38749996 0.51249999 0.125 0.012500003
		 0.375 0.73749995 0.38749999 0.73749995 0.61249995 0.73749995 0.625 0.73749995 0.875
		 0.012500003 0.1375 0 0.37499997 0.76249993 0.1375 0.012500003 0.1375 0.125 0.1375
		 0.23749998 0.1375 0.25 0.375 0.48750001 0.38749999 0.48750001 0.61249995 0.48749998
		 0.625 0.48750001 0.86249995 0.25 0.86249995 0.2375 0.86249995 0.125 0.86249995 0.012500002
		 0.625 0.76249993 0.86249995 0 0.61250001 0.76249999 0.38749996 0.76249993 0.86249995
		 0.080000006 0.625 0.66999996 0.875 0.080000006 0.61249995 0.66999996 0.38749999 0.66999996
		 0.125 0.080000006 0.375 0.66999996 0.1375 0.080000006 0.61250001 0.080000006 0.38749999
		 0.125 0.61249995 0.2375 0.5 0.2375 0.38749996 0.0125 0.38749996 0.0125 0.38749999
		 0.080000006 0.61250001 0.012500003 0.51125002 0.0125 0.48001 0.081729963 0.46062502
		 0.13624996 0.39874998 0.23749998 0.51124996 0.48750001 0.51125002 0.5 0.51125002
		 0.51249999 0.51125002 0.625 0.51125002 0.66999996 0.51124996 0.73749995 0.51125002
		 0.74999994 0.51125002 0.76249993 0.38749999 0.22624999 0.43812501 0.12049997 0.45750999
		 0.074979961 0.48874998 0.012499999 0.48874998 0.76249993 0.48874998 0.74999994 0.48874998
		 0.73749995 0.48874998 0.6699999 0.48874998 0.625 0.48874998 0.51249999 0.48874998
		 0.5 0.48874998 0.48750001 0.38749996 0.073250003 0.44006351 0.11594796 0.46256354
		 0.13079797 0.61249995 0.22174999 0.86249995 0.1205 0.625 0.62949997 0.87499994 0.1205
		 0.61250001 0.62950003 0.51125002 0.62949997 0.48874998 0.62950003 0.38749996 0.62949997
		 0.125 0.1205 0.37499997 0.62949997 0.1375 0.1205 0.1375 0.084050007 0.125 0.084050007
		 0.37499997 0.66594994 0.38749996 0.66594994 0.48874998 0.66594988 0.51125002 0.66594994
		 0.61249995 0.66594994 0.625 0.66594994 0.875 0.084050007 0.86249995 0.084050007 0.61250001
		 0.094175011 0.47826535 0.086636767 0.45576537 0.079076767 0.38749996 0.018575 0.1375
		 0.22624998 0.125 0.22624999 0.37499997 0.52374995 0.38749996 0.52374995 0.48874998
		 0.52375001 0.51125002 0.52374995 0.61250001 0.52375001 0.625 0.52374995 0.87499988
		 0.22624999 0.86249995 0.22624999 0.51124996 0.23749998 0.40493751 0.22737497 0.39256248
		 0.215675 0.38749999 0.1205 0.47833666 0.033326633 0.38749993 0.012499999 0.1375 0.058062494
		 0.125 0.058062494 0.375 0.69193751 0.38749999 0.69193751 0.48874998 0.69193739 0.51125002
		 0.69193751 0.61249995 0.69193751 0.625 0.69193751 0.875 0.058062494 0.86249995 0.058062494
		 0.46792334 0.054153297 0.38749993 0.012499999 0.38749993 0.012499998 0.46688199 0.056235962
		 0.86249995 0.059749994 0.625 0.69025004 0.875 0.059749994 0.61249989 0.69024998 0.51125002
		 0.69025004 0.48874998 0.69024986 0.38749999 0.69025004 0.125 0.059749994 0.375 0.69025004
		 0.1375 0.059749994 0.47729534 0.035409302 0.38749993 0.012499998 0.61250001 0.058624994
		 0.48990265 0.059807129 0.1375 0.036124982 0.125 0.036124982 0.375 0.71387494 0.38749999
		 0.71387494 0.48874998 0.71387494 0.51124996 0.71387494 0.61249995 0.71387494 0.625
		 0.71387494 0.875 0.036124982 0.86249995 0.036124982 0.61250001 0.036124982 0.50031602
		 0.036730461 0.1375 0.082025006 0.125 0.082025006 0.375 0.66797495 0.38749999 0.66797495
		 0.48874998 0.66797489 0.51125002 0.66797495 0.61249995 0.66797495 0.625 0.66797495
		 0.875 0.082025006 0.86249995 0.082025006 0.44937497 0.23749998 0.45809373 0.23243748
		 0.5365625 0.18687499 0.53753173 0.17627397 0.54538268 0.090405889 0.54625499 0.080864981
		 0.55120134 0.05921606 0.55640805 0.036427721 0.56187499 0.012500001 0.56187499 0.76249993
		 0.56187499 0.75 0.56187499 0.73749995 0.56187499 0.71387494 0.56187499 0.69193751
		 0.56187499 0.69025004 0.56187499 0.66999996 0.56187499 0.66797495 0.56187499 0.66594994
		 0.56187499 0.62950003 0.56187499 0.625 0.56187499 0.52374995 0.56187499 0.51249999
		 0.56187499 0.5 0.56187499 0.48750001 0.5 0.76249993 0.5 0.74999994 0.49999997 0.73749995
		 0.49999997 0.71387494 0.5 0.69193745 0.5 0.69024992 0.5 0.66999996 0.5 0.66797495
		 0.5 0.66594994 0.5 0.62950003 0.5 0.625 0.5 0.52374995 0.5 0.51249999 0.5 0.5 0.49999997
		 0.48750001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 181 ".vt";
	setAttr ".vt[0:165]"  -62 100 -30 62 100 -30 -62 -100 -30 62 -100 -30 -55.79999924 100 -30
		 -55.79999924 -100 -30 55.79999924 -100 -30 55.79999924 100 -30 -62 0 -30 -55.79999924 0 -30
		 55.79999924 0 -30 62 0 -30 -62 94.01600647 -30 62 94.01600647 -30 55.79999924 94.01600647 -30
		 -55.79999542 94.01600647 -30 -62 -94.01600647 -30 -55.79999924 -94.01600647 -30 55.79999542 -94.01600647 -30
		 62 -94.01600647 -30 -62 -100 -26.10107231 -62 -94.01600647 -26.10107231 -62 0 -26.10107231
		 -62 94.01600647 -26.10107231 -62 100 -26.10107231 -55.79999924 100 -26.10107231 55.79999542 100 -26.10107231
		 62 100 -26.10107231 62 94.01600647 -26.10107231 62 0 -26.10107231 62 -94.01600647 -26.10107231
		 62 -100 -26.10107231 55.79999924 -100 -26.10107231 -55.79999542 -100 -26.10107231
		 62 -36 -26.10107231 62 -36 -30 55.79999542 -36 -30 -55.79999924 -36 -30 -62 -36 -30
		 -62 -36 -26.10107231 55.79999924 0 -26.10107422 55.79999924 -36 -26.10107422 -55.79999924 0 -26.10107422
		 -55.79999924 94.01600647 -26.10107422 55.79999542 94.01600647 -26.10107422 -55.79999542 -94.01600647 -26.10107422
		 -55.79999542 -36 -26.10107422 55.79999924 -94.01600647 -26.10107422 1.92255998 -94.01600647 -26.10107422
		 1.92255998 -36.000038146973 -26.10107422 1.92255998 -2.2888184e-05 -26.10107422 1.92255998 94.01600647 -26.10107422
		 1.92255998 100 -26.10107231 1.92255998 100 -30 1.92255998 94.01600647 -30 1.92255998 0 -30
		 1.92255998 -36 -30 1.92255998 -94.01600647 -30 1.92255998 -100 -30 1.92255998 -100 -26.10107231
		 -1.92255998 94.01600647 -26.10107422 -1.92255998 -2.2888184e-05 -26.10107422 -1.92255998 -36.00004196167 -26.10107422
		 -1.92255998 -94.01600647 -26.10107422 -1.92255998 -100 -26.10107231 -1.92255998 -100 -30
		 -1.92255998 -94.01600647 -30 -1.92255998 -36 -30 -1.92255998 0 -30 -1.92255998 94.01600647 -30
		 -1.92255998 100 -30 -1.92255998 100 -26.10107231 -55.79999924 -3.59999847 -26.10107422
		 -1.92255986 -3.60002899 -26.10107422 1.92255998 -3.60002899 -26.10107422 55.79999542 -3.59999847 -26.10107422
		 62 -3.59999847 -26.10107231 62 -3.59999847 -30 55.79999924 -3.59999847 -30 1.92255986 -3.59999847 -30
		 -1.92255998 -3.59999847 -30 -55.79999542 -3.59999847 -30 -62 -3.59999847 -30 -62 -3.59999847 -26.10107231
		 -62 -32.75999451 -26.10107231 -62 -32.75999451 -30 -55.79999924 -32.75999451 -30
		 -1.92255986 -32.75999451 -30 1.92255998 -32.75999451 -30 55.79999542 -32.75999451 -30
		 62 -32.75999451 -30 62 -32.75999451 -26.10107231 55.79999924 -32.75999451 -26.10107422
		 1.92255986 -32.76004028 -26.10107422 -1.92255998 -32.76004028 -26.10107422 -55.79999542 -32.75999451 -26.10107422
		 -62 84.6144104 -26.10107231 -62 84.6144104 -30 -55.79999542 84.6144104 -30 -1.92255998 84.6144104 -30
		 1.92255986 84.6144104 -30 55.79999924 84.6144104 -30 62 84.6144104 -30 62 84.6144104 -26.10107231
		 55.79999542 84.6144104 -26.10107422 1.92255998 84.6144104 -26.10107422 -1.92255986 84.6144104 -26.10107422
		 -55.79999924 84.6144104 -26.10107422 -1.92255998 -74.67736816 -26.10107422 -55.79999542 -74.67735291 -26.10107422
		 -62 -54.37174606 -26.1010704 -62 -54.37174606 -30 -55.79999924 -54.37174606 -30 -1.9225601 -54.37174606 -30
		 1.9225601 -54.37174606 -30 55.79999924 -54.37174606 -30 62 -54.37174225 -30 62 -54.37174606 -26.1010704
		 -1.92255998 -55.33870697 -26.10107422 -55.79999542 -55.33867645 -26.10107422 -55.79999161 -53.40480423 -26.10107422
		 -1.92255998 -53.40484238 -26.10107422 -1.92255998 -72.74350739 -26.10107422 -55.79999161 -72.7434845 -26.10107422
		 55.79999542 -54.37174225 -26.10107422 1.92255998 -54.37176895 -26.10107422 -61.99999619 -73.7104187 -26.1010704
		 -62 -73.7104187 -30 -55.79999542 -73.7104187 -30 -1.92255998 -73.7104187 -30 1.92255998 -73.7104187 -30
		 55.79999542 -73.7104187 -30 62 -73.7104187 -30 62 -73.7104187 -26.1010704 55.79999542 -73.7104187 -26.10107422
		 1.92255998 -73.71043396 -26.10107422 -62 -34.37999725 -26.10107231 -62 -34.37999725 -30
		 -55.79999924 -34.37999725 -30 -1.92255998 -34.37999725 -30 1.92255998 -34.37999725 -30
		 55.79999542 -34.37999725 -30 62 -34.37999725 -30 62 -34.37999725 -26.10107231 28.86127853 94.01600647 -26.10107422
		 28.86127853 84.6144104 -26.10107422 28.86128044 -1.1444092e-05 -26.10107422 28.86127853 -3.60001373 -26.10107422
		 28.86128044 -32.7600174 -26.10107422 28.86128044 -36.000019073486 -26.10107422 28.86127853 -54.37175751 -26.10107422
		 28.86127853 -73.71042633 -26.10107422 28.86128044 -94.01600647 -26.10107422 28.86128044 -100 -26.10107231
		 28.86128044 -100 -30 28.86127853 -94.01600647 -30 28.86127853 -73.7104187 -30 28.86128044 -54.37174606 -30
		 28.86127853 -36 -30 28.86127853 -34.37999725 -30 28.86127853 -32.75999451 -30 28.86128044 -3.59999847 -30
		 28.86128044 0 -30 28.86128044 84.6144104 -30 28.86128044 94.01600647 -30 28.86128044 100 -30;
	setAttr ".vt[166:180]" 28.86127853 100 -26.10107231 0 -100 -26.10107231 0 -100 -30
		 0 -94.01600647 -30 0 -73.7104187 -30 0 -54.37174606 -30 0 -36 -30 0 -34.37999725 -30
		 5.9604645e-08 -32.75999451 -30 -5.9604645e-08 -3.59999847 -30 0 0 -30 -5.9604645e-08 84.6144104 -30
		 0 94.01600647 -30 0 100 -30 0 100 -26.10107231;
	setAttr -s 306 ".ed";
	setAttr ".ed[0:165]"  0 4 0 2 5 0 0 12 0 1 13 0 2 20 0 3 31 0 4 70 0 5 65 0
		 4 15 1 5 33 1 6 3 0 7 1 0 6 18 1 7 26 1 8 82 0 9 81 1 10 101 1 11 77 0 8 9 1 9 68 1
		 10 11 1 11 29 1 12 97 0 13 102 0 14 7 1 15 98 1 12 23 1 13 14 1 14 164 1 15 12 1
		 16 2 0 17 5 1 19 3 0 16 17 1 17 66 1 18 19 1 19 30 1 21 16 1 22 8 1 24 0 0 25 4 1
		 27 1 0 28 13 1 32 6 1 20 21 0 22 96 0 23 24 0 24 25 0 25 71 0 26 27 0 27 28 0 28 103 0
		 29 76 0 30 31 0 31 32 0 32 153 0 33 20 0 34 117 0 35 116 0 36 141 1 37 112 1 38 111 0
		 39 136 0 34 35 1 35 36 1 36 158 1 37 38 1 38 39 1 40 75 0 42 107 0 44 104 0 43 60 0
		 45 109 0 47 152 0 46 62 0 42 61 0 49 149 0 50 146 1 51 144 0 52 166 0 53 165 0 54 178 1
		 55 162 1 56 172 1 57 155 1 58 154 0 59 167 0 50 105 0 52 53 1 53 54 1 54 100 1 55 79 1
		 56 114 1 57 58 1 58 59 1 63 45 0 64 33 0 65 168 0 66 169 1 67 37 1 68 176 1 69 15 1
		 70 179 0 71 180 0 60 106 0 62 121 0 64 65 1 65 66 1 67 139 1 68 99 1 69 70 1 70 71 1
		 73 94 0 74 50 0 75 92 0 76 91 0 77 90 0 78 10 1 79 88 1 80 68 1 81 86 1 82 85 0 83 22 0
		 72 73 0 74 147 1 76 77 1 77 78 1 78 161 1 79 175 1 80 81 1 81 82 1 82 83 1 84 83 0
		 85 137 0 86 138 1 87 80 1 88 140 1 89 78 1 90 142 0 91 143 0 93 74 0 95 72 0 84 85 1
		 85 86 1 86 87 1 87 174 1 88 160 1 89 90 1 90 91 1 92 148 0 94 95 0 96 23 0 97 8 0
		 98 9 1 99 69 1 100 55 1 101 14 1 102 11 0 103 29 0 104 40 0 105 51 0 106 61 0 107 43 0
		 96 97 1 97 98 1 98 99 1;
	setAttr ".ed[166:305]" 99 177 1 100 163 1 101 102 1 102 103 1 104 145 1 106 107 1
		 21 126 0 66 129 1 18 131 1 48 135 0 108 63 0 108 109 0 111 127 0 112 128 1 114 130 1
		 116 132 0 117 133 0 118 122 0 110 111 1 111 112 1 112 113 1 113 171 1 114 157 1 115 116 1
		 116 117 1 118 119 0 120 46 0 41 124 0 115 36 1 113 67 1 110 39 0 120 121 0 123 119 0
		 122 123 0 124 134 0 125 49 0 124 150 1 126 110 0 127 16 0 128 17 1 129 113 1 130 57 1
		 131 115 1 132 19 0 133 30 0 134 47 0 135 125 0 126 127 1 127 128 1 128 129 1 129 170 1
		 130 156 1 131 132 1 132 133 1 134 151 1 136 84 0 137 38 0 138 37 1 139 87 1 140 56 1
		 141 89 1 142 35 0 143 34 0 136 137 1 137 138 1 138 139 1 139 173 1 140 159 1 141 142 1
		 142 143 1 144 44 0 145 105 1 146 40 1 147 75 1 148 93 0 149 41 0 150 125 1 151 135 1
		 152 48 0 153 59 0 154 6 0 155 18 1 156 131 1 157 115 1 158 56 1 159 141 1 160 89 1
		 161 79 1 162 10 1 163 101 1 164 54 1 165 7 0 166 26 0 144 145 1 145 146 1 146 147 1
		 147 148 1 149 150 1 150 151 1 151 152 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1
		 158 159 1 159 160 1 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1 167 64 0
		 168 58 0 169 57 1 170 130 1 171 114 1 172 67 1 173 140 1 174 88 1 175 80 1 176 55 1
		 177 100 1 178 69 1 179 53 0 180 52 0 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 180 1;
	setAttr -s 133 -ch 532 ".fc[0:132]" -type "polyFaces" 
		f 4 33 31 -2 -31
		mu 0 4 25 26 9 2
		f 4 4 44 37 30
		mu 0 4 6 30 32 24
		f 4 1 9 56 -5
		mu 0 4 2 9 47 31
		f 4 36 53 -6 -33
		mu 0 4 29 43 45 4
		f 4 47 40 -1 -40
		mu 0 4 36 37 8 0
		f 4 13 49 41 -12
		mu 0 4 11 38 39 1
		f 4 12 35 32 -11
		mu 0 4 10 27 28 3
		f 4 54 43 10 5
		mu 0 4 44 46 10 3
		f 4 -292 305 292 88
		mu 0 4 69 219 220 68
		f 4 -281 294 281 93
		mu 0 4 74 207 208 73
		f 4 293 280 94 86
		mu 0 4 206 207 74 75
		f 4 26 46 39 2
		mu 0 4 18 34 35 7
		f 4 0 8 29 -3
		mu 0 4 0 8 23 19
		f 4 304 291 89 81
		mu 0 4 218 219 69 70
		f 4 27 24 11 3
		mu 0 4 20 22 11 1
		f 4 50 42 -4 -42
		mu 0 4 40 41 21 5
		f 4 -39 45 163 152
		mu 0 4 12 33 116 117
		f 4 169 158 -22 -158
		mu 0 4 124 125 42 17
		f 4 -21 16 168 157
		mu 0 4 16 15 122 123
		f 4 -289 302 289 155
		mu 0 4 71 216 217 121
		f 4 164 153 -19 -153
		mu 0 4 118 119 14 13
		f 4 131 122 38 14
		mu 0 4 99 101 33 12
		f 4 18 15 130 -15
		mu 0 4 13 14 98 100
		f 4 128 301 288 91
		mu 0 4 96 215 216 71
		f 4 126 117 20 17
		mu 0 4 93 95 15 16
		f 4 21 52 125 -18
		mu 0 4 17 42 92 94
		f 4 -37 -210 219 210
		mu 0 4 43 29 168 169
		f 4 -36 174 218 209
		mu 0 4 28 27 166 167
		f 4 -282 295 282 207
		mu 0 4 73 208 209 165
		f 4 -34 -205 214 205
		mu 0 4 26 25 162 163
		f 4 -38 172 213 204
		mu 0 4 24 32 160 161
		f 4 265 -74 -212 220
		mu 0 4 189 190 63 170
		f 4 261 239 -69 -239
		mu 0 4 184 185 91 58
		f 4 170 260 238 -160
		mu 0 4 126 183 184 58
		f 4 278 258 -14 -258
		mu 0 4 204 205 38 11
		f 4 28 277 257 -25
		mu 0 4 22 203 204 11
		f 4 -255 275 255 -17
		mu 0 4 15 201 202 122
		f 4 127 274 254 -118
		mu 0 4 95 200 201 15
		f 4 -248 268 248 -175
		mu 0 4 27 193 194 166
		f 4 267 247 -13 -247
		mu 0 4 192 193 27 10
		f 4 55 266 246 -44
		mu 0 4 46 191 192 10
		f 4 75 -162 171 -70
		mu 0 4 62 77 128 129
		f 4 -177 177 -73 -96
		mu 0 4 79 130 131 61
		f 4 -107 96 -10 7
		mu 0 4 81 80 47 9
		f 4 -32 34 -108 -8
		mu 0 4 9 26 82 81
		f 4 -35 -206 215 -174
		mu 0 4 82 26 163 164
		f 4 -120 129 -16 19
		mu 0 4 84 97 98 14
		f 4 165 -110 -20 -154
		mu 0 4 119 120 84 14
		f 4 -111 101 -9 6
		mu 0 4 86 85 23 8
		f 4 -41 48 -112 -7
		mu 0 4 8 37 87 86
		f 4 235 228 63 -228
		mu 0 4 180 181 48 50
		f 4 64 59 234 227
		mu 0 4 49 51 178 179
		f 4 65 271 251 -60
		mu 0 4 51 197 198 178
		f 4 298 285 225 83
		mu 0 4 212 213 177 72
		f 4 231 -109 99 -224
		mu 0 4 175 176 83 52
		f 4 230 223 66 -223
		mu 0 4 174 175 52 54
		f 4 67 62 229 222
		mu 0 4 53 55 172 173
		f 4 -143 132 -132 121
		mu 0 4 103 102 101 99
		f 4 -131 120 -144 -122
		mu 0 4 100 98 105 104
		f 4 -130 -136 -145 -121
		mu 0 4 98 97 106 105
		f 4 -287 300 -129 118
		mu 0 4 107 214 215 96
		f 4 -253 273 -128 -138
		mu 0 4 108 199 200 95
		f 4 -148 137 -127 116
		mu 0 4 109 108 95 93
		f 4 -126 115 -149 -117
		mu 0 4 94 92 111 110
		f 4 262 -150 -115 -240
		mu 0 4 185 186 112 91
		f 4 -151 -113 -124 -142
		mu 0 4 115 114 89 88
		f 4 -164 151 -27 22
		mu 0 4 117 116 34 18
		f 4 -30 25 -165 -23
		mu 0 4 19 23 119 118
		f 4 -155 -166 -26 -102
		mu 0 4 85 120 119 23
		f 4 -290 303 -82 90
		mu 0 4 121 217 218 70
		f 4 -256 276 -29 -157
		mu 0 4 122 202 203 22
		f 4 -169 156 -28 23
		mu 0 4 123 122 22 20
		f 4 -43 51 -170 -24
		mu 0 4 21 41 125 124
		f 4 259 -171 -71 -237
		mu 0 4 182 183 126 59
		f 4 -172 -105 -72 -163
		mu 0 4 129 128 76 57
		f 4 -185 196 -68 61
		mu 0 4 153 155 55 53
		f 4 -67 60 -186 -62
		mu 0 4 54 52 152 154
		f 4 -196 -187 -61 -100
		mu 0 4 83 151 152 52
		f 4 -284 297 -84 92
		mu 0 4 150 211 212 72
		f 4 -250 270 -66 -195
		mu 0 4 149 196 197 51
		f 4 -190 194 -65 58
		mu 0 4 147 149 51 49
		f 4 -64 57 -191 -59
		mu 0 4 50 48 146 148
		f 4 -242 263 -203 -194
		mu 0 4 56 187 188 158
		f 4 197 -106 -75 -193
		mu 0 4 144 145 78 60
		f 4 -200 -184 191 -199
		mu 0 4 157 156 142 143
		f 4 -214 203 184 178
		mu 0 4 161 160 132 133
		f 4 -215 -179 185 179
		mu 0 4 163 162 134 135
		f 4 -207 -216 -180 186
		mu 0 4 136 164 163 135
		f 4 -283 296 283 180
		mu 0 4 165 209 210 137
		f 4 -209 -249 269 249
		mu 0 4 138 166 194 195
		f 4 -219 208 189 181
		mu 0 4 167 166 138 139
		f 4 -220 -182 190 182
		mu 0 4 169 168 140 141
		f 4 264 -221 -201 202
		mu 0 4 188 189 170 158
		f 4 -230 221 142 133
		mu 0 4 173 172 102 103
		f 4 143 134 -231 -134
		mu 0 4 104 105 175 174
		f 4 144 -225 -232 -135
		mu 0 4 105 106 176 175
		f 4 -286 299 286 136
		mu 0 4 177 213 214 107
		f 4 -252 272 252 -227
		mu 0 4 178 198 199 108
		f 4 -235 226 147 138
		mu 0 4 179 178 108 109
		f 4 148 139 -236 -139
		mu 0 4 110 111 181 180
		f 4 -161 -238 -260 -79
		mu 0 4 67 127 183 182
		f 4 -261 237 -88 77
		mu 0 4 184 183 127 66
		f 4 124 -262 -78 -114
		mu 0 4 90 185 184 66
		f 4 -241 -263 -125 -141
		mu 0 4 113 186 185 90
		f 4 -264 -77 -202 -243
		mu 0 4 188 187 65 159
		f 4 -213 -244 -265 242
		mu 0 4 159 171 189 188
		f 4 -245 -266 243 -176
		mu 0 4 64 190 189 171
		f 4 -267 245 -95 85
		mu 0 4 192 191 75 74
		f 4 -94 84 -268 -86
		mu 0 4 74 73 193 192
		f 4 -269 -85 -208 217
		mu 0 4 194 193 73 165
		f 4 -270 -218 -181 188
		mu 0 4 195 194 165 137
		f 4 -271 -189 -93 -251
		mu 0 4 197 196 150 72
		f 4 -272 250 -226 233
		mu 0 4 198 197 72 177
		f 4 -273 -234 -137 146
		mu 0 4 199 198 177 107
		f 4 -274 -147 -119 -254
		mu 0 4 200 199 107 96
		f 4 -275 253 -92 82
		mu 0 4 201 200 96 71
		f 4 -276 -83 -156 167
		mu 0 4 202 201 71 121
		f 4 -277 -168 -91 -257
		mu 0 4 203 202 121 70
		f 4 -278 256 -90 80
		mu 0 4 204 203 70 69
		f 4 -89 79 -279 -81
		mu 0 4 69 68 205 204
		f 4 106 97 -294 279
		mu 0 4 80 81 207 206
		f 4 -295 -98 107 98
		mu 0 4 208 207 81 82
		f 4 -296 -99 173 216
		mu 0 4 209 208 82 164
		f 4 -297 -217 206 187
		mu 0 4 210 209 164 136
		f 4 -298 -188 195 -285
		mu 0 4 212 211 151 83
		f 4 108 232 -299 284
		mu 0 4 83 176 213 212
		f 4 -300 -233 224 145
		mu 0 4 214 213 176 106
		f 4 -301 -146 135 -288
		mu 0 4 215 214 106 97
		f 4 -302 287 119 100
		mu 0 4 216 215 97 84
		f 4 -303 -101 109 166
		mu 0 4 217 216 84 120
		f 4 -304 -167 154 -291
		mu 0 4 218 217 120 85
		f 4 110 102 -305 290
		mu 0 4 85 86 219 218
		f 4 -306 -103 111 103
		mu 0 4 220 219 86 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape3" -p "DoorLeft";
	rename -uid "48873F6E-4EFA-56FD-14C9-038B167F9492";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 12 "f[0]" "f[5]" "f[7]" "f[9:10]" "f[15:19]" "f[21:22]" "f[25:26]" "f[29:30]" "f[33:34]" "f[38:39]" "f[41:42]" "f[44:54]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 5 "f[2]" "f[14]" "f[43]" "f[56:57]" "f[79]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 13 "f[1]" "f[4]" "f[6]" "f[8]" "f[11]" "f[23:24]" "f[28]" "f[32]" "f[37]" "f[40]" "f[57:62]" "f[64:65]" "f[67:68]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[3]" "f[20]" "f[55]" "f[66:67]" "f[70]";
	setAttr ".pv" -type "double2" 0.6340624988079071 0.38124999403953552 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 122 ".uvst[0].uvsp[0:121]" -type "float2" 0.375 0.5 0.375 0.75
		 0.125 0 0.125 0.25 0.38749999 0.5 0.38749999 0.74999994 0.125 0.125 0.375 0.625 0.38749999
		 0.625 0.125 0.2375 0.37499997 0.51249999 0.38749996 0.51249999 0.125 0.012500003
		 0.375 0.73749995 0.38749999 0.73749995 0.25624999 0.38124996 0.1375 0.012500003 0.1375
		 0.125 0.1375 0.23749998 0.25624999 0.36875001 0.38749999 0.48750001 0.38749996 0.76249993
		 0.38749999 0.66999996 0.125 0.080000006 0.375 0.66999996 0.1375 0.080000006 0.38749999
		 0.125 0.38749996 0.0125 0.38749996 0.0125 0.38749999 0.080000006 0.38749999 0.22624999
		 0.43812501 0.12049997 0.45750999 0.074979961 0.48874998 0.012499999 0.48874998 0.76249993
		 0.48874998 0.74999994 0.48874998 0.73749995 0.48874998 0.6699999 0.48874998 0.625
		 0.48874998 0.51249999 0.48874998 0.5 0.48874998 0.48750001 0.38749996 0.073250003
		 0.44006351 0.11594796 0.48874998 0.62950003 0.38749996 0.62949997 0.125 0.1205 0.37499997
		 0.62949997 0.1375 0.1205 0.1375 0.084050007 0.125 0.084050007 0.37499997 0.66594994
		 0.38749996 0.66594994 0.48874998 0.66594988 0.45576537 0.079076767 0.38749996 0.018575
		 0.1375 0.22624998 0.125 0.22624999 0.37499997 0.52374995 0.38749996 0.52374995 0.48874998
		 0.52375001 0.39256248 0.215675 0.38749999 0.1205 0.47833666 0.033326633 0.38749993
		 0.012499999 0.1375 0.058062494 0.125 0.058062494 0.375 0.69193751 0.38749999 0.69193751
		 0.48874998 0.69193739 0.46792334 0.054153297 0.38749993 0.012499999 0.38749993 0.012499998
		 0.46688199 0.056235962 0.48874998 0.69024986 0.38749999 0.69025004 0.125 0.059749994
		 0.375 0.69025004 0.1375 0.059749994 0.47729534 0.035409302 0.38749993 0.012499998
		 0.1375 0.036124982 0.125 0.036124982 0.375 0.71387494 0.38749999 0.71387494 0.48874998
		 0.71387494 0.1375 0.082025006 0.125 0.082025006 0.375 0.66797495 0.38749999 0.66797495
		 0.48874998 0.66797489 0.5 0.76249993 0.5 0.74999994 0.49999997 0.73749995 0.49999997
		 0.71387494 0.5 0.69193745 0.5 0.69024992 0.5 0.66999996 0.5 0.66797495 0.5 0.66594994
		 0.5 0.62950003 0.5 0.625 0.5 0.52374995 0.5 0.51249999 0.5 0.5 0.49999997 0.48750001
		 0.49999997 0.48750001 0.393125 0.23187499 0.39875001 0.22152498 0.393125 0.23187499
		 0.39875001 0.22152498 0.44937503 0.12837496 0.5 0.76249993 0.5 0.012499999 0.48880568
		 0.036069881 0.48932636 0.035028547 0.4783923 0.058021545 0.47891301 0.056980215 0.46876001
		 0.078354962 0.46701536 0.082856767 0.45131353 0.12337296 0.44937503 0.12837496;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 93 ".vt[0:92]"  -62 100 -30 -62 -100 -30 -55.79999924 100 -30
		 -55.79999924 -100 -30 -62 0 -30 -55.79999924 0 -30 -62 94.01600647 -30 -55.79999542 94.01600647 -30
		 -62 -94.01600647 -30 -55.79999924 -94.01600647 -30 -62 -100 -26.10107422 -62 -94.01600647 -26.10107422
		 -62 0 -26.10107422 -62 94.01600647 -26.10107422 -62 100 -26.10107422 -55.79999924 100 -26.10107422
		 -55.79999542 -100 -26.10107422 -55.79999924 -36 -30 -62 -36 -30 -62 -36 -26.10107422
		 -55.79999924 0 -26.10107422 -55.79999924 94.01600647 -26.10107422 -55.79999542 -94.01600647 -26.10107422
		 -55.79999542 -36 -26.10107422 -1.92255998 94.01600647 -26.10107422 -1.92255998 -2.2888184e-05 -26.10107422
		 -1.92255998 -36.00004196167 -26.10107422 -1.92255998 -94.01600647 -26.10107422 -1.92255998 -100 -26.10107422
		 -1.92255998 -100 -30 -1.92255998 -94.01600647 -30 -1.92255998 -36 -30 -1.92255998 0 -30
		 -1.92255998 94.01600647 -30 -1.92255998 100 -30 -1.92255998 100 -26.10107422 -55.79999924 -3.59999847 -26.10107422
		 -1.92255986 -3.60002899 -26.10107422 -1.92255998 -3.59999847 -30 -55.79999542 -3.59999847 -30
		 -62 -3.59999847 -30 -62 -3.59999847 -26.10107422 -62 -32.75999451 -26.10107422 -62 -32.75999451 -30
		 -55.79999924 -32.75999451 -30 -1.92255986 -32.75999451 -30 -1.92255998 -32.76004028 -26.10107422
		 -55.79999542 -32.75999451 -26.10107422 -62 84.6144104 -26.10107422 -62 84.6144104 -30
		 -55.79999542 84.6144104 -30 -1.92255998 84.6144104 -30 -1.92255986 84.6144104 -26.10107422
		 -55.79999924 84.6144104 -26.10107422 -1.92255998 -73.7104187 -26.10107422 -55.79999542 -73.71042633 -26.10107422
		 -62 -54.37174606 -26.10107422 -62 -54.37174606 -30 -55.79999924 -54.37174606 -30
		 -1.9225601 -54.37174606 -30 -1.92255998 -54.37175751 -26.10107422 -55.79999542 -54.37175751 -26.10107422
		 -61.99999619 -73.7104187 -26.10107422 -62 -73.7104187 -30 -55.79999542 -73.7104187 -30
		 -1.92255998 -73.7104187 -30 -62 -34.37999725 -26.10107422 -62 -34.37999725 -30 -55.79999924 -34.37999725 -30
		 -1.92255998 -34.37999725 -30 0 -100 -26.10107422 0 -100 -30 0 -94.01600647 -30 0 -73.7104187 -30
		 0 -54.37174606 -30 0 -36 -30 0 -34.37999725 -30 5.9604645e-08 -32.75999451 -30 -5.9604645e-08 -3.59999847 -30
		 0 0 -30 -5.9604645e-08 84.6144104 -30 0 94.01600647 -30 0 100 -30 0 100 -26.10107422
		 0 94.01600647 -26.10107422 5.9604645e-08 84.6144104 -26.10107422 0 -2.2888184e-05 -26.10107422
		 0 -94.01600647 -26.10107422 0 -73.71042633 -26.10107422 0 -54.37176514 -26.10107422
		 0 -36.000038146973 -26.10107422 -5.9604645e-08 -32.76004028 -26.10107422 5.9604645e-08 -3.60002899 -26.10107422;
	setAttr -s 173 ".ed";
	setAttr ".ed[0:165]"  0 2 0 1 3 0 0 6 0 1 10 0 2 34 0 3 29 0 2 7 1 3 16 1
		 4 40 0 5 39 1 4 5 1 5 32 1 6 49 0 7 50 1 6 13 1 7 6 1 8 1 0 9 3 1 8 9 1 9 30 1 11 8 1
		 12 4 1 14 0 0 15 2 1 10 11 0 12 48 0 13 14 0 14 15 0 15 35 0 16 10 0 17 58 1 18 57 0
		 19 66 0 17 18 1 18 19 1 20 53 0 21 24 0 22 55 0 23 26 0 20 25 0 27 22 0 28 16 0 29 71 0
		 30 72 1 31 17 1 32 79 1 33 7 1 34 82 0 35 83 0 24 52 0 26 60 0 28 29 1 29 30 1 31 69 1
		 32 51 1 33 34 1 34 35 1 37 46 0 38 32 1 39 44 1 40 43 0 41 12 0 36 37 0 38 39 1 39 40 1
		 40 41 1 42 41 0 43 67 0 44 68 1 45 38 1 47 36 0 42 43 1 43 44 1 44 45 1 45 77 1 46 47 0
		 48 13 0 49 4 0 50 5 1 51 33 1 52 25 0 53 21 0 48 49 1 49 50 1 50 51 1 51 80 1 52 53 1
		 11 62 0 30 65 1 54 27 0 54 55 0 57 63 0 58 64 1 60 54 0 56 57 1 57 58 1 58 59 1 59 74 1
		 60 61 0 61 23 0 59 31 1 56 19 0 55 61 0 62 56 0 63 8 0 64 9 1 65 59 1 62 63 1 63 64 1
		 64 65 1 65 73 1 66 42 0 67 18 0 68 17 1 69 45 1 66 67 1 67 68 1 68 69 1 69 76 1 70 28 0
		 75 31 1 78 38 1 81 33 1 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 76 77 0 77 78 0
		 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 22 16 0 27 28 0 11 22 0 55 62 0 61 56 0 23 19 0
		 42 47 0 41 36 0 12 20 0 48 53 0 20 36 0 25 37 0 13 21 0 15 21 0 35 24 0 23 47 0 19 42 0
		 26 46 0 84 24 0 83 84 0 52 85 0 85 84 0 86 25 0 85 86 0 37 92 0 46 91 0 26 90 0 60 89 0
		 54 88 0 27 87 0;
	setAttr ".ed[166:172]" 70 87 0 87 88 0 88 89 0 89 90 0 90 91 0 91 92 0 92 86 0;
	setAttr -s 80 -ch 320 ".fc[0:79]" -type "polyFaces" 
		f 4 18 17 -2 -17
		mu 0 4 13 14 5 1
		f 4 3 24 20 16
		mu 0 4 2 15 16 12
		f 4 1 7 29 -4
		mu 0 4 1 5 21 15
		f 4 27 23 -1 -23
		mu 0 4 19 20 4 0
		f 4 14 26 22 2
		mu 0 4 9 18 19 3
		f 4 0 6 15 -3
		mu 0 4 0 4 11 10
		f 4 -22 25 82 77
		mu 0 4 6 17 56 57
		f 4 83 78 -11 -78
		mu 0 4 58 59 8 7
		f 4 65 61 21 8
		mu 0 4 46 48 17 6
		f 4 10 9 64 -9
		mu 0 4 7 8 45 47
		f 4 -19 -105 108 105
		mu 0 4 14 13 83 84
		f 4 -21 87 107 104
		mu 0 4 12 16 81 82
		f 4 39 -81 86 -36
		mu 0 4 29 31 61 62
		f 4 -90 90 -38 -41
		mu 0 4 33 63 64 28
		f 4 -52 41 -8 5
		mu 0 4 35 34 21 5
		f 4 -18 19 -53 -6
		mu 0 4 5 14 36 35
		f 4 -20 -106 109 -89
		mu 0 4 36 14 84 85
		f 4 -59 63 -10 11
		mu 0 4 38 44 45 8
		f 4 84 -55 -12 -79
		mu 0 4 59 60 38 8
		f 4 -56 46 -7 4
		mu 0 4 40 39 11 4
		f 4 -24 28 -57 -5
		mu 0 4 4 20 41 40
		f 4 117 -54 44 -114
		mu 0 4 89 90 37 22
		f 4 116 113 33 -113
		mu 0 4 88 89 22 24
		f 4 34 32 115 112
		mu 0 4 23 25 86 87
		f 4 -72 66 -66 60
		mu 0 4 50 49 48 46
		f 4 -65 59 -73 -61
		mu 0 4 47 45 52 51
		f 4 -64 -70 -74 -60
		mu 0 4 45 44 53 52
		f 4 -76 -58 -63 -71
		mu 0 4 55 54 43 42
		f 4 -83 76 -15 12
		mu 0 4 57 56 18 9
		f 4 -16 13 -84 -13
		mu 0 4 10 11 59 58
		f 4 -80 -85 -14 -47
		mu 0 4 39 60 59 11
		f 4 -87 -50 -37 -82
		mu 0 4 62 61 30 26
		f 4 -95 101 -35 31
		mu 0 4 76 78 25 23
		f 4 -34 30 -96 -32
		mu 0 4 24 22 75 77
		f 4 -101 -97 -31 -45
		mu 0 4 37 74 75 22
		f 4 -99 -51 -39 -100
		mu 0 4 72 73 32 27
		f 4 -91 -94 98 -103
		mu 0 4 80 79 70 71
		f 4 -108 103 94 91
		mu 0 4 82 81 65 66
		f 4 -109 -92 95 92
		mu 0 4 84 83 67 68
		f 4 -107 -110 -93 96
		mu 0 4 69 85 84 68
		f 4 -116 111 71 67
		mu 0 4 87 86 49 50
		f 4 72 68 -117 -68
		mu 0 4 51 52 89 88
		f 4 73 -115 -118 -69
		mu 0 4 52 53 90 89
		f 4 51 42 -124 119
		mu 0 4 34 35 92 91
		f 4 -125 -43 52 43
		mu 0 4 93 92 35 36
		f 4 -126 -44 88 110
		mu 0 4 94 93 36 85
		f 4 -127 -111 106 97
		mu 0 4 95 94 85 69
		f 4 -128 -98 100 -121
		mu 0 4 97 96 74 37
		f 4 53 118 -129 120
		mu 0 4 37 90 98 97
		f 4 -130 -119 114 74
		mu 0 4 99 98 90 53
		f 4 -131 -75 69 -122
		mu 0 4 100 99 53 44
		f 4 -132 121 58 45
		mu 0 4 101 100 44 38
		f 4 -133 -46 54 85
		mu 0 4 102 101 38 60
		f 4 -134 -86 79 -123
		mu 0 4 103 102 60 39
		f 4 55 47 -135 122
		mu 0 4 39 40 104 103
		f 4 -136 -48 56 48
		mu 0 4 105 104 40 41
		f 4 40 136 -42 -138
		mu 0 4 33 28 21 34
		f 4 -25 -30 -137 -139
		mu 0 4 16 15 21 28
		f 4 37 139 -88 138
		mu 0 4 28 64 81 16
		f 4 102 140 -104 -140
		mu 0 4 80 71 65 81
		f 4 99 141 -102 -141
		mu 0 4 72 27 25 78
		f 4 -67 142 70 -144
		mu 0 4 48 49 55 42
		f 4 -26 144 35 -146
		mu 0 4 56 17 29 62
		f 4 -40 146 62 -148
		mu 0 4 31 29 42 43
		f 4 143 -147 -145 -62
		mu 0 4 48 42 29 17
		f 4 -77 145 81 -149
		mu 0 4 18 56 62 26
		f 4 -29 149 36 -151
		mu 0 4 41 20 26 30
		f 4 -28 -27 148 -150
		mu 0 4 20 19 18 26
		f 4 -142 151 -143 -153
		mu 0 4 25 27 55 49
		f 4 38 153 75 -152
		mu 0 4 27 32 54 55
		f 4 -156 -49 150 -155
		mu 0 4 107 106 41 30
		f 4 49 156 157 154
		mu 0 4 30 61 108 109
		f 4 -160 -157 80 -159
		mu 0 4 111 110 61 31
		f 4 147 160 172 158
		mu 0 4 31 43 120 121
		f 4 57 161 171 -161
		mu 0 4 43 54 119 120
		f 4 -154 162 170 -162
		mu 0 4 54 32 118 119
		f 4 50 163 169 -163
		mu 0 4 32 73 116 118
		f 4 93 164 168 -164
		mu 0 4 70 79 114 117
		f 4 89 165 167 -165
		mu 0 4 63 33 113 115
		f 4 137 -120 166 -166
		mu 0 4 33 34 112 113;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 2 
		15 0 
		19 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C2C171E3-46D4-CF28-4BB9-9A8B3016395A";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E5B26728-4B62-3006-1C8A-AB8EE2113513";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "53C0FD38-4F45-0730-5697-8C8DFCA017A3";
createNode displayLayerManager -n "layerManager";
	rename -uid "86DC5189-4953-FDF1-186D-89B845C20EE6";
createNode displayLayer -n "defaultLayer";
	rename -uid "7F56373D-4F45-4631-06B8-FF83EC1DA71F";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "435D5EDC-4334-B12E-6F1C-2A8A50BEF13C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "54B00FA8-4542-CACB-B7E9-D780C5092C0D";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9AD394B2-489F-8B84-2715-6A8108D2478B";
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
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1316\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1316\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1316\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 25 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "FA6E7B6C-474F-2D99-15B3-298C630AA934";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "8B942C25-4A35-5F9D-E681-7DAAC73F5D62";
	setAttr ".w" 124;
	setAttr ".h" 200;
	setAttr ".d" 60;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	rename -uid "2F2EECF7-4EA3-E5D9-2B11-15B65AA37BDF";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483638 -2147483637 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "2D2DA705-4DC9-87DB-486D-16A0AC96CA37";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483648 -2147483647 -2147483629 -2147483646 -2147483645 -2147483631 
		-2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "B746C21D-4D8B-DC83-47CE-FA871F1218B7";
	setAttr -s 7 ".e[0:6]"  0.1 0.1 0.89999998 0.1 0.1 0.1 0.1;
	setAttr -s 7 ".d[0:6]"  -2147483648 -2147483647 -2147483626 -2147483646 -2147483645 -2147483631 
		-2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "4EF04C60-493C-C65E-4CD6-EDBC067D9AA7";
	setAttr -s 7 ".e[0:6]"  0.1 0.89999998 0.89999998 0.89999998 0.89999998
		 0.89999998 0.1;
	setAttr -s 7 ".d[0:6]"  -2147483629 -2147483627 -2147483628 -2147483623 -2147483624 -2147483625 
		-2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "92D3E53D-4C7F-B7B2-A9E5-3E878C02A406";
	setAttr -s 13 ".e[0:12]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5;
	setAttr -s 13 ".d[0:12]"  -2147483644 -2147483632 -2147483640 -2147483607 -2147483619 -2147483594 
		-2147483639 -2147483630 -2147483643 -2147483597 -2147483622 -2147483610 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "A6259D54-4736-3E91-9B94-8FB35EB710FE";
	setAttr -s 13 ".e[0:12]"  0.1 0.1 0.89999998 0.89999998 0.89999998
		 0.1 0.89999998 0.89999998 0.1 0.89999998 0.1 0.1 0.1;
	setAttr -s 13 ".d[0:12]"  -2147483640 -2147483632 -2147483592 -2147483581 -2147483582 -2147483597 
		-2147483584 -2147483585 -2147483639 -2147483587 -2147483619 -2147483607 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "20D6F5D2-444A-A3C3-C2AD-B1B3B8F64C9A";
	setAttr -s 13 ".e[0:12]"  0.1 0.89999998 0.89999998 0.89999998 0.89999998
		 0.1 0.89999998 0.1 0.1 0.89999998 0.1 0.1 0.1;
	setAttr -s 13 ".d[0:12]"  -2147483644 -2147483591 -2147483590 -2147483589 -2147483588 -2147483594 
		-2147483586 -2147483630 -2147483643 -2147483583 -2147483622 -2147483610 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "F57BD659-4145-8510-C4B1-6F832E4A1E67";
	setAttr -s 17 ".e[0:16]"  0.1 0.89999998 0.89999998 0.1 0.89999998
		 0.89999998 0.89999998 0.1 0.89999998 0.89999998 0.1 0.1 0.1 0.89999998 0.1 0.1 0.1;
	setAttr -s 17 ".d[0:16]"  -2147483638 -2147483531 -2147483579 -2147483556 -2147483636 -2147483608 
		-2147483620 -2147483593 -2147483633 -2147483549 -2147483574 -2147483526 -2147483637 -2147483595 -2147483618 -2147483606 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "A63B3A85-43BC-1E9A-A151-EEBA4B769C6F";
	setAttr -s 17 ".e[0:16]"  0.1 0.89999998 0.1 0.1 0.89999998 0.89999998
		 0.89999998 0.1 0.89999998 0.89999998 0.89999998 0.1 0.1 0.89999998 0.1 0.1 0.1;
	setAttr -s 17 ".d[0:16]"  -2147483642 -2147483555 -2147483580 -2147483532 -2147483635 -2147483605 
		-2147483617 -2147483596 -2147483634 -2147483525 -2147483573 -2147483550 -2147483641 -2147483598 -2147483621 -2147483609 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "2654F637-4920-C1DB-C168-A8B985156DF7";
	setAttr -s 17 ".e[0:16]"  0.40000001 0.40000001 0.60000002 0.60000002
		 0.60000002 0.40000001 0.60000002 0.60000002 0.60000002 0.40000001 0.40000001 0.60000002
		 0.40000001 0.40000001 0.40000001 0.60000002 0.40000001;
	setAttr -s 17 ".d[0:16]"  -2147483591 -2147483470 -2147483544 -2147483533 -2147483534 -2147483583 
		-2147483536 -2147483463 -2147483537 -2147483494 -2147483586 -2147483539 -2147483588 -2147483589 -2147483590 -2147483503 -2147483591;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "CC6B7308-4576-FCA1-37CF-07831C4E68DA";
	setAttr ".uopa" yes;
	setAttr -s 61 ".tk";
	setAttr ".tk[42]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[43]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[44]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[45]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[46]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[47]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[48]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[49]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[50]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[51]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[52]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[53]" -type "float3" 0 4.0160089 0 ;
	setAttr ".tk[54]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[55]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[56]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[57]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[58]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[59]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[60]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[61]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[62]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[63]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[64]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[65]" -type "float3" 0 -4.0160089 0 ;
	setAttr ".tk[66]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[67]" -type "float3" 0 -4.0160089 0.89892721 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[69]" -type "float3" 0 4.0160089 0.89892721 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[72]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[73]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[74]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[75]" -type "float3" 0 4.0160089 0.89892721 ;
	setAttr ".tk[76]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[77]" -type "float3" 0 -4.0160089 0.89892721 ;
	setAttr ".tk[78]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[79]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[80]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[81]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[82]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[83]" -type "float3" 0 4.0160089 -0.89892721 ;
	setAttr ".tk[84]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[85]" -type "float3" 0 -4.0160089 -0.89892721 ;
	setAttr ".tk[86]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[87]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[88]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[89]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[90]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[91]" -type "float3" 0 -4.0160089 -0.89892721 ;
	setAttr ".tk[92]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[93]" -type "float3" 0 4.0160089 -0.89892721 ;
	setAttr ".tk[94]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[95]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[96]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[97]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[99]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[105]" -type "float3" 0 0 -0.89892721 ;
	setAttr ".tk[107]" -type "float3" 0 0 0.89892721 ;
	setAttr ".tk[113]" -type "float3" 0 0 0.89892721 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "58F557E9-4CEE-6AEF-48E1-579C1CFC2B7D";
	setAttr ".dc" -type "componentList" 3 "f[43:44]" "f[61:62]" "f[99:100]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "E2A888A3-4FBA-0D43-4090-ECA912D1E662";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[65:66]" "e[82]" "e[92:93]" "e[111]" "e[121:122]" "e[191:192]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 100 30 ;
	setAttr ".rs" 61667;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -55.799999237060547 5.9839914528252081 30 ;
	setAttr ".cbx" -type "double3" 55.799999237060547 194.01600439227832 30 ;
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "18736332-4ED6-F854-692A-829FD3197C51";
	setAttr ".ics" -type "componentList" 6 "e[219]" "e[222]" "e[224]" "e[226:227]" "e[230]" "e[233:236]";
createNode polyTweak -n "polyTweak2";
	rename -uid "42A45033-48AB-6BB3-BBA7-0987D8CA4EE4";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[112]" -type "float3" 0 0 -56.101074 ;
	setAttr ".tk[113]" -type "float3" 0 0 -56.101074 ;
	setAttr ".tk[114]" -type "float3" 0 0 -56.101074 ;
	setAttr ".tk[115]" -type "float3" 0 0 -56.101074 ;
	setAttr ".tk[116]" -type "float3" 0 0 -56.101074 ;
	setAttr ".tk[117]" -type "float3" 0 0 -56.101074 ;
	setAttr ".tk[118]" -type "float3" 0 0 -56.101074 ;
	setAttr ".tk[119]" -type "float3" 0 0 -56.101074 ;
	setAttr ".tk[120]" -type "float3" 0 0 -56.101074 ;
	setAttr ".tk[121]" -type "float3" 0 0 -56.101074 ;
createNode polySplit -n "polySplit11";
	rename -uid "CB4B8BE8-45FA-D875-D616-9C89476BD106";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483422 -2147483415;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "1EEA3D41-4C5B-3C35-DF13-5F837AD39C57";
	setAttr -s 3 ".e[0:2]"  1 0.69145697 1;
	setAttr -s 3 ".d[0:2]"  -2147483418 -2147483411 -2147483429;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "73488EBB-4DDD-91EC-6CA4-9BB5F7704B3E";
	setAttr -s 3 ".e[0:2]"  0 0.72311097 0;
	setAttr -s 3 ".d[0:2]"  -2147483426 -2147483411 -2147483429;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "66CBBF94-4714-4375-86BC-12AC3BE91554";
	setAttr -s 21 ".e[0:20]"  0.1 0.89999998 0.89999998 0.1 0.1 0.1 0.1
		 0.1 0.89999998 0.89999998 0.1 0.1 0.89999998 0.1 0.89999998 0.1 0.1 0.89999998 0.1
		 0.1 0.1;
	setAttr -s 21 ".d[0:20]"  -2147483628 -2147483527 -2147483415 -2147483408 -2147483405 -2147483421 
		-2147483555 -2147483627 -2147483463 -2147483604 -2147483502 -2147483625 -2147483550 -2147483577 -2147483436 -2147483532 -2147483624 -2147483495 
		-2147483623 -2147483470 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "CEB947E8-44BE-A653-839A-878F28B18736";
	setAttr -s 21 ".e[0:20]"  0.1 0.1 0.89999998 0.89999998 0.89999998
		 0.89999998 0.89999998 0.1 0.1 0.89999998 0.89999998 0.89999998 0.1 0.89999998 0.89999998
		 0.1 0.89999998 0.1 0.89999998 0.89999998 0.1;
	setAttr -s 21 ".d[0:20]"  -2147483626 -2147483462 -2147483615 -2147483556 -2147483422 -2147483406 
		-2147483409 -2147483414 -2147483526 -2147483616 -2147483471 -2147483611 -2147483494 -2147483612 -2147483533 -2147483435 -2147483578 -2147483549 
		-2147483613 -2147483503 -2147483626;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "95417B3F-4C06-CF9A-7C03-B1834E8DAADA";
	setAttr ".ics" -type "componentList" 14 "e[26:31]" "e[60]" "e[81]" "e[87]" "e[105]" "e[130]" "e[138]" "e[162]" "e[170]" "e[199]" "e[225]" "e[232]" "e[237:238]" "e[241]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit16";
	rename -uid "3F678184-4842-E4B8-27A9-BD90F5022AF7";
	setAttr -s 21 ".e[0:20]"  0.1 0.1 0.89999998 0.89999998 0.89999998
		 0.1 0.89999998 0.1 0.1 0.89999998 0.89999998 0.89999998 0.1 0.1 0.89999998 0.1 0.89999998
		 0.1 0.1 0.89999998 0.1;
	setAttr -s 21 ".d[0:20]"  -2147483603 -2147483501 -2147483487 -2147483486 -2147483448 -2147483379 
		-2147483421 -2147483460 -2147483596 -2147483484 -2147483483 -2147483482 -2147483522 -2147483599 -2147483479 -2147483411 -2147483369 -2147483601 
		-2147483602 -2147483476 -2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "B2242278-4A88-2850-DA82-56990DEF13CD";
	setAttr ".uopa" yes;
	setAttr -s 43 ".tk";
	setAttr ".tk[104]" -type "float3" -3.6574399 0 0 ;
	setAttr ".tk[105]" -type "float3" -3.6574414 0 0 ;
	setAttr ".tk[106]" -type "float3" -3.6574414 0 0 ;
	setAttr ".tk[107]" -type "float3" -3.6574399 0 0 ;
	setAttr ".tk[108]" -type "float3" -3.6574399 0 0 ;
	setAttr ".tk[109]" -type "float3" -3.6574395 0 0 ;
	setAttr ".tk[110]" -type "float3" -3.6574395 0 0 ;
	setAttr ".tk[111]" -type "float3" -3.6574399 0 0 ;
	setAttr ".tk[112]" -type "float3" -3.6574414 0 0 ;
	setAttr ".tk[113]" -type "float3" -3.6574414 0 0 ;
	setAttr ".tk[114]" -type "float3" -3.6574395 0 0 ;
	setAttr ".tk[115]" -type "float3" -3.6574399 0 0 ;
	setAttr ".tk[116]" -type "float3" -3.6574414 0 0 ;
	setAttr ".tk[117]" -type "float3" -3.6574399 0 0 ;
	setAttr ".tk[118]" -type "float3" -3.6574409 0 0 ;
	setAttr ".tk[119]" -type "float3" -3.6574395 0 0 ;
	setAttr ".tk[120]" -type "float3" -3.6574399 0 0 ;
	setAttr ".tk[121]" -type "float3" -3.6574414 0 0 ;
	setAttr ".tk[122]" -type "float3" -3.6574399 0 0 ;
	setAttr ".tk[123]" -type "float3" -3.6574395 0 0 ;
	setAttr ".tk[124]" -type "float3" 3.6574399 0 0 ;
	setAttr ".tk[125]" -type "float3" 3.6574395 0 0 ;
	setAttr ".tk[126]" -type "float3" 3.6574414 0 0 ;
	setAttr ".tk[127]" -type "float3" 3.6574414 0 0 ;
	setAttr ".tk[128]" -type "float3" 3.6574414 0 0 ;
	setAttr ".tk[129]" -type "float3" 3.6574414 0 0 ;
	setAttr ".tk[130]" -type "float3" 3.6574409 0 0 ;
	setAttr ".tk[131]" -type "float3" 3.6574395 0 0 ;
	setAttr ".tk[132]" -type "float3" 3.6574395 0 0 ;
	setAttr ".tk[133]" -type "float3" 3.6574414 0 0 ;
	setAttr ".tk[134]" -type "float3" 3.6574414 0 0 ;
	setAttr ".tk[135]" -type "float3" 3.6574414 0 0 ;
	setAttr ".tk[136]" -type "float3" 3.6574395 0 0 ;
	setAttr ".tk[137]" -type "float3" 3.6574414 0 0 ;
	setAttr ".tk[138]" -type "float3" 3.6574414 0 0 ;
	setAttr ".tk[139]" -type "float3" 3.6574399 0 0 ;
	setAttr ".tk[140]" -type "float3" 3.6574414 0 0 ;
	setAttr ".tk[141]" -type "float3" 3.6574395 0 0 ;
	setAttr ".tk[142]" -type "float3" 3.6574414 0 0 ;
	setAttr ".tk[143]" -type "float3" 3.6574414 0 0 ;
createNode polySplit -n "polySplit17";
	rename -uid "160CC4C9-468D-78D2-A01C-34AF9FF58023";
	setAttr -s 21 ".e[0:20]"  0.1 0.89999998 0.89999998 0.1 0.89999998
		 0.89999998 0.1 0.89999998 0.1 0.89999998 0.89999998 0.1 0.1 0.1 0.89999998 0.89999998
		 0.1 0.89999998 0.1 0.1 0.1;
	setAttr -s 21 ".d[0:20]"  -2147483487 -2147483363 -2147483364 -2147483476 -2147483346 -2147483347 
		-2147483369 -2147483349 -2147483479 -2147483351 -2147483352 -2147483482 -2147483483 -2147483484 -2147483356 -2147483357 -2147483421 -2147483359 
		-2147483448 -2147483486 -2147483487;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "9AD5B420-4651-B5BE-8206-5EAF836D3D66";
	setAttr ".dc" -type "componentList" 2 "f[94]" "f[96]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "7C1543B9-4D98-CE8E-F8D5-CE86A71D85BA";
	setAttr ".ics" -type "componentList" 3 "f[97:99]" "f[145]" "f[176]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 100 -26.101074 ;
	setAttr ".rs" 54077;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9225599765777588 5.9839914528252081 -26.10107421875 ;
	setAttr ".cbx" -type "double3" 1.9225599765777588 194.01600439227832 -26.10107421875 ;
	setAttr ".raf" no;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "42CBF2D1-451B-8D8A-48DC-83B348E28498";
	setAttr ".ics" -type "componentList" 3 "vtx[110]" "vtx[127]" "vtx[185:186]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "BB1F2773-491A-F8AE-DE50-B7896428E271";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[184]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[185]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[186]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[187]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[188]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[189]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[190]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[191]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[192]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[193]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[194]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[195]" -type "float3" 0 0 56.101074 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "74E61D9C-4B45-039D-FCDD-2D9957312081";
	setAttr ".ics" -type "componentList" 3 "vtx[105]" "vtx[132]" "vtx[186:187]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "95788AA4-42D3-74C3-EBC9-059D14F3818F";
	setAttr ".dc" -type "componentList" 3 "f[95]" "f[147]" "f[187:188]";
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "664BFB66-4AFC-71A0-63C7-F3A48E34B7CD";
	setAttr ".ics" -type "componentList" 2 "f[124]" "f[145]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 81.999977 -26.101074 ;
	setAttr ".rs" 55997;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -55.799999237060547 63.999959775579114 -26.10107421875 ;
	setAttr ".cbx" -type "double3" 55.799999237060547 99.999997922551771 -26.10107421875 ;
	setAttr ".raf" no;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "AFB15253-4BA7-4A41-AD53-4390E190889B";
	setAttr ".ics" -type "componentList" 10 "vtx[24]" "vtx[31:33]" "vtx[70]" "vtx[77]" "vtx[83:88]" "vtx[145:147]" "vtx[152:154]" "vtx[164:165]" "vtx[176:178]" "vtx[183:199]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "FBE99537-44E9-62A6-726D-EA8412789223";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[192]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[193]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[194]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[195]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[196]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[197]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[198]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[199]" -type "float3" 0 0 56.101074 ;
createNode polySplit -n "polySplit18";
	rename -uid "0D2F84D6-4983-8AA6-5BCB-A7B1C72DBB04";
	setAttr -s 4 ".e[0:3]"  0.5 0.5 0.5 0.5;
	setAttr -s 4 ".d[0:3]"  -2147483379 -2147483281 -2147483271 -2147483278;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "F7370B19-4EB7-13CA-F2E6-BAA438E853FD";
	setAttr -s 23 ".e[0:22]"  0.89999998 0.1 0.1 0.89999998 0.1 0.1 0.89999998
		 0.1 0.89999998 0.1 0.1 0.89999998 0.89999998 0.89999998 0.1 0.1 0.89999998 0.89999998
		 0.1 0.1 0.89999998 0.89999998 0.89999998;
	setAttr -s 23 ".d[0:22]"  -2147483604 -2147483502 -2147483584 -2147483529 -2147483585 -2147483576 
		-2147483370 -2147483412 -2147483600 -2147483578 -2147483523 -2147483598 -2147483494 -2147483597 -2147483581 -2147483455 -2147483420 -2147483287 
		-2147483285 -2147483382 -2147483457 -2147483595 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "BC77F9E9-4780-BE51-22D0-34AAC906ECA2";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483419 -2147483217 -2147483288 -2147483277 -2147483273;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "CD586F46-482A-55D2-74CA-5780CD6709FF";
	setAttr -s 6 ".e[0:5]"  0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 6 ".d[0:5]"  -2147483456 -2147483219 -2147483462 -2147483340 -2147483293 -2147483461;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "57302464-44F3-AB39-31E0-4FA94AAA9EF5";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483419 -2147483202;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "92935E55-4A5B-3C9B-B53B-E498C719AD13";
	setAttr -s 4 ".e[0:3]"  1 0.43928501 0.12143 0;
	setAttr -s 4 ".d[0:3]"  -2147483273 -2147483283 -2147483197 -2147483198;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit24";
	rename -uid "68332D44-4FD5-DFBD-8BAB-A8BC7BECF0E9";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483273 -2147483293;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	rename -uid "91F41E04-460D-FF20-2451-01B8AFE5877A";
	setAttr -s 11 ".e[0:10]"  0.1 0.89999998 0.1 0.89999998 0.89999998
		 0.89999998 0.89999998 0.89999998 0.1 0.1 0.1;
	setAttr -s 11 ".d[0:10]"  -2147483462 -2147483199 -2147483293 -2147483207 -2147483208 -2147483209 
		-2147483210 -2147483211 -2147483456 -2147483219 -2147483462;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "898E0BCE-4CAB-D355-A4E9-EC8FC22233C4";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483459 -2147483213 -2147483458 -2147483383 -2147483215 -2147483286 
		-2147483459;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "6F0275DE-45A2-D995-8C5C-BFB10F7E634D";
	setAttr -s 7 ".e[0:6]"  0.2 0.80000001 0.2 0.2 0.2 0.80000001 0.2;
	setAttr -s 7 ".d[0:6]"  -2147483459 -2147483163 -2147483458 -2147483383 -2147483215 -2147483159 
		-2147483459;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit28";
	rename -uid "15069564-43AD-1E7E-C3F8-8EB64EF8072E";
	setAttr -s 4 ".e[0:3]"  0.80000001 0.80000001 0.80000001 0.80000001;
	setAttr -s 4 ".d[0:3]"  -2147483262 -2147483261 -2147483260 -2147483259;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "AFC4F66C-4240-9115-E59B-5A87523994DE";
	setAttr ".dc" -type "componentList" 1 "vtx[228]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "98FBFD3C-443D-C1E5-E6A6-5EA9CABD9BA9";
	setAttr ".dc" -type "componentList" 1 "vtx[228]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "EE0AAFDF-4025-135D-E080-6EBDCDDE2098";
	setAttr ".dc" -type "componentList" 1 "vtx[228]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "96B3B5DD-4AA3-CF9E-6F04-6D9AB1EF80FD";
	setAttr ".dc" -type "componentList" 3 "f[192]" "f[229]" "f[233]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "87826863-4487-A84F-6FAB-33B8AF9FF65C";
	setAttr ".dc" -type "componentList" 1 "vtx[228]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "E24BBF86-4D8C-CAB5-2366-10A39BCB9E9C";
	setAttr ".dc" -type "componentList" 4 "f[185]" "f[193]" "f[196]" "f[229]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "0E0916DE-4A3A-DE40-CE4E-9CB9CB457554";
	setAttr ".ics" -type "componentList" 1 "e[384:385]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 193;
	setAttr ".sv2" 254;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "BBCF5D36-46EC-3CE2-F90B-7CAB4BD1ED68";
	setAttr ".ics" -type "componentList" 2 "e[364]" "e[374]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 130;
	setAttr ".sv2" 194;
	setAttr ".d" 1;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "699A0E92-4799-B6FC-0B67-D48324F8B9B0";
	setAttr ".dc" -type "componentList" 1 "f[188]";
createNode polySplit -n "polySplit29";
	rename -uid "57A8761E-467E-BE33-78C1-4395E5AD145D";
	setAttr -s 6 ".e[0:5]"  1 0.5 0.5 0.5 0.5 1;
	setAttr -s 6 ".d[0:5]"  -2147483282 -2147483346 -2147483294 -2147483453 -2147483454 -2147483382;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit30";
	rename -uid "6F58EC4E-4AF1-9939-9610-07B35AE39B0B";
	setAttr -s 4 ".e[0:3]"  1 0.56071502 0.56071502 1;
	setAttr -s 4 ".d[0:3]"  -2147483287 -2147483424 -2147483451 -2147483202;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit31";
	rename -uid "C38CCFC7-47C0-8B32-21BC-2882769CA1F1";
	setAttr -s 5 ".e[0:4]"  0.1 0.1 0.89999998 0.1 0.1;
	setAttr -s 5 ".d[0:4]"  -2147483451 -2147483424 -2147483196 -2147483202 -2147483451;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit32";
	rename -uid "6850E74C-4021-41FB-8333-FCBC6F896723";
	setAttr -s 4 ".e[0:3]"  0.1 0.1 0.89999998 0.1;
	setAttr -s 4 ".d[0:3]"  -2147483454 -2147483453 -2147483139 -2147483346;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit33";
	rename -uid "FB0B3643-486B-8BAB-8E3A-6A86E8623828";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483346 -2147483263;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit34";
	rename -uid "9FAA6211-4424-1F77-E9FD-B5924C6C11CE";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483266 -2147483118;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "846673D5-42B7-2A47-392C-F7B2676504A7";
	setAttr ".ics" -type "componentList" 1 "vtx[0:269]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".am" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "BF814F09-45DD-2963-AC7C-DB8045EC98B4";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplit -n "polySplit35";
	rename -uid "EC665869-4947-847E-A168-8FAF4A8957BD";
	setAttr -s 31 ".e[0:30]"  0.33333299 0.66666698 0.66666698 0.33333299
		 0.66666698 0.66666698 0.33333299 0.66666698 0.33333299 0.66666698 0.66666698 0.33333299
		 0.33333299 0.33333299 0.66666698 0.66666698 0.33333299 0.66666698 0.33333299 0.66666698
		 0.33333299 0.33333299 0.66666698 0.33333299 0.33333299 0.66666698 0.33333299 0.66666698
		 0.33333299 0.33333299 0.33333299;
	setAttr -s 31 ".d[0:30]"  -2147483565 -2147483488 -2147483489 -2147483530 -2147483477 -2147483478 
		-2147483375 -2147483412 -2147483561 -2147483480 -2147483481 -2147483559 -2147483495 -2147483558 -2147483485 -2147483119 -2147483127 -2147483448 
		-2147483423 -2147483129 -2147483121 -2147483286 -2147483283 -2147483144 -2147483262 -2147483383 -2147483452 -2147483133 -2147483114 -2147483556 
		-2147483565;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "E4C52D9B-45EB-859F-38BD-568DD4EECB3B";
	setAttr ".uopa" yes;
	setAttr -s 59 ".tk";
	setAttr ".tk[192]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[193]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[194]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[195]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[218]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[219]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[220]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[221]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[222]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[223]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[224]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[225]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[226]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[227]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[228]" -type "float3" 0 0 1.4566956 ;
	setAttr ".tk[229]" -type "float3" 0 0 1.4566975 ;
	setAttr ".tk[230]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[231]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[232]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[233]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[234]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[235]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[236]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[237]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[238]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[239]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[240]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[241]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[242]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[243]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[244]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[245]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[246]" -type "float3" 0 0 1.7111659 ;
	setAttr ".tk[247]" -type "float3" 0 0 1.7111659 ;
	setAttr ".tk[248]" -type "float3" 0 0 1.7111659 ;
	setAttr ".tk[249]" -type "float3" 0 0 1.7111659 ;
	setAttr ".tk[250]" -type "float3" 0 0 1.7111659 ;
	setAttr ".tk[251]" -type "float3" 0 0 1.7111659 ;
	setAttr ".tk[252]" -type "float3" 0 0 1.7111659 ;
	setAttr ".tk[253]" -type "float3" 0 0 1.7111659 ;
	setAttr ".tk[254]" -type "float3" 0 0 1.7111659 ;
	setAttr ".tk[255]" -type "float3" 0 0 1.7111659 ;
	setAttr ".tk[256]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[257]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[258]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[259]" -type "float3" 0 0 -1.9494457 ;
	setAttr ".tk[260]" -type "float3" 0 0 1.4566975 ;
	setAttr ".tk[261]" -type "float3" 0 0 1.4566975 ;
	setAttr ".tk[262]" -type "float3" 0 0 -0.7532444 ;
	setAttr ".tk[263]" -type "float3" 0 0 -0.7532444 ;
	setAttr ".tk[264]" -type "float3" 0 0 -0.7532444 ;
	setAttr ".tk[265]" -type "float3" 0 0 -0.7532444 ;
	setAttr ".tk[266]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[267]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[268]" -type "float3" 0 0 -1.0938601 ;
	setAttr ".tk[269]" -type "float3" 0 0 -1.0938601 ;
createNode polySplit -n "polySplit36";
	rename -uid "8BE3FB13-4AA4-91A5-1B21-36B05CC3B2BE";
	setAttr -s 31 ".e[0:30]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 31 ".d[0:30]"  -2147483109 -2147483488 -2147483489 -2147483106 -2147483477 -2147483478 
		-2147483103 -2147483412 -2147483101 -2147483480 -2147483481 -2147483098 -2147483097 -2147483096 -2147483485 -2147483119 -2147483093 -2147483448 
		-2147483091 -2147483129 -2147483089 -2147483088 -2147483283 -2147483086 -2147483085 -2147483383 -2147483083 -2147483133 -2147483081 -2147483080 
		-2147483109;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit37";
	rename -uid "987E71DD-47A9-6354-7C91-6397FDBDFB32";
	setAttr -s 31 ".e[0:30]"  0.89999998 0.89999998 0.1 0.1 0.1 0.89999998
		 0.1 0.89999998 0.1 0.1 0.89999998 0.1 0.1 0.89999998 0.1 0.89999998 0.1 0.89999998
		 0.89999998 0.1 0.1 0.1 0.89999998 0.89999998 0.1 0.89999998 0.1 0.89999998 0.89999998
		 0.1 0.89999998;
	setAttr -s 31 ".d[0:30]"  -2147483489 -2147483488 -2147483049 -2147483020 -2147483021 -2147483133 
		-2147483023 -2147483383 -2147483025 -2147483026 -2147483283 -2147483028 -2147483029 -2147483129 -2147483031 -2147483448 -2147483033 -2147483119 
		-2147483485 -2147483036 -2147483037 -2147483038 -2147483481 -2147483480 -2147483041 -2147483412 -2147483043 -2147483478 -2147483477 -2147483046 
		-2147483489;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit38";
	rename -uid "4E42E21C-455D-62B8-731A-FFB9047C7A58";
	setAttr -s 31 ".e[0:30]"  0.1 0.89999998 0.89999998 0.1 0.89999998
		 0.89999998 0.1 0.89999998 0.1 0.89999998 0.89999998 0.1 0.1 0.1 0.89999998 0.89999998
		 0.1 0.89999998 0.1 0.89999998 0.1 0.1 0.89999998 0.1 0.1 0.89999998 0.1 0.89999998
		 0.1 0.1 0.1;
	setAttr -s 31 ".d[0:30]"  -2147483109 -2147483048 -2147483047 -2147483106 -2147483045 -2147483044 
		-2147483103 -2147483042 -2147483101 -2147483040 -2147483039 -2147483098 -2147483097 -2147483096 -2147483035 -2147483034 -2147483093 -2147483032 
		-2147483091 -2147483030 -2147483089 -2147483088 -2147483027 -2147483086 -2147483085 -2147483024 -2147483083 -2147483022 -2147483081 -2147483080 
		-2147483109;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit39";
	rename -uid "BC641138-4BBB-4D2D-53FE-F7B0C35987E2";
	setAttr -s 31 ".e[0:30]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 31 ".d[0:30]"  -2147483049 -2147482988 -2147482989 -2147483046 -2147482961 -2147482962 
		-2147483043 -2147482964 -2147483041 -2147482966 -2147482967 -2147483038 -2147483037 -2147483036 -2147482971 -2147482972 -2147483033 -2147482974 
		-2147483031 -2147482976 -2147483029 -2147483028 -2147482979 -2147483026 -2147483025 -2147482982 -2147483023 -2147482984 -2147483021 -2147483020 
		-2147483049;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "2670D6CE-4C1D-5DCD-66FE-E9AF3850D45B";
	setAttr ".ics" -type "componentList" 2 "e[643:649]" "e[700:706]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "3998B5E8-4524-584D-4B55-55A0AC635A06";
	setAttr ".dc" -type "componentList" 1 "e[804]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "D379A9E2-4A0B-881B-A7D3-CC9B8610D575";
	setAttr ".dc" -type "componentList" 1 "e[796]";
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "225938B7-4CE4-0784-2C71-93BDDBFD6A81";
	setAttr ".ics" -type "componentList" 3 "vtx[314]" "vtx[336]" "vtx[392]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak7";
	rename -uid "DC464CFD-4A3F-DF32-F52D-96B333786139";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[314]" -type "float3" 0 0.9669342 0 ;
	setAttr ".tk[336]" -type "float3" 0 -0.9669342 0 ;
	setAttr ".tk[410]" -type "float3" 0 1.4901161e-08 0 ;
	setAttr ".tk[411]" -type "float3" 0 1.4901161e-08 0 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "B3FDB901-4C9D-C189-FEFE-1698F2F5FC78";
	setAttr ".ics" -type "componentList" 3 "vtx[315]" "vtx[335]" "vtx[397]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak8";
	rename -uid "8F2C4E57-4F0F-95B7-86FA-D78A6453BF2A";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[315]" -type "float3" 0 0.9669342 0 ;
	setAttr ".tk[335]" -type "float3" 1.1920929e-07 -0.9669342 0 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "6D98FF34-4DCA-8711-4E8E-FFB5F80EB55F";
	setAttr ".ics" -type "componentList" 3 "vtx[309:313]" "vtx[335:339]" "vtx[385:389]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "6F3BEDEB-4EB7-C562-93B9-32844940D94D";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[309]" -type "float3" 0 0.96692556 0 ;
	setAttr ".tk[310]" -type "float3" 0 0.96692556 0 ;
	setAttr ".tk[311]" -type "float3" 0 0.96692556 0 ;
	setAttr ".tk[312]" -type "float3" 0 0.96692556 0 ;
	setAttr ".tk[313]" -type "float3" 0 0.96692556 0 ;
	setAttr ".tk[335]" -type "float3" 0 -0.96692556 0 ;
	setAttr ".tk[336]" -type "float3" 0 -0.96692556 0 ;
	setAttr ".tk[337]" -type "float3" 0 -0.96692556 0 ;
	setAttr ".tk[338]" -type "float3" 0 -0.96692258 0 ;
	setAttr ".tk[339]" -type "float3" 0 -0.96692258 0 ;
	setAttr ".tk[385]" -type "float3" 0 4.05881e-07 0 ;
	setAttr ".tk[386]" -type "float3" 0 4.05881e-07 0 ;
	setAttr ".tk[387]" -type "float3" 0 4.05881e-07 0 ;
	setAttr ".tk[388]" -type "float3" 0 4.05881e-07 0 ;
	setAttr ".tk[389]" -type "float3" 0 4.05881e-07 0 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "EFA79E19-4324-77AC-4EDC-4F83438EFEC2";
	setAttr ".ics" -type "componentList" 3 "vtx[303:309]" "vtx[335:340]" "vtx[374:379]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "8E7AAE7D-434E-3D27-8B9A-0EB973C604F1";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[303]" -type "float3" 0 0.96692824 0 ;
	setAttr ".tk[304]" -type "float3" 0 0.96692824 0 ;
	setAttr ".tk[305]" -type "float3" 0 0.96692824 0 ;
	setAttr ".tk[306]" -type "float3" 0 0.96692824 0 ;
	setAttr ".tk[307]" -type "float3" 0 0.96692824 0 ;
	setAttr ".tk[308]" -type "float3" 0 0.96692824 0 ;
	setAttr ".tk[309]" -type "float3" 0 5.3615881e-06 0 ;
	setAttr ".tk[335]" -type "float3" 0 -0.96692824 0 ;
	setAttr ".tk[336]" -type "float3" 0 -0.96692395 0 ;
	setAttr ".tk[337]" -type "float3" 0 -0.96692824 0 ;
	setAttr ".tk[338]" -type "float3" 0 -0.96692395 0 ;
	setAttr ".tk[339]" -type "float3" 0 -0.96692395 0 ;
	setAttr ".tk[340]" -type "float3" 0 -0.96692824 0 ;
	setAttr ".tk[374]" -type "float3" 0 1.2034978e-06 0 ;
	setAttr ".tk[375]" -type "float3" 0 1.2034978e-06 0 ;
	setAttr ".tk[376]" -type "float3" 0 1.2034978e-06 0 ;
	setAttr ".tk[377]" -type "float3" 0 1.2034978e-06 0 ;
	setAttr ".tk[378]" -type "float3" 0 1.2034978e-06 0 ;
	setAttr ".tk[379]" -type "float3" 0 1.2034978e-06 0 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "0EF1E711-455E-598E-65C5-54B09E411931";
	setAttr ".ics" -type "componentList" 3 "vtx[300:302]" "vtx[324:326]" "vtx[365:367]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "4D407AD2-4783-1354-B97F-658C40880D72";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[300]" -type "float3" 0 0.96692705 0 ;
	setAttr ".tk[301]" -type "float3" 0 0.96692705 0 ;
	setAttr ".tk[302]" -type "float3" 0 0.96692705 0 ;
	setAttr ".tk[324]" -type "float3" 0 -0.96692383 0 ;
	setAttr ".tk[325]" -type "float3" 0 -0.96692383 0 ;
	setAttr ".tk[326]" -type "float3" 0 -0.96692705 0 ;
	setAttr ".tk[365]" -type "float3" 0 2.6892808e-06 0 ;
	setAttr ".tk[366]" -type "float3" 0 2.6892808e-06 0 ;
	setAttr ".tk[367]" -type "float3" 0 2.6892808e-06 0 ;
createNode deleteComponent -n "deleteComponent13";
	rename -uid "649D8254-4F7C-E245-4914-1EBCA094BC56";
	setAttr ".dc" -type "componentList" 1 "e[751]";
createNode polySplit -n "polySplit40";
	rename -uid "C09EE839-4FFA-4393-46F3-8593E92167A1";
	setAttr -s 31 ".e[0:30]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 31 ".d[0:30]"  -2147483112 -2147482984 -2147482983 -2147483109 -2147482981 -2147482980 
		-2147483106 -2147482978 -2147483104 -2147482976 -2147482975 -2147483101 -2147483100 -2147483099 -2147482971 -2147482970 -2147483096 -2147482968 
		-2147483094 -2147482966 -2147483092 -2147483091 -2147482963 -2147483089 -2147483088 -2147482960 -2147483086 -2147482958 -2147483084 -2147483083 
		-2147483112;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent14";
	rename -uid "A61AD2C2-4E0E-B1C9-7216-B2817A3E438C";
	setAttr ".dc" -type "componentList" 2 "e[580:586]" "e[707:713]";
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "54B8163F-4A12-7C04-BAE9-5DB5D48D6C1A";
	setAttr ".ics" -type "componentList" 2 "e[566:579]" "e[686:699]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent15";
	rename -uid "BC329CB7-47AB-C396-0241-0AA579FB6E93";
	setAttr ".dc" -type "componentList" 2 "vtx[271:276]" "vtx[319:324]";
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "11B1FFE7-41A7-DDC3-99EF-FCA96BA6C6F9";
	setAttr ".ics" -type "componentList" 4 "vtx[270:271]" "vtx[312:313]" "vtx[336]" "vtx[357]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak12";
	rename -uid "FECD9281-45CC-04F7-08AD-7C9077A9D3F3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[270]" -type "float3" 0 0.9669171 0 ;
	setAttr ".tk[271]" -type "float3" 0 0.96692955 0 ;
	setAttr ".tk[312]" -type "float3" 0 -0.96692955 0 ;
	setAttr ".tk[313]" -type "float3" 0 -0.9669171 0 ;
	setAttr ".tk[336]" -type "float3" 0 -4.2573456e-06 0 ;
	setAttr ".tk[357]" -type "float3" 0 4.2573456e-06 0 ;
createNode polySplit -n "polySplit41";
	rename -uid "4E7E4A7C-407C-F279-CE66-DA9C5A07EE12";
	setAttr -s 25 ".e[0:24]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 25 ".d[0:24]"  -2147483492 -2147483337 -2147483336 -2147483481 -2147483334 -2147483333 
		-2147483382 -2147483331 -2147483484 -2147483329 -2147483328 -2147483487 -2147483488 -2147483489 -2147483324 -2147483284 -2147483281 -2147483151 
		-2147483149 -2147483322 -2147483454 -2147483142 -2147483125 -2147483491 -2147483492;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent16";
	rename -uid "A2E0DC1C-469A-5D9C-51DC-4397560B472A";
	setAttr ".dc" -type "componentList" 15 "f[142]" "f[250]" "f[252:253]" "f[256]" "f[267]" "f[272:274]" "f[276:278]" "f[311:313]" "f[315:317]" "f[328:330]" "f[332:334]" "f[357:359]" "f[361:363]" "f[381:383]" "f[385:387]";
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "16ABCFD1-4625-81A9-D8BD-85A1B5DF60ED";
	setAttr ".ics" -type "componentList" 6 "f[142]" "f[266]" "f[299]" "f[310]" "f[333]" "f[351]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -28.861279 46.281315 -26.101074 ;
	setAttr ".rs" 35796;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -55.799995422363281 25.322629758489271 -26.10107421875 ;
	setAttr ".cbx" -type "double3" -1.9225599765777588 67.240003415715833 -26.10107421875 ;
	setAttr ".raf" no;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "F4ECBA61-49C5-0DED-C061-E8B16EA4CEB0";
	setAttr ".ics" -type "componentList" 1 "vtx[0:391]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak13";
	rename -uid "38A383DC-4A75-8B33-B2B5-CBB533056114";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[374]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[375]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[376]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[377]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[378]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[379]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[380]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[381]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[382]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[383]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[384]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[385]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[386]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[387]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[388]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[389]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[390]" -type "float3" 0 0 56.101074 ;
	setAttr ".tk[391]" -type "float3" 0 0 56.101074 ;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "FA09198D-40E5-1669-1EDC-C48BA7387F04";
	setAttr ".ics" -type "componentList" 2 "e[20]" "e[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 133.73016814378579 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 11;
	setAttr ".sv2" 13;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	rename -uid "B2B4669E-42D3-5F1A-E0FF-7C9B53D84448";
	setAttr ".ics" -type "componentList" 2 "e[19]" "e[23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 133.73016814378579 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 10;
	setAttr ".sv2" 14;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	rename -uid "BBC93AB1-4B49-E000-10B5-78A0649BFFB3";
	setAttr ".ics" -type "componentList" 2 "e[18]" "e[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 133.73016814378579 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 8;
	setAttr ".sv2" 15;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	rename -uid "3AFBFD6A-4A96-5C49-4958-7D93A391B90F";
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 133.73016814378579 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 0;
	setAttr ".sv2" 9;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode deleteComponent -n "deleteComponent17";
	rename -uid "91CCC148-465D-7D4B-19DC-879D8534882B";
	setAttr ".dc" -type "componentList" 1 "f[0:2]";
createNode polyDelEdge -n "polyDelEdge4";
	rename -uid "58143EF3-43BE-637B-6975-769CDF08C90D";
	setAttr ".ics" -type "componentList" 4 "e[10]" "e[12:13]" "e[15]" "e[23:24]";
	setAttr ".cv" yes;
createNode polyNormal -n "polyNormal1";
	rename -uid "8FBBA3FB-499C-A7F2-59E0-BDA3CE69CE4F";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polySplit -n "polySplit42";
	rename -uid "2517B17A-4A9F-C80C-4CB2-C0B6D912DF0B";
	setAttr -s 4 ".e[0:3]"  0.5 0.5 0.5 0.5;
	setAttr -s 4 ".d[0:3]"  -2147483647 -2147483639 -2147483637 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit43";
	rename -uid "E3436669-4EB5-90C8-D4E2-8D96BBBB4C03";
	setAttr -s 43 ".e[0:42]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 43 ".d[0:42]"  -2147483616 -2147483496 -2147483444 -2147483445 -2147483183 -2147483205 
		-2147483446 -2147483231 -2147483447 -2147483352 -2147483304 -2147483201 -2147483188 -2147483276 -2147482923 -2147483275 -2147483134 -2147483202 
		-2147483448 -2147483008 -2147482963 -2147483455 -2147483140 -2147483135 -2147483550 -2147483451 -2147483432 -2147483433 -2147483523 -2147483435 
		-2147483436 -2147482973 -2147483083 -2147483471 -2147482930 -2147483312 -2147483344 -2147483438 -2147483239 -2147483567 -2147483440 -2147483441 
		-2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "02AD7331-48D0-57EB-D2A2-4D8422F56F4D";
	setAttr ".ics" -type "componentList" 1 "f[0:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.010841325313329264 99.999997922551771 133.73016814378579 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 28.850439 54.81411 135.67963 ;
	setAttr ".rs" 35706;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" -1.5;
	setAttr ".cbn" -type "double3" 1.9117186512644295 45.628225156438489 107.62909392503579 ;
	setAttr ".cbx" -type "double3" 55.789157911747218 63.999997922551771 163.73016814378579 ;
createNode polyNormal -n "polyNormal2";
	rename -uid "4048EFCE-4074-BB37-5D27-6DB732EC7FD0";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode deleteComponent -n "deleteComponent20";
	rename -uid "13A05AF5-423E-2824-750A-C9959788B460";
	setAttr ".dc" -type "componentList" 1 "e[689]";
createNode deleteComponent -n "deleteComponent21";
	rename -uid "5AA598A7-4A5C-381F-3879-6C8C9D398516";
	setAttr ".dc" -type "componentList" 1 "e[689]";
createNode polySplit -n "polySplit44";
	rename -uid "DFB38F5A-4796-EB82-440D-8DB66204DDB0";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483450 -2147483406 -2147483405 -2147483404 -2147483434 -2147483402 
		-2147483401 -2147482974 -2147483084 -2147483437 -2147482933 -2147483313 -2147483343 -2147483399 -2147483240 -2147483439 -2147483397 -2147483396 
		-2147483442 -2147483443 -2147483411 -2147483410 -2147483229 -2147483296 -2147483288 -2147483282 -2147482924 -2147483292 -2147483041 -2147483076 
		-2147483030 -2147483111 -2147483450;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyBridgeEdge -n "polyBridgeEdge7";
	rename -uid "AD89EB6B-4346-A5D4-9FB3-549A4527B74B";
	setAttr ".ics" -type "componentList" 1 "e[78:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 51;
	setAttr ".sv2" 166;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	rename -uid "C1B1A129-4F4F-2F17-46DE-638F4A748E6B";
	setAttr ".ics" -type "componentList" 2 "e[236]" "e[258]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 144;
	setAttr ".sv2" 26;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge9";
	rename -uid "D8375926-41EB-E593-27DD-26B7B248E7F2";
	setAttr ".ics" -type "componentList" 2 "e[51]" "e[70]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 103;
	setAttr ".sv2" 44;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge10";
	rename -uid "8F3B5167-4434-D03C-F133-DE84E8291896";
	setAttr ".ics" -type "componentList" 2 "e[50]" "e[308]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 28;
	setAttr ".sv2" 26;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge11";
	rename -uid "81F0ED2E-4913-0477-D309-F6B6814CEF0B";
	setAttr ".ics" -type "componentList" 1 "e[158:159]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 29;
	setAttr ".sv2" 104;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge12";
	rename -uid "7215453D-4706-54DF-0E5B-8B9A8AB92C7F";
	setAttr ".ics" -type "componentList" 1 "e[114:115]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 75;
	setAttr ".sv2" 91;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge13";
	rename -uid "7B15501F-43AE-E05A-10B1-C1B147689A99";
	setAttr ".ics" -type "componentList" 2 "e[52]" "e[68]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 76;
	setAttr ".sv2" 40;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge14";
	rename -uid "00F00BE2-4A0C-5B64-8485-8E9E412885D3";
	setAttr ".ics" -type "componentList" 2 "e[57]" "e[193]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 117;
	setAttr ".sv2" 41;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge15";
	rename -uid "D8F7392B-44D8-DE98-4E71-329CDB73DC78";
	setAttr ".ics" -type "componentList" 2 "e[182]" "e[200]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 133;
	setAttr ".sv2" 124;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge16";
	rename -uid "2FB95FB2-40D3-471D-FAB4-129BFEA057C8";
	setAttr ".ics" -type "componentList" 1 "e[210:211]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 30;
	setAttr ".sv2" 134;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge17";
	rename -uid "56BDB3FC-49E4-67F8-EEDB-F3B34F39782B";
	setAttr ".ics" -type "componentList" 2 "e[54]" "e[317]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 32;
	setAttr ".sv2" 30;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge18";
	rename -uid "D302F94A-4CA9-799B-610B-CDBE0530AC9E";
	setAttr ".ics" -type "componentList" 2 "e[55]" "e[73]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 153;
	setAttr ".sv2" 47;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge19";
	rename -uid "4EFCFC78-4034-16B0-7D35-AA8E83B77834";
	setAttr ".ics" -type "componentList" 1 "e[244:245]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 152;
	setAttr ".sv2" 59;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge20";
	rename -uid "662369FD-4D7A-E494-6527-55A6B8B3DE92";
	setAttr ".ics" -type "componentList" 1 "e[95:96]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 63;
	setAttr ".sv2" 33;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge21";
	rename -uid "BB370E67-4A50-1FC5-9343-B7B75DA216AB";
	setAttr ".ics" -type "componentList" 2 "e[44]" "e[321]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 21;
	setAttr ".sv2" 33;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge22";
	rename -uid "AE7DCF4D-4DD2-9F97-F317-1C8E57468CBD";
	setAttr ".ics" -type "componentList" 2 "e[72]" "e[172]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 45;
	setAttr ".sv2" 126;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge23";
	rename -uid "B4B673A6-4B91-3DD0-41D4-D7A779E3ADED";
	setAttr ".ics" -type "componentList" 4 "e[72]" "e[172]" "e[198]" "e[203]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 123;
	setAttr ".sv2" 110;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge24";
	rename -uid "EC7683E6-47B8-995D-2886-62B8A67ED6F9";
	setAttr ".ics" -type "componentList" 2 "e[192]" "e[196]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 120;
	setAttr ".sv2" 39;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge25";
	rename -uid "2BE5BAB4-4329-8DD0-D838-7D86DD19C8CC";
	setAttr ".ics" -type "componentList" 2 "e[132]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 83;
	setAttr ".sv2" 95;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge26";
	rename -uid "81B30B17-4828-C0C7-E221-E4B64A0EF984";
	setAttr ".ics" -type "componentList" 2 "e[45]" "e[69]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 96;
	setAttr ".sv2" 42;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge27";
	rename -uid "A2E4740F-49B7-8432-9A31-2F96953910B3";
	setAttr ".ics" -type "componentList" 2 "e[75]" "e[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 61;
	setAttr ".sv2" 72;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge28";
	rename -uid "E4173ECA-426F-35EF-8B04-2B8CA2E615C2";
	setAttr ".ics" -type "componentList" 1 "e[330:331]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 83;
	setAttr ".sv2" 42;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge29";
	rename -uid "C3FFF411-4CFD-303F-055E-CEBD7A687B30";
	setAttr ".ics" -type "componentList" 2 "e[151]" "e[162]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 23;
	setAttr ".sv2" 107;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge30";
	rename -uid "96733FC2-4B76-E8D6-584D-5981CDC8EDF9";
	setAttr ".ics" -type "componentList" 2 "e[48]" "e[71]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 71;
	setAttr ".sv2" 43;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge31";
	rename -uid "ADBA9000-481D-B319-4B03-E2B4C8B84AFD";
	setAttr ".ics" -type "componentList" 2 "e[47]" "e[335]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 25;
	setAttr ".sv2" 23;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge32";
	rename -uid "E0AD4909-4913-0AA7-DD2E-FCB7333FD2C5";
	setAttr ".ics" -type "componentList" 2 "e[312]" "e[314]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 91;
	setAttr ".sv2" 41;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge33";
	rename -uid "9C62C401-46CE-8954-DB62-63B1E2560B5E";
	setAttr ".ics" -type "componentList" 2 "e[149]" "e[241]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 92;
	setAttr ".sv2" 149;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge34";
	rename -uid "8976846A-4FAD-4A34-8197-259CE0099C92";
	setAttr ".ics" -type "componentList" 2 "e[76]" "e[240]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 49;
	setAttr ".sv2" 148;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge35";
	rename -uid "81F153F7-4DB7-1CCB-CF4F-C58FDA171EC4";
	setAttr ".ics" -type "componentList" 2 "e[327]" "e[329]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 39;
	setAttr ".sv2" 95;
	setAttr ".d" 1;
createNode polyTweak -n "polyTweak14";
	rename -uid "D4E6437F-448A-A2A8-A159-7885F15C56D2";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[108]" -type "float3" 0 0.96693462 0 ;
	setAttr ".tk[109]" -type "float3" 0 0.96691608 0 ;
	setAttr ".tk[118]" -type "float3" 0 0.96694136 0 ;
	setAttr ".tk[119]" -type "float3" 0 0.96690947 0 ;
	setAttr ".tk[120]" -type "float3" 0 -0.96694136 0 ;
	setAttr ".tk[121]" -type "float3" 0 -0.96690261 0 ;
	setAttr ".tk[122]" -type "float3" 0 -0.96690726 0 ;
	setAttr ".tk[123]" -type "float3" 0 -0.96693462 0 ;
createNode polyBridgeEdge -n "polyBridgeEdge36";
	rename -uid "3BC967F8-44DC-CE7A-793A-9CA2F6A29ECC";
	setAttr ".ics" -type "componentList" 2 "e[74]" "e[150]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 46;
	setAttr ".sv2" 94;
	setAttr ".d" 1;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "71E36B9E-423F-ACDF-D410-878579E7AD71";
	setAttr ".ics" -type "componentList" 1 "vtx[0:180]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".am" yes;
createNode polyBridgeEdge -n "polyBridgeEdge37";
	rename -uid "0FC1F62D-4F77-3668-7451-2F81D31FFC9D";
	setAttr ".ics" -type "componentList" 2 "e[305]" "e[333]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".sv1" 51;
	setAttr ".sv2" 71;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge38";
	rename -uid "9E9C81B2-4360-3E62-6BA0-96AD4398CD41";
	setAttr ".ics" -type "componentList" 2 "e[104]" "e[160]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".sv1" 60;
	setAttr ".sv2" 105;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge39";
	rename -uid "754011DB-45C5-3229-FC2C-9288D1912E75";
	setAttr ".ics" -type "componentList" 2 "e[87]" "e[161]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".sv1" 50;
	setAttr ".sv2" 106;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge40";
	rename -uid "1CCF65E1-4310-8E9B-459A-2A865BE59120";
	setAttr ".ics" -type "componentList" 12 "e[105]" "e[112:113]" "e[140]" "e[175:176]" "e[183]" "e[199]" "e[210]" "e[318]" "e[320]" "e[330]" "e[337]" "e[340]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".sv1" 61;
	setAttr ".sv2" 59;
	setAttr ".d" 1;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "1D3E7D3F-4D1B-5E85-5E81-718701FEA271";
	setAttr ".ics" -type "componentList" 1 "vtx[0:190]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 122.22306715165463 1;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent22";
	rename -uid "C00D8D1D-43D2-2D6E-627D-4599B1DD1F4F";
	setAttr ".dc" -type "componentList" 17 "f[0:2]" "f[4]" "f[11:12]" "f[16]" "f[20:22]" "f[29:30]" "f[41:49]" "f[54:59]" "f[65:68]" "f[74:77]" "f[83:87]" "f[93:95]" "f[120:132]" "f[146:157]" "f[161:162]" "f[164:165]" "f[168:175]";
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "1AA9049E-44F5-0448-971B-CEA1A6D547F5";
	setAttr ".ics" -type "componentList" 10 "e[169:179]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217:218]";
createNode polyCloseBorder -n "polyCloseBorder3";
	rename -uid "C720AD12-4CC1-6D45-1826-848C9033267F";
	setAttr ".ics" -type "componentList" 5 "e[123:135]" "e[155]" "e[157]" "e[159]" "e[166:172]";
createNode polySplit -n "polySplit45";
	rename -uid "D9F8DB73-4555-2A90-4EB2-C6A4A4EAD58D";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483515 -2147483493;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit46";
	rename -uid "86EA56E9-4728-6499-55EB-C996A91DB1D3";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483491 -2147483516;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit47";
	rename -uid "DD11B794-43AC-080F-789B-6B9611156F0F";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483489 -2147483517;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit48";
	rename -uid "49427CA8-432D-C511-8957-CBB7495BA990";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483477 -2147483518;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit49";
	rename -uid "76BA7FBD-43B4-5CE6-B883-96963562C7DA";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483479 -2147483521;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit50";
	rename -uid "F33E7447-4798-B286-6CB5-898B025B5550";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483478 -2147483519;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit51";
	rename -uid "CADBFA4C-44DB-4F9F-4D19-9B86ADDE4F35";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483480 -2147483522;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit52";
	rename -uid "C40C108C-405A-9981-47D0-8EA475A4A429";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483481 -2147483523;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit53";
	rename -uid "9C681E98-444D-D9F2-7355-A2B286768BFA";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483524 -2147483482;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit54";
	rename -uid "4CAD522A-403D-3ABB-1743-6394BC853A12";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483470 -2147483447;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit55";
	rename -uid "0A33FD1C-4CB3-61F9-5873-C2A0AEC33701";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483445 -2147483471;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit56";
	rename -uid "0DE2E376-480B-1B2E-59E3-F4B7526F7DCD";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483472 -2147483443;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit57";
	rename -uid "8E06B892-4581-7E1E-B169-D4B351C7FDE7";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483473 -2147483431;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit58";
	rename -uid "B806A5DF-4044-43C6-2F6B-7794D4B3DFF4";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483474 -2147483433;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit59";
	rename -uid "66D924B1-4B76-69D6-EA15-FDA88FEF88A0";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483435 -2147483476;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit60";
	rename -uid "144739DC-4A16-7D07-A58D-5CBC65D0A2F9";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483477 -2147483437;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit61";
	rename -uid "2C241984-467E-4321-FDD5-C980944EF977";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483439 -2147483478;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit62";
	rename -uid "ECCA7D6C-4D52-0FB2-E0AA-76B0550C41F5";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483479 -2147483441;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge5";
	rename -uid "310DC916-488E-A500-5CF2-5092C2E177FA";
	setAttr ".ics" -type "componentList" 3 "e[112:114]" "e[130]" "e[162]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge6";
	rename -uid "39459697-4186-7D80-84EE-428B669CD3AB";
	setAttr ".ics" -type "componentList" 1 "e[115:118]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent23";
	rename -uid "9F7B50B5-4D4C-2CB6-7077-EFA4C04D3EAF";
	setAttr ".dc" -type "componentList" 8 "f[4:7]" "f[12:13]" "f[18]" "f[32:33]" "f[38]" "f[43]" "f[48]" "f[88:97]";
createNode deleteComponent -n "deleteComponent24";
	rename -uid "4694CF5A-460C-E4AE-AA46-089031B6F6AA";
	setAttr ".dc" -type "componentList" 2 "f[40:51]" "f[66:75]";
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "180B93EB-454A-B050-E890-ACA3A2F268DC";
	setAttr ".ics" -type "componentList" 1 "vtx[0:87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 99.999997922551771 92.627876842071615 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak15";
	rename -uid "0C3F6075-4A61-C396-B397-F4978389136E";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[66]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[67]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[68]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[69]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[70]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[71]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[72]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[73]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[74]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[75]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[76]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[77]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[78]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[79]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[80]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[81]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[82]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[83]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[84]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[85]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[86]" -type "float3" -1.92256 0 0 ;
	setAttr ".tk[87]" -type "float3" -1.92256 0 0 ;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "BA7B1DA7-4BA2-2000-D296-BD8F5A1E3666";
	setAttr ".ics" -type "componentList" 1 "vtx[0:109]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 85.059328374633424 99.999997922551771 92.627876753037029 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak16";
	rename -uid "23C85716-4F0E-C611-E103-37A5B5276298";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[88]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[89]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[90]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[91]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[92]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[93]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[94]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[95]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[96]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[97]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[98]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[99]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[100]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[101]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[102]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[103]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[104]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[105]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[106]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[107]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[108]" -type "float3" 1.9225595 0 0 ;
	setAttr ".tk[109]" -type "float3" 1.9225595 0 0 ;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "604E5BDA-40E9-4611-8E13-2DA9045C07E7";
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
	setAttr -s 8 ".dsm";
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
connectAttr "polySplit44.out" "WardrobeShape.i";
connectAttr "polyCylinder1.out" "HangerBar1Shape.i";
connectAttr "polyNormal2.out" "DrawerShape1.i";
connectAttr "polyMergeVert15.out" "DoorRightShape.i";
connectAttr "polyMergeVert14.out" "DoorLeftShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeEdge1.ip";
connectAttr "WardrobeShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak2.out" "polyCloseBorder1.ip";
connectAttr "polyExtrudeEdge1.out" "polyTweak2.ip";
connectAttr "polyCloseBorder1.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polyDelEdge1.ip";
connectAttr "polyTweak3.out" "polySplit16.ip";
connectAttr "polyDelEdge1.out" "polyTweak3.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyExtrudeFace1.ip";
connectAttr "WardrobeShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak4.out" "polyMergeVert1.ip";
connectAttr "WardrobeShape.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak4.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "WardrobeShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyExtrudeFace2.ip";
connectAttr "WardrobeShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak5.out" "polyMergeVert3.ip";
connectAttr "WardrobeShape.wm" "polyMergeVert3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak5.ip";
connectAttr "polyMergeVert3.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polySplit28.ip";
connectAttr "polySplit28.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polyBridgeEdge1.ip";
connectAttr "WardrobeShape.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyBridgeEdge2.ip";
connectAttr "WardrobeShape.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "polySplit29.ip";
connectAttr "polySplit29.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polySplit32.ip";
connectAttr "polySplit32.out" "polySplit33.ip";
connectAttr "polySplit33.out" "polySplit34.ip";
connectAttr "polySplit34.out" "polyMergeVert4.ip";
connectAttr "WardrobeShape.wm" "polyMergeVert4.mp";
connectAttr "polyTweak6.out" "polySplit35.ip";
connectAttr "polyMergeVert4.out" "polyTweak6.ip";
connectAttr "polySplit35.out" "polySplit36.ip";
connectAttr "polySplit36.out" "polySplit37.ip";
connectAttr "polySplit37.out" "polySplit38.ip";
connectAttr "polySplit38.out" "polySplit39.ip";
connectAttr "polySplit39.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "polyTweak7.out" "polyMergeVert5.ip";
connectAttr "WardrobeShape.wm" "polyMergeVert5.mp";
connectAttr "deleteComponent12.og" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyMergeVert6.ip";
connectAttr "WardrobeShape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyMergeVert7.ip";
connectAttr "WardrobeShape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyMergeVert8.ip";
connectAttr "WardrobeShape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert7.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyMergeVert9.ip";
connectAttr "WardrobeShape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert8.out" "polyTweak11.ip";
connectAttr "polyMergeVert9.out" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "polySplit40.ip";
connectAttr "polySplit40.out" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "polyDelEdge3.ip";
connectAttr "polyDelEdge3.out" "deleteComponent15.ig";
connectAttr "polyTweak12.out" "polyMergeVert10.ip";
connectAttr "WardrobeShape.wm" "polyMergeVert10.mp";
connectAttr "deleteComponent15.og" "polyTweak12.ip";
connectAttr "polyMergeVert10.out" "polySplit41.ip";
connectAttr "polySplit41.out" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "polyExtrudeFace3.ip";
connectAttr "WardrobeShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak13.out" "polyMergeVert11.ip";
connectAttr "WardrobeShape.wm" "polyMergeVert11.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak13.ip";
connectAttr "|Wardrobe|Drawer1|polySurfaceShape1.o" "polyBridgeEdge3.ip";
connectAttr "DrawerShape1.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "polyBridgeEdge4.ip";
connectAttr "DrawerShape1.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "polyBridgeEdge5.ip";
connectAttr "DrawerShape1.wm" "polyBridgeEdge5.mp";
connectAttr "polyBridgeEdge5.out" "polyBridgeEdge6.ip";
connectAttr "DrawerShape1.wm" "polyBridgeEdge6.mp";
connectAttr "polyBridgeEdge6.out" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "polyDelEdge4.ip";
connectAttr "polyDelEdge4.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polySplit42.ip";
connectAttr "polyMergeVert11.out" "polySplit43.ip";
connectAttr "polySplit42.out" "polyExtrudeFace4.ip";
connectAttr "DrawerShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyNormal2.ip";
connectAttr "polySplit43.out" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "polySplit44.ip";
connectAttr "|Wardrobe|DoorRight|polySurfaceShape2.o" "polyBridgeEdge7.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge7.mp";
connectAttr "polyBridgeEdge7.out" "polyBridgeEdge8.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge8.mp";
connectAttr "polyBridgeEdge8.out" "polyBridgeEdge9.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge9.mp";
connectAttr "polyBridgeEdge9.out" "polyBridgeEdge10.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge10.mp";
connectAttr "polyBridgeEdge10.out" "polyBridgeEdge11.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge11.mp";
connectAttr "polyBridgeEdge11.out" "polyBridgeEdge12.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge12.mp";
connectAttr "polyBridgeEdge12.out" "polyBridgeEdge13.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge13.mp";
connectAttr "polyBridgeEdge13.out" "polyBridgeEdge14.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge14.mp";
connectAttr "polyBridgeEdge14.out" "polyBridgeEdge15.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge15.mp";
connectAttr "polyBridgeEdge15.out" "polyBridgeEdge16.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge16.mp";
connectAttr "polyBridgeEdge16.out" "polyBridgeEdge17.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge17.mp";
connectAttr "polyBridgeEdge17.out" "polyBridgeEdge18.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge18.mp";
connectAttr "polyBridgeEdge18.out" "polyBridgeEdge19.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge19.mp";
connectAttr "polyBridgeEdge19.out" "polyBridgeEdge20.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge20.mp";
connectAttr "polyBridgeEdge20.out" "polyBridgeEdge21.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge21.mp";
connectAttr "polyBridgeEdge21.out" "polyBridgeEdge22.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge22.mp";
connectAttr "polyBridgeEdge22.out" "polyBridgeEdge23.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge23.mp";
connectAttr "polyBridgeEdge23.out" "polyBridgeEdge24.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge24.mp";
connectAttr "polyBridgeEdge24.out" "polyBridgeEdge25.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge25.mp";
connectAttr "polyBridgeEdge25.out" "polyBridgeEdge26.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge26.mp";
connectAttr "polyBridgeEdge26.out" "polyBridgeEdge27.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge27.mp";
connectAttr "polyBridgeEdge27.out" "polyBridgeEdge28.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge28.mp";
connectAttr "polyBridgeEdge28.out" "polyBridgeEdge29.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge29.mp";
connectAttr "polyBridgeEdge29.out" "polyBridgeEdge30.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge30.mp";
connectAttr "polyBridgeEdge30.out" "polyBridgeEdge31.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge31.mp";
connectAttr "polyBridgeEdge31.out" "polyBridgeEdge32.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge32.mp";
connectAttr "polyBridgeEdge32.out" "polyBridgeEdge33.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge33.mp";
connectAttr "polyBridgeEdge33.out" "polyBridgeEdge34.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge34.mp";
connectAttr "polyTweak14.out" "polyBridgeEdge35.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge35.mp";
connectAttr "polyBridgeEdge34.out" "polyTweak14.ip";
connectAttr "polyBridgeEdge35.out" "polyBridgeEdge36.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge36.mp";
connectAttr "polyBridgeEdge36.out" "polyMergeVert12.ip";
connectAttr "DoorRightShape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyBridgeEdge37.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge37.mp";
connectAttr "polyBridgeEdge37.out" "polyBridgeEdge38.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge38.mp";
connectAttr "polyBridgeEdge38.out" "polyBridgeEdge39.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge39.mp";
connectAttr "polyBridgeEdge39.out" "polyBridgeEdge40.ip";
connectAttr "DoorRightShape.wm" "polyBridgeEdge40.mp";
connectAttr "polyBridgeEdge40.out" "polyMergeVert13.ip";
connectAttr "DoorRightShape.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert13.out" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "polyCloseBorder2.ip";
connectAttr "polySurfaceShape3.o" "polyCloseBorder3.ip";
connectAttr "polyCloseBorder3.out" "polySplit45.ip";
connectAttr "polySplit45.out" "polySplit46.ip";
connectAttr "polySplit46.out" "polySplit47.ip";
connectAttr "polySplit47.out" "polySplit48.ip";
connectAttr "polySplit48.out" "polySplit49.ip";
connectAttr "polySplit49.out" "polySplit50.ip";
connectAttr "polySplit50.out" "polySplit51.ip";
connectAttr "polySplit51.out" "polySplit52.ip";
connectAttr "polySplit52.out" "polySplit53.ip";
connectAttr "polyCloseBorder2.out" "polySplit54.ip";
connectAttr "polySplit54.out" "polySplit55.ip";
connectAttr "polySplit55.out" "polySplit56.ip";
connectAttr "polySplit56.out" "polySplit57.ip";
connectAttr "polySplit57.out" "polySplit58.ip";
connectAttr "polySplit58.out" "polySplit59.ip";
connectAttr "polySplit59.out" "polySplit60.ip";
connectAttr "polySplit60.out" "polySplit61.ip";
connectAttr "polySplit61.out" "polySplit62.ip";
connectAttr "polySplit62.out" "polyDelEdge5.ip";
connectAttr "polySplit53.out" "polyDelEdge6.ip";
connectAttr "polyDelEdge5.out" "deleteComponent23.ig";
connectAttr "polyDelEdge6.out" "deleteComponent24.ig";
connectAttr "polyTweak15.out" "polyMergeVert14.ip";
connectAttr "DoorLeftShape.wm" "polyMergeVert14.mp";
connectAttr "deleteComponent24.og" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyMergeVert15.ip";
connectAttr "DoorRightShape.wm" "polyMergeVert15.mp";
connectAttr "deleteComponent23.og" "polyTweak16.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "WardrobeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HangerBar1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HangerBarShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DrawerShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DrawerShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DrawerShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DoorRightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DoorLeftShape.iog" ":initialShadingGroup.dsm" -na;
// End of Wardrobe.ma
