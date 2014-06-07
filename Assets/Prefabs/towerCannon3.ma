//Maya ASCII 2014 scene
//Name: towerCannon3.ma
//Last modified: Fri, Jun 06, 2014 06:18:24 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -60.151429828461197 13.729877127472097 -26.433612560685351 ;
	setAttr ".r" -type "double3" -9.9383527297820784 -111.39999999997434 360.00000000000517 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 71.792324203067778;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.7499995231628418 2.4691593647003174 -0.5000002384185791 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
createNode transform -n "transform8" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform8";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 12 0 -3 ;
createNode transform -n "transform7" -p "pCube2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform7";
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
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -1.4937493 0 ;
	setAttr ".pt[1]" -type "float3" 0 -1.4937493 0 ;
	setAttr ".pt[2]" -type "float3" 0 1.4263448 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.4263448 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.4263446 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.4263446 0 ;
	setAttr ".pt[6]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".pt[7]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".pt[10]" -type "float3" 0 -1.4937493 0 ;
	setAttr ".pt[11]" -type "float3" 0 -1.4937493 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 19 3 0 ;
createNode transform -n "transform6" -p "pCube3";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform6";
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
	setAttr -s 11 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 2.3841858e-007 ;
	setAttr ".pt[1]" -type "float3" 0 0 2.3841858e-007 ;
	setAttr ".pt[2]" -type "float3" -4.0795279 0 2.3841858e-007 ;
	setAttr ".pt[3]" -type "float3" 0 0 2.3841858e-007 ;
	setAttr ".pt[4]" -type "float3" -4.0795283 0 0 ;
	setAttr ".pt[6]" -type "float3" 2.3841858e-007 0 0 ;
	setAttr ".pt[8]" -type "float3" 2.3841858e-007 0 0 ;
	setAttr ".pt[10]" -type "float3" -4.0795288 0 -1.2284501 ;
	setAttr ".pt[11]" -type "float3" 0 0 -1.2284501 ;
	setAttr ".pt[12]" -type "float3" -4.0795283 0 -1.2284501 ;
	setAttr ".pt[13]" -type "float3" 0 0 -1.2284501 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" 16 0 3 ;
createNode transform -n "transform5" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform5";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" 14 2 3 ;
createNode transform -n "transform4" -p "pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform4";
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
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[2]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[4]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[5]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[6]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[7]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[8]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[9]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[10]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[12]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[14]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[17]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" 18 -2 3 ;
createNode transform -n "transform3" -p "pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform3";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" 16 4 2 ;
createNode transform -n "transform2" -p "pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[2]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[4]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[5]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[6]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[7]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[8]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[9]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[10]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[12]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[14]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[17]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -7.50000048 -1 1 7.5 -1 1 -7.50000048 1 1
		 7.5 1 1 -7.5 1 -1.000000119209 7.5 1 -1.000000119209 -7.5 -1 -1.000000476837 7.5 -1 -1.000000476837;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube8";
	setAttr ".t" -type "double3" 18 6 2 ;
createNode transform -n "transform1" -p "pCube8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[2]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[4]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[5]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[6]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[7]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[8]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[9]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[10]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[12]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[14]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".pt[17]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -7.50000048 -1 1 7.5 -1 1 -7.50000048 1 1
		 7.5 1 1 -7.5 1 -1.000000119209 7.5 1 -1.000000119209 -7.5 -1 -1.000000476837 7.5 -1 -1.000000476837;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface1";
createNode transform -n "polySurface2" -p "polySurface1";
createNode transform -n "transform20" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform20";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface3" -p "polySurface1";
createNode transform -n "transform19" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform19";
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
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" -4.2915344e-006 0 0 ;
	setAttr ".pt[2]" -type "float3" -4.2915344e-006 2.3638577 0 ;
	setAttr ".pt[3]" -type "float3" 0 2.3638577 0 ;
	setAttr ".pt[4]" -type "float3" -4.2915344e-006 2.3638577 0 ;
	setAttr ".pt[5]" -type "float3" 0 2.3638577 0 ;
	setAttr ".pt[6]" -type "float3" 0 1.4324551 0 ;
	setAttr ".pt[7]" -type "float3" 0 1.4324551 0 ;
	setAttr ".pt[8]" -type "float3" 0 1.4324551 0 ;
	setAttr ".pt[9]" -type "float3" 0 1.4324551 0 ;
	setAttr ".pt[10]" -type "float3" -4.2915344e-006 0 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface4" -p "polySurface1";
createNode transform -n "transform18" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform18";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface5" -p "polySurface1";
createNode transform -n "transform17" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform17";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface6" -p "polySurface1";
createNode transform -n "transform16" -p "polySurface6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform16";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface7" -p "polySurface1";
createNode transform -n "transform15" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform15";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface8" -p "polySurface1";
	setAttr ".t" -type "double3" 0 0 2 ;
createNode transform -n "transform14" -p "polySurface8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform14";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface9" -p "polySurface1";
	setAttr ".t" -type "double3" 0 0 2 ;
createNode transform -n "transform13" -p "polySurface9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform13";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform9" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform9";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface10" -p "polySurface1";
	setAttr ".t" -type "double3" 2.9039404032329781 0 -2 ;
createNode transform -n "transform12" -p "polySurface10";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.375 0.375 0.375 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.625 0.875 0.375 0.875 0.625 1 0.375 1 0.75 0 0.875 0 0.875 0.25 0.75 0.25 0.125
		 0 0.25 0 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 8.7113829 0 0 ;
	setAttr ".pt[2]" -type "float3" 8.7113829 2.3638577 0 ;
	setAttr ".pt[3]" -type "float3" 0 2.3638577 0 ;
	setAttr ".pt[4]" -type "float3" 8.7113829 2.3638577 0 ;
	setAttr ".pt[5]" -type "float3" 0 2.3638577 0 ;
	setAttr ".pt[6]" -type "float3" 0 1.4324551 0 ;
	setAttr ".pt[7]" -type "float3" 0 1.4324551 0 ;
	setAttr ".pt[8]" -type "float3" 0 1.4324551 0 ;
	setAttr ".pt[9]" -type "float3" 0 1.4324551 0 ;
	setAttr ".pt[10]" -type "float3" 8.7113829 0 0 ;
	setAttr -s 12 ".vt[0:11]"  4.5 -2.49374914 -2 19.5 -2.49374914 -2 4.5 2.42634487 -2
		 19.5 2.42634487 -2 4.5 2.42634463 -3 19.5 2.42634463 -3 4.5 1.000000119209 -4 19.5 1.000000119209 -4
		 4.5 -1 -4 19.5 -1 -4 4.5 -2.49374914 -3 19.5 -2.49374914 -3;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 1 6 7 0 8 9 0 10 11 1 0 2 0
		 1 3 0 2 4 0 3 5 0 4 6 0 5 7 0 6 8 0 7 9 0 8 10 0 9 11 0 10 0 0 11 1 0 11 5 1 10 4 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 7 -2 -7
		mu 0 4 0 1 2 3
		f 4 1 9 -3 -9
		mu 0 4 3 2 4 5
		f 4 2 11 -4 -11
		mu 0 4 5 4 6 7
		f 4 3 13 -5 -13
		mu 0 4 7 6 8 9
		f 4 4 15 -6 -15
		mu 0 4 9 8 10 11
		f 4 5 17 -1 -17
		mu 0 4 11 10 12 13
		f 4 -16 -14 -12 -19
		mu 0 4 14 15 16 17
		f 4 -18 18 -10 -8
		mu 0 4 1 14 17 2
		f 4 14 19 10 12
		mu 0 4 18 19 20 21
		f 4 16 6 8 -20
		mu 0 4 19 0 3 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface11" -p "polySurface1";
createNode transform -n "transform11" -p "polySurface11";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  8.5 3 3 23.5 3 3 8.5 5 3 23.5 5 3 8.5 5 0.99999988
		 23.5 5 0.99999988 8.5 3 0.99999952 23.5 3 0.99999952;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface12" -p "polySurface1";
createNode transform -n "transform10" -p "polySurface12";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  10.5 5 3 25.5 5 3 10.5 7 3 25.5 7 3 10.5 7 0.99999988
		 25.5 7 0.99999988 10.5 5 0.99999952 25.5 5 0.99999952;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface13";
createNode transform -n "polySurface14" -p "polySurface13";
createNode transform -n "transform32" -p "polySurface14";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform32";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface15" -p "polySurface13";
createNode transform -n "transform31" -p "polySurface15";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform31";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface16" -p "polySurface13";
createNode transform -n "transform30" -p "polySurface16";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform30";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface17" -p "polySurface13";
createNode transform -n "transform29" -p "polySurface17";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform29";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface18" -p "polySurface13";
createNode transform -n "transform28" -p "polySurface18";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform28";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface19" -p "polySurface13";
createNode transform -n "transform27" -p "polySurface19";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform27";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface20" -p "polySurface13";
createNode transform -n "transform26" -p "polySurface20";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform26";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface21" -p "polySurface13";
createNode transform -n "transform25" -p "polySurface21";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform25";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface22" -p "polySurface13";
createNode transform -n "transform24" -p "polySurface22";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform24";
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
	setAttr -s 9 ".pt";
	setAttr ".pt[1]" -type "float3" 2.788095 0 0 ;
	setAttr ".pt[3]" -type "float3" 2.788095 0 0 ;
	setAttr ".pt[4]" -type "float3" 0 3.1481166 0 ;
	setAttr ".pt[5]" -type "float3" 2.788095 3.1481166 0 ;
	setAttr ".pt[6]" -type "float3" 0 3.1481166 -4.7683716e-007 ;
	setAttr ".pt[7]" -type "float3" 0 3.1481166 -4.7683716e-007 ;
	setAttr ".pt[8]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[9]" -type "float3" 0 0 -4.7683716e-007 ;
	setAttr ".pt[11]" -type "float3" 2.788095 0 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface23" -p "polySurface13";
createNode transform -n "transform23" -p "polySurface23";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform23";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface24" -p "polySurface13";
createNode transform -n "transform22" -p "polySurface24";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape24" -p "transform22";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform21" -p "polySurface13";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform21";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface25";
createNode transform -n "polySurface26" -p "polySurface25";
createNode transform -n "transform46" -p "polySurface26";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform46";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface27" -p "polySurface25";
createNode transform -n "transform45" -p "polySurface27";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape27" -p "transform45";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface28" -p "polySurface25";
createNode transform -n "transform44" -p "polySurface28";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape28" -p "transform44";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface29" -p "polySurface25";
createNode transform -n "transform43" -p "polySurface29";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape29" -p "transform43";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface30" -p "polySurface25";
createNode transform -n "transform42" -p "polySurface30";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape30" -p "transform42";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface31" -p "polySurface25";
createNode transform -n "transform41" -p "polySurface31";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape31" -p "transform41";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface32" -p "polySurface25";
createNode transform -n "transform40" -p "polySurface32";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape32" -p "transform40";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface33" -p "polySurface25";
createNode transform -n "transform39" -p "polySurface33";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape33" -p "transform39";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface34" -p "polySurface25";
createNode transform -n "transform38" -p "polySurface34";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape34" -p "transform38";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface35" -p "polySurface25";
createNode transform -n "transform37" -p "polySurface35";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape35" -p "transform37";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface36" -p "polySurface25";
createNode transform -n "transform36" -p "polySurface36";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape36" -p "transform36";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform33" -p "polySurface25";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform33";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface37" -p "polySurface25";
	setAttr ".t" -type "double3" -10 0 -2 ;
	setAttr ".r" -type "double3" 0 -29.999999999999996 0 ;
	setAttr ".s" -type "double3" 0.3 1 1 ;
createNode transform -n "transform35" -p "polySurface37";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape37" -p "transform35";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:131]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 209 ".uvst[0].uvsp[0:208]" -type "float2" 0.625 0.90625 0.625
		 0.9375 0.625 0.96875 0.625 0 0.625 0.03125 0.375 0.03125 0.375 1 0.375 0.96875 0.375
		 0.9375 0.375 0.90625 0.375 0.875 0.375 0.84375 0.375 0.8125 0.375 0.78125 0.375 0.75
		 0.375 0.71875 0.625 0.71875 0.625 0.75 0.625 0.78125 0.625 0.8125 0.625 0.84375 0.625
		 0.875 0.625 0.21875 0.625 0.25 0.375 0.25 0.375 0.21875 0.375 0.1875 0.375 0.15625
		 0.375 0.125 0.375 0.09375 0.375 0.0625 0.625 0.0625 0.625 0.09375 0.625 0.125 0.625
		 0.15625 0.625 0.1875 0.625 0.46875 0.625 0.5 0.375 0.5 0.375 0.46875 0.375 0.4375
		 0.375 0.40625 0.375 0.375 0.375 0.34375 0.375 0.3125 0.375 0.28125 0.625 0.28125
		 0.625 0.3125 0.625 0.34375 0.625 0.375 0.625 0.40625 0.625 0.4375 0.625 0.6875 0.375
		 0.6875 0.375 0.65625 0.375 0.625 0.375 0.59375 0.375 0.5625 0.375 0.53125 0.625 0.53125
		 0.625 0.5625 0.625 0.59375 0.625 0.625 0.625 0.65625 0.84375 0 0.875 0 0.875 0.03125
		 0.84375 0.03125 0.8125 0 0.8125 0.03125 0.78125 0 0.78125 0.03125 0.75 0 0.75 0.03125
		 0.71875 0 0.71875 0.03125 0.6875 0 0.6875 0.03125 0.65625 0 0.65625 0.03125 0.875
		 0.0625 0.84375 0.0625 0.8125 0.0625 0.78125 0.0625 0.75 0.0625 0.71875 0.0625 0.6875
		 0.0625 0.65625 0.0625 0.875 0.09375 0.84375 0.09375 0.8125 0.09375 0.78125 0.09375
		 0.75 0.09375 0.71875 0.09375 0.6875 0.09375 0.65625 0.09375 0.875 0.125 0.84375 0.125
		 0.8125 0.125 0.78125 0.125 0.75 0.125 0.71875 0.125 0.6875 0.125 0.65625 0.125 0.875
		 0.15625 0.84375 0.15625 0.8125 0.15625 0.78125 0.15625 0.75 0.15625 0.71875 0.15625
		 0.6875 0.15625 0.65625 0.15625 0.875 0.1875 0.84375 0.1875 0.8125 0.1875 0.78125
		 0.1875 0.75 0.1875 0.71875 0.1875 0.6875 0.1875 0.65625 0.1875 0.875 0.21875 0.84375
		 0.21875 0.8125 0.21875 0.78125 0.21875 0.75 0.21875 0.71875 0.21875 0.6875 0.21875
		 0.65625 0.21875 0.875 0.25 0.84375 0.25 0.8125 0.25 0.78125 0.25 0.75 0.25 0.71875
		 0.25 0.6875 0.25 0.65625 0.25 0.125 0 0.15625 0 0.15625 0.03125 0.125 0.03125 0.1875
		 0 0.1875 0.03125 0.21875 0 0.21875 0.03125 0.25 0 0.25 0.03125 0.28125 0 0.28125
		 0.03125 0.3125 0 0.3125 0.03125 0.34375 0 0.34375 0.03125 0.375 0 0.15625 0.0625
		 0.125 0.0625 0.1875 0.0625 0.21875 0.0625 0.25 0.0625 0.28125 0.0625 0.3125 0.0625
		 0.34375 0.0625 0.15625 0.09375 0.125 0.09375 0.1875 0.09375 0.21875 0.09375 0.25
		 0.09375 0.28125 0.09375 0.3125 0.09375 0.34375 0.09375 0.15625 0.125 0.125 0.125
		 0.1875 0.125 0.21875 0.125 0.25 0.125 0.28125 0.125 0.3125 0.125 0.34375 0.125 0.15625
		 0.15625 0.125 0.15625 0.1875 0.15625 0.21875 0.15625 0.25 0.15625 0.28125 0.15625
		 0.3125 0.15625 0.34375 0.15625 0.15625 0.1875 0.125 0.1875 0.1875 0.1875 0.21875
		 0.1875 0.25 0.1875 0.28125 0.1875 0.3125 0.1875 0.34375 0.1875 0.15625 0.21875 0.125
		 0.21875 0.1875 0.21875 0.21875 0.21875 0.25 0.21875 0.28125 0.21875 0.3125 0.21875
		 0.34375 0.21875 0.15625 0.25 0.125 0.25 0.1875 0.25 0.21875 0.25 0.25 0.25 0.28125
		 0.25 0.3125 0.25 0.34375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 162 ".vt[0:161]"  -15 -2 1.48623919 15 -2 1.48623919 -15 -1.5 2
		 15 -1.5 2 -15 -1 2 15 -1 2 -15 -0.5 2 15 -0.5 2 -15 0 2 15 0 2 -15 0.5 2 15 0.5 2
		 -15 1 2 15 1 2 -15 1.5 2 15 1.5 2 -15 2 2 15 2 2 -15 2 1.5 15 2 1.5 -15 2 1 15 2 1
		 -15 3.34925699 0.4999997 15 2 0.5 -15 3.34925699 -2.9802322e-007 15 2 0 -15 3.34925699 -0.5000003
		 15 2 -0.5 -15 2 -1 15 2 -1 -15 2 -1.5 15 2 -1.5 -15 2 -2 15 2 -2 -15 1.5 -2 15 1.5 -2
		 -15 1 -2 15 1 -2 -15 0.49999988 -1.99999797 15 0.5 -2 -15 -1.1920929e-007 -1.99999797
		 15 0 -2 -15 -0.50000012 -1.99999797 15 -0.5 -2 -15 -1 -2 15 -1 -2 -15 -1.5 -2 15 -1.5 -2
		 -15 -2 -1.52651477 15 -2 -1.52651477 -15 -2 -1.02651453 15 -2 -1.026514769 -15 -2 -0.52651477
		 15 -2 -0.52651477 -15 -2 -0.026514769 15 -2 -0.026514769 -15 -2 0 15 -2 0 -15 -2 -0.013760805
		 15 -2 -0.013760805 -15 -2 0.48623919 15 -2 0.48623919 -15 -2 0.98623919 15 -2 0.98623919
		 15 -1.5 -1.5 15 -1.5 -1 15 -1.5 -0.5 15 -1.5 0 15 -1.5 0.5 15 -1.5 1 15 -1.5 1.5
		 15 -1 -1.5 16.25863457 -1 -1 16.25863457 -1 -0.5 16.25863457 -1 0 16.25863457 -1 0.5
		 16.25863457 -1 1 15 -1 1.5 15 -0.5 -1.5 16.25863457 -0.5 -1 16.25863457 -0.5 -0.5
		 16.25863457 -0.5 0 16.25863457 -0.5 0.5 16.25863457 -0.5 1 15 -0.5 1.5 15 0 -1.5
		 16.25863457 0 -1 16.25863457 0 -0.5 15 0 0 16.25863457 0 0.5 16.25863457 0 1 15 0 1.5
		 15 0.5 -1.5 16.25863457 0.5 -1 16.25863457 0.5 -0.5 16.25863457 0.5 0 16.25863457 0.5 0.5
		 16.25863457 0.5 1 15 0.5 1.5 15 1 -1.5 16.25863457 1 -1 16.25863457 1 -0.5 16.25863457 1 0
		 16.25863457 1 0.5 16.25863457 1 1 15 1 1.5 15 1.5 -1.5 15 1.5 -1 15 1.5 -0.5 15 1.5 0
		 15 1.5 0.5 15 1.5 1 15 1.5 1.5 -15.000000953674 -1.5 -1.49999976 -15.000000953674 -1.5 -1
		 -15 -1.5 -0.5 -15 -1.5 0 -15 -1.5 0.5 -15 -1.5 1 -15 -1.5 1.5 -15.000000953674 -1 -1.5
		 4.10292435 -1 -1 4.10292435 -1 -0.5 4.10292435 -1 0 4.10292435 -1 0.5 4.10292435 -1 1
		 -15 -1 1.5 -15 -0.50000012 -1.49999797 4.10292435 -0.5 -1 4.10292435 -0.5 -0.5 4.10292435 -0.5 0
		 4.10292435 -0.5 0.5 4.10292435 -0.5 1 -15 -0.5 1.5 -15 -1.1920929e-007 -1.49999797
		 4.10292435 0 -1 4.10292435 0 -0.5 4.10292435 0 0 4.10292435 0 0.5 4.10292435 0 1
		 -15 0 1.5 -15 0.49999988 -1.49999797 4.10292435 0.5 -1 4.10292435 0.5 -0.5 4.10292435 0.5 0
		 4.10292435 0.5 0.5 4.10292435 0.5 1 -15 0.5 1.5 -15 1 -1.5 4.10292435 1 -1 4.10292435 1 -0.5
		 4.10292435 1 0 4.10292435 1 0.5 4.10292435 1 1 -15 1 1.5 -15 1.5 -1.5 -15 1.5 -1
		 -15 2.84925699 -0.5000003 -15 2.84925699 -2.9802322e-007 -15 2.84925699 0.4999997
		 -15 1.5 1 -15 1.5 1.5;
	setAttr -s 292 ".ed";
	setAttr ".ed[0:165]"  2 3 1 16 17 0 32 33 0 46 47 1 0 2 0 1 3 0 2 4 0 3 5 0
		 4 6 0 5 7 0 6 8 0 7 9 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0 13 15 0 14 16 0 15 17 0
		 16 18 0 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 24 0 23 25 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 32 0 31 33 0 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0
		 38 40 0 39 41 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 48 0 47 49 0 48 50 0
		 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 56 0 55 57 0 56 58 0 57 59 0 58 60 0 59 61 0
		 60 62 0 61 63 0 62 0 0 63 1 0 47 64 1 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1
		 70 3 1 45 71 1 71 72 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 5 1 43 78 1 78 79 1
		 79 80 1 80 81 1 81 82 1 82 83 1 83 84 1 84 7 1 41 85 1 85 86 1 86 87 1 87 88 1 88 89 1
		 89 90 1 90 91 1 91 9 1 39 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1 97 98 1 98 11 1
		 37 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 13 1 35 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 15 1 51 64 1 53 65 1
		 55 66 1 57 67 1 59 68 1 61 69 1 63 70 1 64 71 1 65 72 1 66 73 1 67 74 1 68 75 1 69 76 1
		 70 77 1 71 78 1 72 79 1 73 80 1 74 81 1 75 82 1 76 83 1 77 84 1 78 85 1 79 86 1 80 87 1
		 81 88 1 82 89 1 83 90 1 84 91 1 85 92 1 86 93 1 87 94 1 88 95 1 89 96 1 90 97 1 91 98 1
		 92 99 1 93 100 1 94 101 1 95 102 1 96 103 1 97 104 1 98 105 1;
	setAttr ".ed[166:291]" 99 106 1 100 107 1 101 108 1 102 109 1 103 110 1 104 111 1
		 105 112 1 106 31 1 107 29 1 108 27 1 109 25 1 110 23 1 111 21 1 112 19 1 46 113 1
		 113 114 1 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 119 2 1 44 120 1 120 121 1
		 121 122 1 122 123 1 123 124 1 124 125 1 125 126 1 126 4 1 42 127 1 127 128 1 128 129 1
		 129 130 1 130 131 1 131 132 1 132 133 1 133 6 1 40 134 1 134 135 1 135 136 1 136 137 1
		 137 138 1 138 139 1 139 140 1 140 8 1 38 141 1 141 142 1 142 143 1 143 144 1 144 145 1
		 145 146 1 146 147 1 147 10 1 36 148 1 148 149 1 149 150 1 150 151 1 151 152 1 152 153 1
		 153 154 1 154 12 1 34 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 160 1 160 161 1
		 161 14 1 50 113 1 52 114 1 54 115 1 56 116 1 58 117 1 60 118 1 62 119 1 113 120 1
		 114 121 1 115 122 1 116 123 1 117 124 1 118 125 1 119 126 1 120 127 1 121 128 1 122 129 1
		 123 130 1 124 131 1 125 132 1 126 133 1 127 134 1 128 135 1 129 136 1 130 137 1 131 138 1
		 132 139 1 133 140 1 134 141 1 135 142 1 136 143 1 137 144 1 138 145 1 139 146 1 140 147 1
		 141 148 1 142 149 1 143 150 1 144 151 1 145 152 1 146 153 1 147 154 1 148 155 1 149 156 1
		 150 157 1 151 158 1 152 159 1 153 160 1 154 161 1 155 30 1 156 28 1 157 26 1 158 24 1
		 159 22 1 160 20 1 161 18 1;
	setAttr -s 132 -ch 584 ".fc[0:131]" -type "polyFaces" 
		f 22 63 65 67 5 -1 -5 -67 -65 -63 -61 -59 -57 -55 -53 -51 3 51 53 55 57 59 61
		mu 0 22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		f 16 19 -2 -19 -17 -15 -13 -11 -9 -7 0 7 9 11 13 15 17
		mu 0 16 22 23 24 25 26 27 28 29 30 5 4 31 32 33 34 35
		f 18 35 -3 -35 -33 -31 -29 -27 -25 -23 -21 1 21 23 25 27 29 31 33
		mu 0 18 36 37 38 39 40 41 42 43 44 45 24 23 46 47 48 49 50 51
		f 16 49 -4 -49 -47 -45 -43 -41 -39 -37 2 37 39 41 43 45 47
		mu 0 16 52 16 15 53 54 55 56 57 58 38 37 59 60 61 62 63
		f 4 -54 -52 68 -125
		mu 0 4 64 65 66 67
		f 4 -56 124 69 -126
		mu 0 4 68 64 67 69
		f 4 -58 125 70 -127
		mu 0 4 70 68 69 71
		f 4 -60 126 71 -128
		mu 0 4 72 70 71 73
		f 4 -62 127 72 -129
		mu 0 4 74 72 73 75
		f 4 -64 128 73 -130
		mu 0 4 76 74 75 77
		f 4 -66 129 74 -131
		mu 0 4 78 76 77 79
		f 4 -68 130 75 -6
		mu 0 4 3 78 79 4
		f 4 -69 -50 76 -132
		mu 0 4 67 66 80 81
		f 4 -70 131 77 -133
		mu 0 4 69 67 81 82
		f 4 -71 132 78 -134
		mu 0 4 71 69 82 83
		f 4 -72 133 79 -135
		mu 0 4 73 71 83 84
		f 4 -73 134 80 -136
		mu 0 4 75 73 84 85
		f 4 -74 135 81 -137
		mu 0 4 77 75 85 86
		f 4 -75 136 82 -138
		mu 0 4 79 77 86 87
		f 4 -76 137 83 -8
		mu 0 4 4 79 87 31
		f 4 -77 -48 84 -139
		mu 0 4 81 80 88 89
		f 4 -78 138 85 -140
		mu 0 4 82 81 89 90
		f 4 -79 139 86 -141
		mu 0 4 83 82 90 91
		f 4 -80 140 87 -142
		mu 0 4 84 83 91 92
		f 4 -81 141 88 -143
		mu 0 4 85 84 92 93
		f 4 -82 142 89 -144
		mu 0 4 86 85 93 94
		f 4 -83 143 90 -145
		mu 0 4 87 86 94 95
		f 4 -84 144 91 -10
		mu 0 4 31 87 95 32
		f 4 -85 -46 92 -146
		mu 0 4 89 88 96 97
		f 4 -86 145 93 -147
		mu 0 4 90 89 97 98
		f 4 -87 146 94 -148
		mu 0 4 91 90 98 99
		f 4 -88 147 95 -149
		mu 0 4 92 91 99 100
		f 4 -89 148 96 -150
		mu 0 4 93 92 100 101
		f 4 -90 149 97 -151
		mu 0 4 94 93 101 102
		f 4 -91 150 98 -152
		mu 0 4 95 94 102 103
		f 4 -92 151 99 -12
		mu 0 4 32 95 103 33
		f 4 -93 -44 100 -153
		mu 0 4 97 96 104 105
		f 4 -94 152 101 -154
		mu 0 4 98 97 105 106
		f 4 -95 153 102 -155
		mu 0 4 99 98 106 107
		f 4 -96 154 103 -156
		mu 0 4 100 99 107 108
		f 4 -97 155 104 -157
		mu 0 4 101 100 108 109
		f 4 -98 156 105 -158
		mu 0 4 102 101 109 110
		f 4 -99 157 106 -159
		mu 0 4 103 102 110 111
		f 4 -100 158 107 -14
		mu 0 4 33 103 111 34
		f 4 -101 -42 108 -160
		mu 0 4 105 104 112 113
		f 4 -102 159 109 -161
		mu 0 4 106 105 113 114
		f 4 -103 160 110 -162
		mu 0 4 107 106 114 115
		f 4 -104 161 111 -163
		mu 0 4 108 107 115 116
		f 4 -105 162 112 -164
		mu 0 4 109 108 116 117
		f 4 -106 163 113 -165
		mu 0 4 110 109 117 118
		f 4 -107 164 114 -166
		mu 0 4 111 110 118 119
		f 4 -108 165 115 -16
		mu 0 4 34 111 119 35
		f 4 -109 -40 116 -167
		mu 0 4 113 112 120 121
		f 4 -110 166 117 -168
		mu 0 4 114 113 121 122
		f 4 -111 167 118 -169
		mu 0 4 115 114 122 123
		f 4 -112 168 119 -170
		mu 0 4 116 115 123 124
		f 4 -113 169 120 -171
		mu 0 4 117 116 124 125
		f 4 -114 170 121 -172
		mu 0 4 118 117 125 126
		f 4 -115 171 122 -173
		mu 0 4 119 118 126 127
		f 4 -116 172 123 -18
		mu 0 4 35 119 127 22
		f 4 -117 -38 -36 -174
		mu 0 4 121 120 128 129
		f 4 -118 173 -34 -175
		mu 0 4 122 121 129 130
		f 4 -119 174 -32 -176
		mu 0 4 123 122 130 131
		f 4 -120 175 -30 -177
		mu 0 4 124 123 131 132
		f 4 -121 176 -28 -178
		mu 0 4 125 124 132 133
		f 4 -122 177 -26 -179
		mu 0 4 126 125 133 134
		f 4 -123 178 -24 -180
		mu 0 4 127 126 134 135
		f 4 -124 179 -22 -20
		mu 0 4 22 127 135 23
		f 4 52 236 -181 50
		mu 0 4 136 137 138 139
		f 4 54 237 -182 -237
		mu 0 4 137 140 141 138
		f 4 56 238 -183 -238
		mu 0 4 140 142 143 141
		f 4 58 239 -184 -239
		mu 0 4 142 144 145 143
		f 4 60 240 -185 -240
		mu 0 4 144 146 147 145
		f 4 62 241 -186 -241
		mu 0 4 146 148 149 147
		f 4 64 242 -187 -242
		mu 0 4 148 150 151 149
		f 4 66 4 -188 -243
		mu 0 4 150 152 5 151
		f 4 180 243 -189 48
		mu 0 4 139 138 153 154
		f 4 181 244 -190 -244
		mu 0 4 138 141 155 153
		f 4 182 245 -191 -245
		mu 0 4 141 143 156 155
		f 4 183 246 -192 -246
		mu 0 4 143 145 157 156
		f 4 184 247 -193 -247
		mu 0 4 145 147 158 157
		f 4 185 248 -194 -248
		mu 0 4 147 149 159 158
		f 4 186 249 -195 -249
		mu 0 4 149 151 160 159
		f 4 187 6 -196 -250
		mu 0 4 151 5 30 160
		f 4 188 250 -197 46
		mu 0 4 154 153 161 162
		f 4 189 251 -198 -251
		mu 0 4 153 155 163 161
		f 4 190 252 -199 -252
		mu 0 4 155 156 164 163
		f 4 191 253 -200 -253
		mu 0 4 156 157 165 164
		f 4 192 254 -201 -254
		mu 0 4 157 158 166 165
		f 4 193 255 -202 -255
		mu 0 4 158 159 167 166
		f 4 194 256 -203 -256
		mu 0 4 159 160 168 167
		f 4 195 8 -204 -257
		mu 0 4 160 30 29 168
		f 4 196 257 -205 44
		mu 0 4 162 161 169 170
		f 4 197 258 -206 -258
		mu 0 4 161 163 171 169
		f 4 198 259 -207 -259
		mu 0 4 163 164 172 171
		f 4 199 260 -208 -260
		mu 0 4 164 165 173 172
		f 4 200 261 -209 -261
		mu 0 4 165 166 174 173
		f 4 201 262 -210 -262
		mu 0 4 166 167 175 174
		f 4 202 263 -211 -263
		mu 0 4 167 168 176 175
		f 4 203 10 -212 -264
		mu 0 4 168 29 28 176
		f 4 204 264 -213 42
		mu 0 4 170 169 177 178
		f 4 205 265 -214 -265
		mu 0 4 169 171 179 177
		f 4 206 266 -215 -266
		mu 0 4 171 172 180 179
		f 4 207 267 -216 -267
		mu 0 4 172 173 181 180
		f 4 208 268 -217 -268
		mu 0 4 173 174 182 181
		f 4 209 269 -218 -269
		mu 0 4 174 175 183 182
		f 4 210 270 -219 -270
		mu 0 4 175 176 184 183
		f 4 211 12 -220 -271
		mu 0 4 176 28 27 184
		f 4 212 271 -221 40
		mu 0 4 178 177 185 186
		f 4 213 272 -222 -272
		mu 0 4 177 179 187 185
		f 4 214 273 -223 -273
		mu 0 4 179 180 188 187
		f 4 215 274 -224 -274
		mu 0 4 180 181 189 188
		f 4 216 275 -225 -275
		mu 0 4 181 182 190 189
		f 4 217 276 -226 -276
		mu 0 4 182 183 191 190
		f 4 218 277 -227 -277
		mu 0 4 183 184 192 191
		f 4 219 14 -228 -278
		mu 0 4 184 27 26 192
		f 4 220 278 -229 38
		mu 0 4 186 185 193 194
		f 4 221 279 -230 -279
		mu 0 4 185 187 195 193
		f 4 222 280 -231 -280
		mu 0 4 187 188 196 195
		f 4 223 281 -232 -281
		mu 0 4 188 189 197 196
		f 4 224 282 -233 -282
		mu 0 4 189 190 198 197
		f 4 225 283 -234 -283
		mu 0 4 190 191 199 198
		f 4 226 284 -235 -284
		mu 0 4 191 192 200 199
		f 4 227 16 -236 -285
		mu 0 4 192 26 25 200
		f 4 228 285 34 36
		mu 0 4 194 193 201 202
		f 4 229 286 32 -286
		mu 0 4 193 195 203 201
		f 4 230 287 30 -287
		mu 0 4 195 196 204 203
		f 4 231 288 28 -288
		mu 0 4 196 197 205 204
		f 4 232 289 26 -289
		mu 0 4 197 198 206 205
		f 4 233 290 24 -290
		mu 0 4 198 199 207 206
		f 4 234 291 22 -291
		mu 0 4 199 200 208 207
		f 4 235 18 20 -292
		mu 0 4 200 25 24 208;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface38" -p "polySurface25";
	setAttr ".t" -type "double3" -10 0 2 ;
	setAttr ".r" -type "double3" 0 29.999999999999996 0 ;
	setAttr ".s" -type "double3" 0.3 1 1 ;
createNode transform -n "transform34" -p "polySurface38";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape38" -p "transform34";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:131]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 209 ".uvst[0].uvsp[0:208]" -type "float2" 0.625 0.90625 0.625
		 0.9375 0.625 0.96875 0.625 0 0.625 0.03125 0.375 0.03125 0.375 1 0.375 0.96875 0.375
		 0.9375 0.375 0.90625 0.375 0.875 0.375 0.84375 0.375 0.8125 0.375 0.78125 0.375 0.75
		 0.375 0.71875 0.625 0.71875 0.625 0.75 0.625 0.78125 0.625 0.8125 0.625 0.84375 0.625
		 0.875 0.625 0.21875 0.625 0.25 0.375 0.25 0.375 0.21875 0.375 0.1875 0.375 0.15625
		 0.375 0.125 0.375 0.09375 0.375 0.0625 0.625 0.0625 0.625 0.09375 0.625 0.125 0.625
		 0.15625 0.625 0.1875 0.625 0.46875 0.625 0.5 0.375 0.5 0.375 0.46875 0.375 0.4375
		 0.375 0.40625 0.375 0.375 0.375 0.34375 0.375 0.3125 0.375 0.28125 0.625 0.28125
		 0.625 0.3125 0.625 0.34375 0.625 0.375 0.625 0.40625 0.625 0.4375 0.625 0.6875 0.375
		 0.6875 0.375 0.65625 0.375 0.625 0.375 0.59375 0.375 0.5625 0.375 0.53125 0.625 0.53125
		 0.625 0.5625 0.625 0.59375 0.625 0.625 0.625 0.65625 0.84375 0 0.875 0 0.875 0.03125
		 0.84375 0.03125 0.8125 0 0.8125 0.03125 0.78125 0 0.78125 0.03125 0.75 0 0.75 0.03125
		 0.71875 0 0.71875 0.03125 0.6875 0 0.6875 0.03125 0.65625 0 0.65625 0.03125 0.875
		 0.0625 0.84375 0.0625 0.8125 0.0625 0.78125 0.0625 0.75 0.0625 0.71875 0.0625 0.6875
		 0.0625 0.65625 0.0625 0.875 0.09375 0.84375 0.09375 0.8125 0.09375 0.78125 0.09375
		 0.75 0.09375 0.71875 0.09375 0.6875 0.09375 0.65625 0.09375 0.875 0.125 0.84375 0.125
		 0.8125 0.125 0.78125 0.125 0.75 0.125 0.71875 0.125 0.6875 0.125 0.65625 0.125 0.875
		 0.15625 0.84375 0.15625 0.8125 0.15625 0.78125 0.15625 0.75 0.15625 0.71875 0.15625
		 0.6875 0.15625 0.65625 0.15625 0.875 0.1875 0.84375 0.1875 0.8125 0.1875 0.78125
		 0.1875 0.75 0.1875 0.71875 0.1875 0.6875 0.1875 0.65625 0.1875 0.875 0.21875 0.84375
		 0.21875 0.8125 0.21875 0.78125 0.21875 0.75 0.21875 0.71875 0.21875 0.6875 0.21875
		 0.65625 0.21875 0.875 0.25 0.84375 0.25 0.8125 0.25 0.78125 0.25 0.75 0.25 0.71875
		 0.25 0.6875 0.25 0.65625 0.25 0.125 0 0.15625 0 0.15625 0.03125 0.125 0.03125 0.1875
		 0 0.1875 0.03125 0.21875 0 0.21875 0.03125 0.25 0 0.25 0.03125 0.28125 0 0.28125
		 0.03125 0.3125 0 0.3125 0.03125 0.34375 0 0.34375 0.03125 0.375 0 0.15625 0.0625
		 0.125 0.0625 0.1875 0.0625 0.21875 0.0625 0.25 0.0625 0.28125 0.0625 0.3125 0.0625
		 0.34375 0.0625 0.15625 0.09375 0.125 0.09375 0.1875 0.09375 0.21875 0.09375 0.25
		 0.09375 0.28125 0.09375 0.3125 0.09375 0.34375 0.09375 0.15625 0.125 0.125 0.125
		 0.1875 0.125 0.21875 0.125 0.25 0.125 0.28125 0.125 0.3125 0.125 0.34375 0.125 0.15625
		 0.15625 0.125 0.15625 0.1875 0.15625 0.21875 0.15625 0.25 0.15625 0.28125 0.15625
		 0.3125 0.15625 0.34375 0.15625 0.15625 0.1875 0.125 0.1875 0.1875 0.1875 0.21875
		 0.1875 0.25 0.1875 0.28125 0.1875 0.3125 0.1875 0.34375 0.1875 0.15625 0.21875 0.125
		 0.21875 0.1875 0.21875 0.21875 0.21875 0.25 0.21875 0.28125 0.21875 0.3125 0.21875
		 0.34375 0.21875 0.15625 0.25 0.125 0.25 0.1875 0.25 0.21875 0.25 0.25 0.25 0.28125
		 0.25 0.3125 0.25 0.34375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 162 ".vt[0:161]"  -15 -2 1.48623919 15 -2 1.48623919 -15 -1.5 2
		 15 -1.5 2 -15 -1 2 15 -1 2 -15 -0.5 2 15 -0.5 2 -15 0 2 15 0 2 -15 0.5 2 15 0.5 2
		 -15 1 2 15 1 2 -15 1.5 2 15 1.5 2 -15 2 2 15 2 2 -15 2 1.5 15 2 1.5 -15 2 1 15 2 1
		 -15 3.34925699 0.4999997 15 2 0.5 -15 3.34925699 -2.9802322e-007 15 2 0 -15 3.34925699 -0.5000003
		 15 2 -0.5 -15 2 -1 15 2 -1 -15 2 -1.5 15 2 -1.5 -15 2 -2 15 2 -2 -15 1.5 -2 15 1.5 -2
		 -15 1 -2 15 1 -2 -15 0.49999988 -1.99999797 15 0.5 -2 -15 -1.1920929e-007 -1.99999797
		 15 0 -2 -15 -0.50000012 -1.99999797 15 -0.5 -2 -15 -1 -2 15 -1 -2 -15 -1.5 -2 15 -1.5 -2
		 -15 -2 -1.52651477 15 -2 -1.52651477 -15 -2 -1.02651453 15 -2 -1.026514769 -15 -2 -0.52651477
		 15 -2 -0.52651477 -15 -2 -0.026514769 15 -2 -0.026514769 -15 -2 0 15 -2 0 -15 -2 -0.013760805
		 15 -2 -0.013760805 -15 -2 0.48623919 15 -2 0.48623919 -15 -2 0.98623919 15 -2 0.98623919
		 15 -1.5 -1.5 15 -1.5 -1 15 -1.5 -0.5 15 -1.5 0 15 -1.5 0.5 15 -1.5 1 15 -1.5 1.5
		 15 -1 -1.5 16.25863457 -1 -1 16.25863457 -1 -0.5 16.25863457 -1 0 16.25863457 -1 0.5
		 16.25863457 -1 1 15 -1 1.5 15 -0.5 -1.5 16.25863457 -0.5 -1 16.25863457 -0.5 -0.5
		 16.25863457 -0.5 0 16.25863457 -0.5 0.5 16.25863457 -0.5 1 15 -0.5 1.5 15 0 -1.5
		 16.25863457 0 -1 16.25863457 0 -0.5 15 0 0 16.25863457 0 0.5 16.25863457 0 1 15 0 1.5
		 15 0.5 -1.5 16.25863457 0.5 -1 16.25863457 0.5 -0.5 16.25863457 0.5 0 16.25863457 0.5 0.5
		 16.25863457 0.5 1 15 0.5 1.5 15 1 -1.5 16.25863457 1 -1 16.25863457 1 -0.5 16.25863457 1 0
		 16.25863457 1 0.5 16.25863457 1 1 15 1 1.5 15 1.5 -1.5 15 1.5 -1 15 1.5 -0.5 15 1.5 0
		 15 1.5 0.5 15 1.5 1 15 1.5 1.5 -15.000000953674 -1.5 -1.49999976 -15.000000953674 -1.5 -1
		 -15 -1.5 -0.5 -15 -1.5 0 -15 -1.5 0.5 -15 -1.5 1 -15 -1.5 1.5 -15.000000953674 -1 -1.5
		 4.10292435 -1 -1 4.10292435 -1 -0.5 4.10292435 -1 0 4.10292435 -1 0.5 4.10292435 -1 1
		 -15 -1 1.5 -15 -0.50000012 -1.49999797 4.10292435 -0.5 -1 4.10292435 -0.5 -0.5 4.10292435 -0.5 0
		 4.10292435 -0.5 0.5 4.10292435 -0.5 1 -15 -0.5 1.5 -15 -1.1920929e-007 -1.49999797
		 4.10292435 0 -1 4.10292435 0 -0.5 4.10292435 0 0 4.10292435 0 0.5 4.10292435 0 1
		 -15 0 1.5 -15 0.49999988 -1.49999797 4.10292435 0.5 -1 4.10292435 0.5 -0.5 4.10292435 0.5 0
		 4.10292435 0.5 0.5 4.10292435 0.5 1 -15 0.5 1.5 -15 1 -1.5 4.10292435 1 -1 4.10292435 1 -0.5
		 4.10292435 1 0 4.10292435 1 0.5 4.10292435 1 1 -15 1 1.5 -15 1.5 -1.5 -15 1.5 -1
		 -15 2.84925699 -0.5000003 -15 2.84925699 -2.9802322e-007 -15 2.84925699 0.4999997
		 -15 1.5 1 -15 1.5 1.5;
	setAttr -s 292 ".ed";
	setAttr ".ed[0:165]"  2 3 1 16 17 0 32 33 0 46 47 1 0 2 0 1 3 0 2 4 0 3 5 0
		 4 6 0 5 7 0 6 8 0 7 9 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0 13 15 0 14 16 0 15 17 0
		 16 18 0 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 24 0 23 25 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 32 0 31 33 0 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0
		 38 40 0 39 41 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 48 0 47 49 0 48 50 0
		 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 56 0 55 57 0 56 58 0 57 59 0 58 60 0 59 61 0
		 60 62 0 61 63 0 62 0 0 63 1 0 47 64 1 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1
		 70 3 1 45 71 1 71 72 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 5 1 43 78 1 78 79 1
		 79 80 1 80 81 1 81 82 1 82 83 1 83 84 1 84 7 1 41 85 1 85 86 1 86 87 1 87 88 1 88 89 1
		 89 90 1 90 91 1 91 9 1 39 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1 97 98 1 98 11 1
		 37 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 13 1 35 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 15 1 51 64 1 53 65 1
		 55 66 1 57 67 1 59 68 1 61 69 1 63 70 1 64 71 1 65 72 1 66 73 1 67 74 1 68 75 1 69 76 1
		 70 77 1 71 78 1 72 79 1 73 80 1 74 81 1 75 82 1 76 83 1 77 84 1 78 85 1 79 86 1 80 87 1
		 81 88 1 82 89 1 83 90 1 84 91 1 85 92 1 86 93 1 87 94 1 88 95 1 89 96 1 90 97 1 91 98 1
		 92 99 1 93 100 1 94 101 1 95 102 1 96 103 1 97 104 1 98 105 1;
	setAttr ".ed[166:291]" 99 106 1 100 107 1 101 108 1 102 109 1 103 110 1 104 111 1
		 105 112 1 106 31 1 107 29 1 108 27 1 109 25 1 110 23 1 111 21 1 112 19 1 46 113 1
		 113 114 1 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 119 2 1 44 120 1 120 121 1
		 121 122 1 122 123 1 123 124 1 124 125 1 125 126 1 126 4 1 42 127 1 127 128 1 128 129 1
		 129 130 1 130 131 1 131 132 1 132 133 1 133 6 1 40 134 1 134 135 1 135 136 1 136 137 1
		 137 138 1 138 139 1 139 140 1 140 8 1 38 141 1 141 142 1 142 143 1 143 144 1 144 145 1
		 145 146 1 146 147 1 147 10 1 36 148 1 148 149 1 149 150 1 150 151 1 151 152 1 152 153 1
		 153 154 1 154 12 1 34 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 160 1 160 161 1
		 161 14 1 50 113 1 52 114 1 54 115 1 56 116 1 58 117 1 60 118 1 62 119 1 113 120 1
		 114 121 1 115 122 1 116 123 1 117 124 1 118 125 1 119 126 1 120 127 1 121 128 1 122 129 1
		 123 130 1 124 131 1 125 132 1 126 133 1 127 134 1 128 135 1 129 136 1 130 137 1 131 138 1
		 132 139 1 133 140 1 134 141 1 135 142 1 136 143 1 137 144 1 138 145 1 139 146 1 140 147 1
		 141 148 1 142 149 1 143 150 1 144 151 1 145 152 1 146 153 1 147 154 1 148 155 1 149 156 1
		 150 157 1 151 158 1 152 159 1 153 160 1 154 161 1 155 30 1 156 28 1 157 26 1 158 24 1
		 159 22 1 160 20 1 161 18 1;
	setAttr -s 132 -ch 584 ".fc[0:131]" -type "polyFaces" 
		f 22 63 65 67 5 -1 -5 -67 -65 -63 -61 -59 -57 -55 -53 -51 3 51 53 55 57 59 61
		mu 0 22 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
		f 16 19 -2 -19 -17 -15 -13 -11 -9 -7 0 7 9 11 13 15 17
		mu 0 16 22 23 24 25 26 27 28 29 30 5 4 31 32 33 34 35
		f 18 35 -3 -35 -33 -31 -29 -27 -25 -23 -21 1 21 23 25 27 29 31 33
		mu 0 18 36 37 38 39 40 41 42 43 44 45 24 23 46 47 48 49 50 51
		f 16 49 -4 -49 -47 -45 -43 -41 -39 -37 2 37 39 41 43 45 47
		mu 0 16 52 16 15 53 54 55 56 57 58 38 37 59 60 61 62 63
		f 4 -54 -52 68 -125
		mu 0 4 64 65 66 67
		f 4 -56 124 69 -126
		mu 0 4 68 64 67 69
		f 4 -58 125 70 -127
		mu 0 4 70 68 69 71
		f 4 -60 126 71 -128
		mu 0 4 72 70 71 73
		f 4 -62 127 72 -129
		mu 0 4 74 72 73 75
		f 4 -64 128 73 -130
		mu 0 4 76 74 75 77
		f 4 -66 129 74 -131
		mu 0 4 78 76 77 79
		f 4 -68 130 75 -6
		mu 0 4 3 78 79 4
		f 4 -69 -50 76 -132
		mu 0 4 67 66 80 81
		f 4 -70 131 77 -133
		mu 0 4 69 67 81 82
		f 4 -71 132 78 -134
		mu 0 4 71 69 82 83
		f 4 -72 133 79 -135
		mu 0 4 73 71 83 84
		f 4 -73 134 80 -136
		mu 0 4 75 73 84 85
		f 4 -74 135 81 -137
		mu 0 4 77 75 85 86
		f 4 -75 136 82 -138
		mu 0 4 79 77 86 87
		f 4 -76 137 83 -8
		mu 0 4 4 79 87 31
		f 4 -77 -48 84 -139
		mu 0 4 81 80 88 89
		f 4 -78 138 85 -140
		mu 0 4 82 81 89 90
		f 4 -79 139 86 -141
		mu 0 4 83 82 90 91
		f 4 -80 140 87 -142
		mu 0 4 84 83 91 92
		f 4 -81 141 88 -143
		mu 0 4 85 84 92 93
		f 4 -82 142 89 -144
		mu 0 4 86 85 93 94
		f 4 -83 143 90 -145
		mu 0 4 87 86 94 95
		f 4 -84 144 91 -10
		mu 0 4 31 87 95 32
		f 4 -85 -46 92 -146
		mu 0 4 89 88 96 97
		f 4 -86 145 93 -147
		mu 0 4 90 89 97 98
		f 4 -87 146 94 -148
		mu 0 4 91 90 98 99
		f 4 -88 147 95 -149
		mu 0 4 92 91 99 100
		f 4 -89 148 96 -150
		mu 0 4 93 92 100 101
		f 4 -90 149 97 -151
		mu 0 4 94 93 101 102
		f 4 -91 150 98 -152
		mu 0 4 95 94 102 103
		f 4 -92 151 99 -12
		mu 0 4 32 95 103 33
		f 4 -93 -44 100 -153
		mu 0 4 97 96 104 105
		f 4 -94 152 101 -154
		mu 0 4 98 97 105 106
		f 4 -95 153 102 -155
		mu 0 4 99 98 106 107
		f 4 -96 154 103 -156
		mu 0 4 100 99 107 108
		f 4 -97 155 104 -157
		mu 0 4 101 100 108 109
		f 4 -98 156 105 -158
		mu 0 4 102 101 109 110
		f 4 -99 157 106 -159
		mu 0 4 103 102 110 111
		f 4 -100 158 107 -14
		mu 0 4 33 103 111 34
		f 4 -101 -42 108 -160
		mu 0 4 105 104 112 113
		f 4 -102 159 109 -161
		mu 0 4 106 105 113 114
		f 4 -103 160 110 -162
		mu 0 4 107 106 114 115
		f 4 -104 161 111 -163
		mu 0 4 108 107 115 116
		f 4 -105 162 112 -164
		mu 0 4 109 108 116 117
		f 4 -106 163 113 -165
		mu 0 4 110 109 117 118
		f 4 -107 164 114 -166
		mu 0 4 111 110 118 119
		f 4 -108 165 115 -16
		mu 0 4 34 111 119 35
		f 4 -109 -40 116 -167
		mu 0 4 113 112 120 121
		f 4 -110 166 117 -168
		mu 0 4 114 113 121 122
		f 4 -111 167 118 -169
		mu 0 4 115 114 122 123
		f 4 -112 168 119 -170
		mu 0 4 116 115 123 124
		f 4 -113 169 120 -171
		mu 0 4 117 116 124 125
		f 4 -114 170 121 -172
		mu 0 4 118 117 125 126
		f 4 -115 171 122 -173
		mu 0 4 119 118 126 127
		f 4 -116 172 123 -18
		mu 0 4 35 119 127 22
		f 4 -117 -38 -36 -174
		mu 0 4 121 120 128 129
		f 4 -118 173 -34 -175
		mu 0 4 122 121 129 130
		f 4 -119 174 -32 -176
		mu 0 4 123 122 130 131
		f 4 -120 175 -30 -177
		mu 0 4 124 123 131 132
		f 4 -121 176 -28 -178
		mu 0 4 125 124 132 133
		f 4 -122 177 -26 -179
		mu 0 4 126 125 133 134
		f 4 -123 178 -24 -180
		mu 0 4 127 126 134 135
		f 4 -124 179 -22 -20
		mu 0 4 22 127 135 23
		f 4 52 236 -181 50
		mu 0 4 136 137 138 139
		f 4 54 237 -182 -237
		mu 0 4 137 140 141 138
		f 4 56 238 -183 -238
		mu 0 4 140 142 143 141
		f 4 58 239 -184 -239
		mu 0 4 142 144 145 143
		f 4 60 240 -185 -240
		mu 0 4 144 146 147 145
		f 4 62 241 -186 -241
		mu 0 4 146 148 149 147
		f 4 64 242 -187 -242
		mu 0 4 148 150 151 149
		f 4 66 4 -188 -243
		mu 0 4 150 152 5 151
		f 4 180 243 -189 48
		mu 0 4 139 138 153 154
		f 4 181 244 -190 -244
		mu 0 4 138 141 155 153
		f 4 182 245 -191 -245
		mu 0 4 141 143 156 155
		f 4 183 246 -192 -246
		mu 0 4 143 145 157 156
		f 4 184 247 -193 -247
		mu 0 4 145 147 158 157
		f 4 185 248 -194 -248
		mu 0 4 147 149 159 158
		f 4 186 249 -195 -249
		mu 0 4 149 151 160 159
		f 4 187 6 -196 -250
		mu 0 4 151 5 30 160
		f 4 188 250 -197 46
		mu 0 4 154 153 161 162
		f 4 189 251 -198 -251
		mu 0 4 153 155 163 161
		f 4 190 252 -199 -252
		mu 0 4 155 156 164 163
		f 4 191 253 -200 -253
		mu 0 4 156 157 165 164
		f 4 192 254 -201 -254
		mu 0 4 157 158 166 165
		f 4 193 255 -202 -255
		mu 0 4 158 159 167 166
		f 4 194 256 -203 -256
		mu 0 4 159 160 168 167
		f 4 195 8 -204 -257
		mu 0 4 160 30 29 168
		f 4 196 257 -205 44
		mu 0 4 162 161 169 170
		f 4 197 258 -206 -258
		mu 0 4 161 163 171 169
		f 4 198 259 -207 -259
		mu 0 4 163 164 172 171
		f 4 199 260 -208 -260
		mu 0 4 164 165 173 172
		f 4 200 261 -209 -261
		mu 0 4 165 166 174 173
		f 4 201 262 -210 -262
		mu 0 4 166 167 175 174
		f 4 202 263 -211 -263
		mu 0 4 167 168 176 175
		f 4 203 10 -212 -264
		mu 0 4 168 29 28 176
		f 4 204 264 -213 42
		mu 0 4 170 169 177 178
		f 4 205 265 -214 -265
		mu 0 4 169 171 179 177
		f 4 206 266 -215 -266
		mu 0 4 171 172 180 179
		f 4 207 267 -216 -267
		mu 0 4 172 173 181 180
		f 4 208 268 -217 -268
		mu 0 4 173 174 182 181
		f 4 209 269 -218 -269
		mu 0 4 174 175 183 182
		f 4 210 270 -219 -270
		mu 0 4 175 176 184 183
		f 4 211 12 -220 -271
		mu 0 4 176 28 27 184
		f 4 212 271 -221 40
		mu 0 4 178 177 185 186
		f 4 213 272 -222 -272
		mu 0 4 177 179 187 185
		f 4 214 273 -223 -273
		mu 0 4 179 180 188 187
		f 4 215 274 -224 -274
		mu 0 4 180 181 189 188
		f 4 216 275 -225 -275
		mu 0 4 181 182 190 189
		f 4 217 276 -226 -276
		mu 0 4 182 183 191 190
		f 4 218 277 -227 -277
		mu 0 4 183 184 192 191
		f 4 219 14 -228 -278
		mu 0 4 184 27 26 192
		f 4 220 278 -229 38
		mu 0 4 186 185 193 194
		f 4 221 279 -230 -279
		mu 0 4 185 187 195 193
		f 4 222 280 -231 -280
		mu 0 4 187 188 196 195
		f 4 223 281 -232 -281
		mu 0 4 188 189 197 196
		f 4 224 282 -233 -282
		mu 0 4 189 190 198 197
		f 4 225 283 -234 -283
		mu 0 4 190 191 199 198
		f 4 226 284 -235 -284
		mu 0 4 191 192 200 199
		f 4 227 16 -236 -285
		mu 0 4 192 26 25 200
		f 4 228 285 34 36
		mu 0 4 194 193 201 202
		f 4 229 286 32 -286
		mu 0 4 193 195 203 201
		f 4 230 287 30 -287
		mu 0 4 195 196 204 203
		f 4 231 288 28 -288
		mu 0 4 196 197 205 204
		f 4 232 289 26 -289
		mu 0 4 197 198 206 205
		f 4 233 290 24 -290
		mu 0 4 198 199 207 206
		f 4 234 291 22 -291
		mu 0 4 199 200 208 207
		f 4 235 18 20 -292
		mu 0 4 200 25 24 208;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface39";
createNode transform -n "polySurface40" -p "polySurface39";
createNode transform -n "transform60" -p "polySurface40";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape40" -p "transform60";
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
	setAttr -s 29 ".pt";
	setAttr ".pt[30]" -type "float3" 4.7683716e-007 1.4305115e-006 9.5367432e-007 ;
	setAttr ".pt[32]" -type "float3" 4.7683716e-007 1.4305115e-006 0 ;
	setAttr ".pt[33]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[34]" -type "float3" 4.7683716e-007 1.4305115e-006 0 ;
	setAttr ".pt[35]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[36]" -type "float3" 4.7683716e-007 1.4305115e-006 -9.5367432e-007 ;
	setAttr ".pt[37]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[38]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".pt[39]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[40]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".pt[41]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[42]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".pt[43]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[44]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[45]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[46]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[47]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[120]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[121]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".pt[127]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".pt[128]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".pt[134]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".pt[135]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".pt[141]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".pt[142]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".pt[148]" -type "float3" 4.7683716e-007 1.4305115e-006 -9.5367432e-007 ;
	setAttr ".pt[149]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".pt[155]" -type "float3" 4.7683716e-007 1.4305115e-006 0 ;
	setAttr ".pt[156]" -type "float3" 0 0 -9.5367432e-007 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface41" -p "polySurface39";
createNode transform -n "transform59" -p "polySurface41";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape41" -p "transform59";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface42" -p "polySurface39";
createNode transform -n "transform58" -p "polySurface42";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape42" -p "transform58";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface43" -p "polySurface39";
createNode transform -n "transform57" -p "polySurface43";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape43" -p "transform57";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface44" -p "polySurface39";
createNode transform -n "transform56" -p "polySurface44";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape44" -p "transform56";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface45" -p "polySurface39";
createNode transform -n "transform55" -p "polySurface45";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape45" -p "transform55";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface46" -p "polySurface39";
createNode transform -n "transform54" -p "polySurface46";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape46" -p "transform54";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface47" -p "polySurface39";
createNode transform -n "transform53" -p "polySurface47";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape47" -p "transform53";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface48" -p "polySurface39";
createNode transform -n "transform52" -p "polySurface48";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape48" -p "transform52";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface49" -p "polySurface39";
createNode transform -n "transform51" -p "polySurface49";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape49" -p "transform51";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface50" -p "polySurface39";
createNode transform -n "transform50" -p "polySurface50";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape50" -p "transform50";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "transform47" -p "polySurface39";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape39" -p "transform47";
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
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube9";
	setAttr ".t" -type "double3" -8 0.2 -1.8 ;
createNode transform -n "transform49" -p "pCube9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform49";
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
	setAttr -s 18 ".pt";
	setAttr ".pt[21]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[23]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[25]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[27]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[29]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[30]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".pt[31]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[32]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".pt[33]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[34]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[35]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[36]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[37]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[38]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[39]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".pt[40]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".pt[50]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".pt[51]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "pCube10";
	setAttr ".t" -type "double3" -8 0.2 1.8 ;
	setAttr ".r" -type "double3" 0 180 180 ;
createNode transform -n "transform48" -p "pCube10";
	setAttr ".v" no;
createNode mesh -n "pCubeShape10" -p "transform48";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:40]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 110 ".uvst[0].uvsp[0:109]" -type "float2" 0.375 0.375 0.625
		 0.375 0.375 0.40625 0.625 0.40625 0.375 0.4375 0.625 0.4375 0.375 0.46875 0.625 0.46875
		 0.375 0.5 0.625 0.5 0.375 0.53125 0.625 0.53125 0.375 0.5625 0.625 0.5625 0.375 0.59375
		 0.625 0.59375 0.375 0.625 0.625 0.625 0.375 0.65625 0.625 0.65625 0.375 0.6875 0.625
		 0.6875 0.375 0.71875 0.625 0.71875 0.375 0.75 0.625 0.75 0.375 0.78125 0.625 0.78125
		 0.375 0.8125 0.625 0.8125 0.375 0.84375 0.625 0.84375 0.375 0.875 0.625 0.875 0.875
		 0 0.84375 0 0.8125 0 0.78125 0 0.75 0 0.875 0.03125 0.78125 0.03125 0.75 0.03125
		 0.875 0.0625 0.84375 0.0625 0.8125 0.0625 0.78125 0.0625 0.75 0.0625 0.875 0.09375
		 0.84375 0.09375 0.8125 0.09375 0.78125 0.09375 0.75 0.09375 0.875 0.125 0.75 0.125
		 0.875 0.15625 0.75 0.15625 0.875 0.1875 0.75 0.1875 0.875 0.21875 0.75 0.21875 0.875
		 0.25 0.84375 0.25 0.8125 0.25 0.78125 0.25 0.75 0.25 0.125 0 0.15625 0 0.1875 0 0.21875
		 0 0.25 0 0.125 0.03125 0.15625 0.03125 0.1875 0.03125 0.21875 0.03125 0.25 0.03125
		 0.125 0.0625 0.15625 0.0625 0.1875 0.0625 0.21875 0.0625 0.25 0.0625 0.125 0.09375
		 0.15625 0.09375 0.1875 0.09375 0.21875 0.09375 0.25 0.09375 0.125 0.125 0.15625 0.125
		 0.1875 0.125 0.21875 0.125 0.25 0.125 0.125 0.15625 0.15625 0.15625 0.1875 0.15625
		 0.21875 0.15625 0.25 0.15625 0.125 0.1875 0.15625 0.1875 0.1875 0.1875 0.21875 0.1875
		 0.25 0.1875 0.125 0.21875 0.15625 0.21875 0.1875 0.21875 0.21875 0.21875 0.25 0.21875
		 0.125 0.25 0.15625 0.25 0.1875 0.25 0.21875 0.25 0.25 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[21]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[23]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[25]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[27]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[29]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[30]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".pt[31]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[32]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".pt[33]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[34]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[35]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[36]" -type "float3" 0 0 -1.1920929e-007 ;
	setAttr ".pt[37]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[38]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".pt[39]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".pt[40]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".pt[50]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".pt[51]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr -s 76 ".vt[0:75]"  -5 2 0 5 2 0 -5 2 -0.5 5 2 -0.5 -5 2 -0.48923826
		 5 2 -0.48923826 -5 2 -0.98923826 5 2 -0.98923826 -5 2 -1.48923826 5 2 -1.48923826
		 -5 1.5 -1.48923826 5 1.5 -1.48923826 -5 1 -2 5 1 -2 -5 0.5 -2 5 0.5 -2 -5 0 -2 5 0 -2
		 -5 -0.5 -2 5 -0.5 -2 -5 -1 -2 5 -1 -1.99999988 -5 -1.5 -2 5 -1.5 -1.99999988 -5 -2 -2
		 5 -2 -1.99999988 -5 -2 -1.5 5 -2 -1.49999988 -5 -2 -1 5 -2 -0.99999988 -5 -2 -0.50000024
		 5 -2 -0.49999988 -5 -2 -2.3841858e-007 5 -2 1.1920929e-007 5 -1.5 -0.49999988 5 -1.5 -1.1920929e-007
		 5 -1 -1.50000012 5 -1 -0.99999988 5 -1 -0.49999988 5 -1 -2.3841858e-007 5 -0.5 -1.50000024
		 5 -0.5 -1 5 -0.5 -0.5 5 -0.5 0 5 0 0 5 0.5 0 5 1 0 5 1.5 0 -5 -1.5 -1.5 -5 -1.5 -1
		 -5 -1.5 -0.50000024 -5 -1.5 -2.3841858e-007 -5 -1 -1.5 3.26806545 -1 -1 3.26806545 -1 -0.5
		 3.26806545 -1 0 -5 -0.5 -1.5 3.26806545 -0.5 -1 3.26806545 -0.5 -0.5 3.26806545 -0.5 0
		 -5 0 -1.5 3.26806545 0 -1 3.26806545 0 -0.5 3.26806545 0 0 -5 0.5 -1.5 3.26806545 0.5 -1
		 3.26806545 0.5 -0.5 3.26806545 0.5 0 -5 1 -1.5 3.26806545 1 -1 3.26806545 1 -0.5
		 3.26806545 1 0 -5 1.5 -0.98923826 -5 1.5 -0.48923826 -5 1.5 -0.5 -5 1.5 0;
	setAttr -s 116 ".ed[0:115]"  0 1 0 8 9 0 24 25 0 26 27 1 28 29 1 30 31 1
		 32 33 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0 5 7 0 6 8 0 7 9 0 8 10 0 9 11 0 10 12 0 11 13 0
		 12 14 0 13 15 0 14 16 0 15 17 0 16 18 0 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 24 0
		 23 25 0 24 26 0 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 32 0 31 33 0 34 35 0 21 36 1
		 36 37 1 37 38 1 38 39 0 19 40 1 40 41 1 41 42 1 42 43 1 33 35 0 34 38 0 39 43 0 43 44 0
		 44 45 0 45 46 0 46 47 0 47 1 0 22 48 1 48 49 1 49 50 1 50 51 1 20 52 1 52 53 1 53 54 1
		 54 55 1 18 56 1 56 57 1 57 58 1 58 59 1 16 60 1 60 61 1 61 62 1 62 63 1 14 64 1 64 65 1
		 65 66 1 66 67 1 12 68 1 68 69 1 69 70 1 70 71 1 10 72 1 72 73 1 73 74 1 74 75 1 26 48 1
		 28 49 1 30 50 1 32 51 0 48 52 1 49 53 1 50 54 1 51 55 0 52 56 1 53 57 1 54 58 1 55 59 0
		 56 60 1 57 61 1 58 62 1 59 63 0 60 64 1 61 65 1 62 66 1 63 67 0 64 68 1 65 69 1 66 70 1
		 67 71 0 68 72 1 69 73 1 70 74 1 71 75 0 72 6 1 73 4 1 74 2 1 75 0 0;
	setAttr -s 41 -ch 212 ".fc[0:40]" -type "polyFaces" 
		f 10 12 14 -2 -14 -12 -10 -8 0 8 10
		mu 0 10 5 7 9 8 6 4 2 0 1 3
		f 18 30 -3 -30 -28 -26 -24 -22 -20 -18 -16 1 16 18 20 22 24 26 28
		mu 0 18 23 25 24 22 20 18 16 14 12 10 8 9 11 13 15 17 19 21
		f 4 2 32 -4 -32
		mu 0 4 24 25 27 26
		f 4 3 34 -5 -34
		mu 0 4 26 27 29 28
		f 4 4 36 -6 -36
		mu 0 4 28 29 31 30
		f 4 5 38 -7 -38
		mu 0 4 30 31 33 32
		f 12 39 -49 -39 -37 -35 -33 -31 -29 40 41 42 -50
		mu 0 12 40 41 38 37 36 35 34 39 42 43 44 45
		f 10 47 -51 -44 -43 -42 -41 -27 44 45 46
		mu 0 10 50 51 46 45 44 43 42 47 48 49
		f 18 -11 -9 -56 -55 -54 -53 -52 -48 -47 -46 -45 -25 -23 -21 -19 -17 -15 -13
		mu 0 18 62 63 64 59 57 55 53 51 50 49 48 47 52 54 56 58 60 61
		f 4 31 84 -57 29
		mu 0 4 65 66 71 70
		f 4 33 85 -58 -85
		mu 0 4 66 67 72 71
		f 4 35 86 -59 -86
		mu 0 4 67 68 73 72
		f 4 37 87 -60 -87
		mu 0 4 68 69 74 73
		f 4 56 88 -61 27
		mu 0 4 70 71 76 75
		f 4 57 89 -62 -89
		mu 0 4 71 72 77 76
		f 4 58 90 -63 -90
		mu 0 4 72 73 78 77
		f 4 59 91 -64 -91
		mu 0 4 73 74 79 78
		f 4 60 92 -65 25
		mu 0 4 75 76 81 80
		f 4 61 93 -66 -93
		mu 0 4 76 77 82 81
		f 4 62 94 -67 -94
		mu 0 4 77 78 83 82
		f 4 63 95 -68 -95
		mu 0 4 78 79 84 83
		f 4 64 96 -69 23
		mu 0 4 80 81 86 85
		f 4 65 97 -70 -97
		mu 0 4 81 82 87 86
		f 4 66 98 -71 -98
		mu 0 4 82 83 88 87
		f 4 67 99 -72 -99
		mu 0 4 83 84 89 88
		f 4 68 100 -73 21
		mu 0 4 85 86 91 90
		f 4 69 101 -74 -101
		mu 0 4 86 87 92 91
		f 4 70 102 -75 -102
		mu 0 4 87 88 93 92
		f 4 71 103 -76 -103
		mu 0 4 88 89 94 93
		f 4 72 104 -77 19
		mu 0 4 90 91 96 95
		f 4 73 105 -78 -105
		mu 0 4 91 92 97 96
		f 4 74 106 -79 -106
		mu 0 4 92 93 98 97
		f 4 75 107 -80 -107
		mu 0 4 93 94 99 98
		f 4 76 108 -81 17
		mu 0 4 95 96 101 100
		f 4 77 109 -82 -109
		mu 0 4 96 97 102 101
		f 4 78 110 -83 -110
		mu 0 4 97 98 103 102
		f 4 79 111 -84 -111
		mu 0 4 98 99 104 103
		f 4 80 112 13 15
		mu 0 4 100 101 106 105
		f 4 81 113 11 -113
		mu 0 4 101 102 107 106
		f 4 82 114 9 -114
		mu 0 4 102 103 108 107
		f 4 83 115 7 -115
		mu 0 4 103 104 109 108;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode transform -n "polySurface51";
createNode mesh -n "polySurfaceShape51" -p "polySurface51";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
	setAttr ".bw" 4;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 30;
	setAttr ".h" 4;
	setAttr ".d" 4;
	setAttr ".sh" 8;
	setAttr ".sd" 8;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 98 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.51376081 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.51376081 ;
	setAttr ".tk[22]" -type "float3" -2.0861626e-007 1.3492569 -2.9802322e-007 ;
	setAttr ".tk[24]" -type "float3" -2.0861626e-007 1.3492569 -2.9802322e-007 ;
	setAttr ".tk[26]" -type "float3" -2.0861626e-007 1.3492569 -2.9802322e-007 ;
	setAttr ".tk[38]" -type "float3" 0 -1.1920929e-007 2.0265579e-006 ;
	setAttr ".tk[40]" -type "float3" 0 -1.1920929e-007 2.0265579e-006 ;
	setAttr ".tk[42]" -type "float3" 0 -1.1920929e-007 2.0265579e-006 ;
	setAttr ".tk[44]" -type "float3" -2.9802322e-007 0 0 ;
	setAttr ".tk[46]" -type "float3" -2.9802322e-007 0 5.9604645e-008 ;
	setAttr ".tk[47]" -type "float3" 0 0 5.9604645e-008 ;
	setAttr ".tk[48]" -type "float3" -2.9802322e-007 0 0.47348529 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.47348529 ;
	setAttr ".tk[50]" -type "float3" -2.9802322e-007 0 0.47348553 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.47348529 ;
	setAttr ".tk[52]" -type "float3" -2.9802322e-007 0 0.47348523 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.47348523 ;
	setAttr ".tk[54]" -type "float3" 0 0 0.47348523 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.47348523 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.51376081 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.51376081 ;
	setAttr ".tk[60]" -type "float3" 0 0 -0.51376081 ;
	setAttr ".tk[61]" -type "float3" 0 0 -0.51376081 ;
	setAttr ".tk[62]" -type "float3" 0 0 -0.51376081 ;
	setAttr ".tk[63]" -type "float3" 0 0 -0.51376081 ;
	setAttr ".tk[72]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[73]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[74]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[75]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[76]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[79]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[80]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[81]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[82]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[83]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[86]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[87]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[89]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[90]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[93]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[94]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[95]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[96]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[97]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[100]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[101]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[102]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[103]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[104]" -type "float3" 1.2586352 0 0 ;
	setAttr ".tk[113]" -type "float3" -5.364418e-007 0 2.9802322e-007 ;
	setAttr ".tk[114]" -type "float3" -5.364418e-007 0 0 ;
	setAttr ".tk[115]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[116]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[117]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[118]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[119]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[120]" -type "float3" -5.364418e-007 0 0 ;
	setAttr ".tk[121]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[122]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[123]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[124]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[125]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[126]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[127]" -type "float3" -2.3841858e-007 -1.1920929e-007 2.0265579e-006 ;
	setAttr ".tk[128]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[129]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[130]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[131]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[132]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[133]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[134]" -type "float3" -2.3841858e-007 -1.1920929e-007 2.0265579e-006 ;
	setAttr ".tk[135]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[136]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[137]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[138]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[139]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[140]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[141]" -type "float3" -2.3841858e-007 -1.1920929e-007 2.0265579e-006 ;
	setAttr ".tk[142]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[143]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[144]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[145]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[146]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[147]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[148]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[149]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[150]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[151]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[152]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[153]" -type "float3" 19.102924 0 0 ;
	setAttr ".tk[154]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[155]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".tk[156]" -type "float3" -4.7683716e-007 0 0 ;
	setAttr ".tk[157]" -type "float3" -4.4703484e-007 1.3492569 -2.9802322e-007 ;
	setAttr ".tk[158]" -type "float3" -4.4703484e-007 1.3492569 -2.9802322e-007 ;
	setAttr ".tk[159]" -type "float3" -4.4703484e-007 1.3492569 -2.9802322e-007 ;
	setAttr ".tk[160]" -type "float3" -2.3841858e-007 0 0 ;
	setAttr ".tk[161]" -type "float3" -2.3841858e-007 0 0 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "e[9:15]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "e[10:15]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "e[2:7]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 3 "e[0]" "e[5:9]" "e[11:12]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "e[4]";
createNode polyCube -n "polyCube2";
	setAttr ".w" 15;
	setAttr ".h" 2;
	setAttr ".d" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube3";
	setAttr ".w" 15;
	setAttr ".h" 2;
	setAttr ".d" 2;
	setAttr ".sh" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	setAttr ".w" 15;
	setAttr ".h" 2;
	setAttr ".d" 2;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube5";
	setAttr ".w" 15;
	setAttr ".h" 2;
	setAttr ".d" 2;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube6";
	setAttr ".w" 15;
	setAttr ".h" 2;
	setAttr ".d" 2;
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
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
createNode polyUnite -n "polyUnite1";
	setAttr -s 8 ".ip";
	setAttr -s 8 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:131]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:185]";
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 8;
	setAttr -s 8 ".out";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:131]";
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite2";
	setAttr -s 11 ".ip";
	setAttr -s 11 ".im";
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:207]";
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 11;
	setAttr -s 11 ".out";
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:131]";
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyUnite -n "polyUnite3";
	setAttr -s 11 ".ip";
	setAttr -s 11 ".im";
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:207]";
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 11;
	setAttr -s 11 ".out";
createNode groupId -n "groupId42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:131]";
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite4";
	setAttr -s 13 ".ip";
	setAttr -s 13 ".im";
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:471]";
createNode polySeparate -n "polySeparate4";
	setAttr ".ic" 13;
	setAttr -s 11 ".out";
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:131]";
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCube -n "polyCube7";
	setAttr ".w" 10;
	setAttr ".h" 4;
	setAttr ".d" 4;
	setAttr ".sh" 8;
	setAttr ".sd" 8;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 37 ".tk";
	setAttr ".tk[28]" -type "float3" 0 0 0.51076174 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.51076174 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.51076174 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.51076174 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.51076174 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.51076174 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.51076174 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.51076174 ;
	setAttr ".tk[106]" -type "float3" 0 0 0.51076174 ;
	setAttr ".tk[107]" -type "float3" 0 0 0.51076174 ;
	setAttr ".tk[121]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[122]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[123]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[124]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[125]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[128]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[129]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[130]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[131]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[132]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[135]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[136]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[137]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[138]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[139]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[142]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[143]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[144]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[145]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[146]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[149]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[150]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[151]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[152]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[153]" -type "float3" 8.2680655 0 0 ;
	setAttr ".tk[155]" -type "float3" 0 0 0.51076174 ;
	setAttr ".tk[156]" -type "float3" 0 0 0.51076174 ;
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[156]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "f[11]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "f[10]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[154]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "f[9]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 1 "f[8]";
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 1 "f[152]";
createNode deleteComponent -n "deleteComponent13";
	setAttr ".dc" -type "componentList" 1 "f[152]";
createNode deleteComponent -n "deleteComponent14";
	setAttr ".dc" -type "componentList" 1 "f[145]";
createNode deleteComponent -n "deleteComponent15";
	setAttr ".dc" -type "componentList" 1 "f[145]";
createNode deleteComponent -n "deleteComponent16";
	setAttr ".dc" -type "componentList" 1 "f[144]";
createNode deleteComponent -n "deleteComponent17";
	setAttr ".dc" -type "componentList" 1 "f[104]";
createNode deleteComponent -n "deleteComponent18";
	setAttr ".dc" -type "componentList" 1 "f[104]";
createNode deleteComponent -n "deleteComponent19";
	setAttr ".dc" -type "componentList" 2 "f[24:26]" "f[104]";
createNode deleteComponent -n "deleteComponent20";
	setAttr ".dc" -type "componentList" 2 "f[36:39]" "f[93:96]";
createNode deleteComponent -n "deleteComponent21";
	setAttr ".dc" -type "componentList" 5 "f[2:3]" "f[100]" "f[108]" "f[116]" "f[124]";
createNode deleteComponent -n "deleteComponent22";
	setAttr ".dc" -type "componentList" 8 "f[0:5]" "f[22]" "f[91]" "f[98]" "f[105]" "f[112]" "f[119]" "f[124]";
createNode deleteComponent -n "deleteComponent23";
	setAttr ".dc" -type "componentList" 5 "f[40:43]" "f[48:51]" "f[56:59]" "f[64:67]" "f[106:107]";
createNode deleteComponent -n "deleteComponent24";
	setAttr ".dc" -type "componentList" 2 "f[56:57]" "f[59]";
createNode deleteComponent -n "deleteComponent25";
	setAttr ".dc" -type "componentList" 1 "f[56]";
createNode deleteComponent -n "deleteComponent26";
	setAttr ".dc" -type "componentList" 3 "f[68:69]" "f[74:75]" "f[80:81]";
createNode deleteComponent -n "deleteComponent27";
	setAttr ".dc" -type "componentList" 4 "f[20:23]" "f[27]" "f[32]" "f[34:35]";
createNode deleteComponent -n "deleteComponent28";
	setAttr ".dc" -type "componentList" 1 "f[27]";
createNode deleteComponent -n "deleteComponent29";
	setAttr ".dc" -type "componentList" 1 "e[5:11]";
createNode deleteComponent -n "deleteComponent30";
	setAttr ".dc" -type "componentList" 2 "e[1]" "e[3]";
createNode deleteComponent -n "deleteComponent31";
	setAttr ".dc" -type "componentList" 1 "e[1]";
createNode deleteComponent -n "deleteComponent32";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent33";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent34";
	setAttr ".dc" -type "componentList" 1 "e[71]";
createNode deleteComponent -n "deleteComponent35";
	setAttr ".dc" -type "componentList" 1 "e[71]";
createNode deleteComponent -n "deleteComponent36";
	setAttr ".dc" -type "componentList" 1 "e[72]";
createNode deleteComponent -n "deleteComponent37";
	setAttr ".dc" -type "componentList" 1 "e[72]";
createNode deleteComponent -n "deleteComponent38";
	setAttr ".dc" -type "componentList" 1 "e[72]";
createNode deleteComponent -n "deleteComponent39";
	setAttr ".dc" -type "componentList" 1 "e[74]";
createNode deleteComponent -n "deleteComponent40";
	setAttr ".dc" -type "componentList" 1 "e[73]";
createNode deleteComponent -n "deleteComponent41";
	setAttr ".dc" -type "componentList" 1 "e[73]";
createNode deleteComponent -n "deleteComponent42";
	setAttr ".dc" -type "componentList" 1 "e[76]";
createNode deleteComponent -n "deleteComponent43";
	setAttr ".dc" -type "componentList" 1 "e[75]";
createNode deleteComponent -n "deleteComponent44";
	setAttr ".dc" -type "componentList" 1 "e[74]";
createNode deleteComponent -n "deleteComponent45";
	setAttr ".dc" -type "componentList" 1 "e[52]";
createNode deleteComponent -n "deleteComponent46";
	setAttr ".dc" -type "componentList" 1 "e[52]";
createNode deleteComponent -n "deleteComponent47";
	setAttr ".dc" -type "componentList" 1 "e[71]";
createNode deleteComponent -n "deleteComponent48";
	setAttr ".dc" -type "componentList" 1 "e[70]";
createNode deleteComponent -n "deleteComponent49";
	setAttr ".dc" -type "componentList" 1 "e[71]";
createNode deleteComponent -n "deleteComponent50";
	setAttr ".dc" -type "componentList" 1 "e[54]";
createNode deleteComponent -n "deleteComponent51";
	setAttr ".dc" -type "componentList" 1 "e[68]";
createNode deleteComponent -n "deleteComponent52";
	setAttr ".dc" -type "componentList" 1 "e[52]";
createNode deleteComponent -n "deleteComponent53";
	setAttr ".dc" -type "componentList" 1 "e[65]";
createNode deleteComponent -n "deleteComponent54";
	setAttr ".dc" -type "componentList" 1 "e[52]";
createNode deleteComponent -n "deleteComponent55";
	setAttr ".dc" -type "componentList" 1 "e[66]";
createNode deleteComponent -n "deleteComponent56";
	setAttr ".dc" -type "componentList" 1 "e[64]";
createNode deleteComponent -n "deleteComponent57";
	setAttr ".dc" -type "componentList" 1 "e[63]";
createNode deleteComponent -n "deleteComponent58";
	setAttr ".dc" -type "componentList" 1 "e[40]";
createNode deleteComponent -n "deleteComponent59";
	setAttr ".dc" -type "componentList" 1 "e[50]";
createNode deleteComponent -n "deleteComponent60";
	setAttr ".dc" -type "componentList" 1 "e[49]";
createNode deleteComponent -n "deleteComponent61";
	setAttr ".dc" -type "componentList" 1 "e[48]";
createNode polyUnite -n "polyUnite5";
	setAttr -s 13 ".ip";
	setAttr -s 13 ".im";
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:40]";
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:289]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 71 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 71 ".gn";
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
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape2.i";
connectAttr "groupId4.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupParts3.og" "pCubeShape3.i";
connectAttr "groupId6.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupId7.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts4.og" "pCubeShape4.i";
connectAttr "groupId8.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId9.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupParts5.og" "pCubeShape5.i";
connectAttr "groupId10.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupId11.id" "pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupParts6.og" "pCubeShape6.i";
connectAttr "groupId12.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr "groupId13.id" "pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupId14.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupId15.id" "pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupId16.id" "pCubeShape8.ciog.cog[0].cgid";
connectAttr "groupParts8.og" "polySurfaceShape2.i";
connectAttr "groupId18.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurfaceShape3.i";
connectAttr "groupId19.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurfaceShape4.i";
connectAttr "groupId20.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts11.og" "polySurfaceShape5.i";
connectAttr "groupId21.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts12.og" "polySurfaceShape6.i";
connectAttr "groupId22.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurfaceShape7.i";
connectAttr "groupId23.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape8.i";
connectAttr "groupId24.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape9.i";
connectAttr "groupId25.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts7.og" "polySurfaceShape1.i";
connectAttr "groupId17.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupId26.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupId27.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupId28.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape14.i";
connectAttr "groupId30.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupParts18.og" "polySurfaceShape15.i";
connectAttr "groupId31.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape16.i";
connectAttr "groupId32.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape17.i";
connectAttr "groupId33.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts21.og" "polySurfaceShape18.i";
connectAttr "groupId34.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape19.i";
connectAttr "groupId35.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape20.i";
connectAttr "groupId36.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape21.i";
connectAttr "groupId37.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape22.i";
connectAttr "groupId38.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape23.i";
connectAttr "groupId39.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupParts27.og" "polySurfaceShape24.i";
connectAttr "groupId40.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape13.i";
connectAttr "groupId29.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts29.og" "polySurfaceShape26.i";
connectAttr "groupId42.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupParts30.og" "polySurfaceShape27.i";
connectAttr "groupId43.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupParts31.og" "polySurfaceShape28.i";
connectAttr "groupId44.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupParts32.og" "polySurfaceShape29.i";
connectAttr "groupId45.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupParts33.og" "polySurfaceShape30.i";
connectAttr "groupId46.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupParts34.og" "polySurfaceShape31.i";
connectAttr "groupId47.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupParts35.og" "polySurfaceShape32.i";
connectAttr "groupId48.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupParts36.og" "polySurfaceShape33.i";
connectAttr "groupId49.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupParts37.og" "polySurfaceShape34.i";
connectAttr "groupId50.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupParts38.og" "polySurfaceShape35.i";
connectAttr "groupId51.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupParts39.og" "polySurfaceShape36.i";
connectAttr "groupId52.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupParts28.og" "polySurfaceShape25.i";
connectAttr "groupId41.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupId53.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "groupId54.id" "polySurfaceShape38.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape38.iog.og[0].gco";
connectAttr "groupParts41.og" "polySurfaceShape40.i";
connectAttr "groupId56.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape40.iog.og[0].gco";
connectAttr "groupParts42.og" "polySurfaceShape41.i";
connectAttr "groupId57.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr "groupParts43.og" "polySurfaceShape42.i";
connectAttr "groupId58.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "groupParts44.og" "polySurfaceShape43.i";
connectAttr "groupId59.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "groupParts45.og" "polySurfaceShape44.i";
connectAttr "groupId60.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "groupParts46.og" "polySurfaceShape45.i";
connectAttr "groupId61.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "groupParts47.og" "polySurfaceShape46.i";
connectAttr "groupId62.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupParts48.og" "polySurfaceShape47.i";
connectAttr "groupId63.id" "polySurfaceShape47.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape47.iog.og[0].gco";
connectAttr "groupParts49.og" "polySurfaceShape48.i";
connectAttr "groupId64.id" "polySurfaceShape48.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape48.iog.og[0].gco";
connectAttr "groupParts50.og" "polySurfaceShape49.i";
connectAttr "groupId65.id" "polySurfaceShape49.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape49.iog.og[0].gco";
connectAttr "groupParts51.og" "polySurfaceShape50.i";
connectAttr "groupId66.id" "polySurfaceShape50.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape50.iog.og[0].gco";
connectAttr "groupParts40.og" "polySurfaceShape39.i";
connectAttr "groupId55.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "groupParts52.og" "pCubeShape9.i";
connectAttr "groupId67.id" "pCubeShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape9.iog.og[0].gco";
connectAttr "groupId68.id" "pCubeShape9.ciog.cog[0].cgid";
connectAttr "groupId69.id" "pCubeShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape10.iog.og[0].gco";
connectAttr "groupId70.id" "pCubeShape10.ciog.cog[0].cgid";
connectAttr "groupParts53.og" "polySurfaceShape51.i";
connectAttr "groupId71.id" "polySurfaceShape51.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape51.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape3.o" "polyUnite1.ip[2]";
connectAttr "pCubeShape4.o" "polyUnite1.ip[3]";
connectAttr "pCubeShape5.o" "polyUnite1.ip[4]";
connectAttr "pCubeShape6.o" "polyUnite1.ip[5]";
connectAttr "pCubeShape7.o" "polyUnite1.ip[6]";
connectAttr "pCubeShape8.o" "polyUnite1.ip[7]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[1]";
connectAttr "pCubeShape3.wm" "polyUnite1.im[2]";
connectAttr "pCubeShape4.wm" "polyUnite1.im[3]";
connectAttr "pCubeShape5.wm" "polyUnite1.im[4]";
connectAttr "pCubeShape6.wm" "polyUnite1.im[5]";
connectAttr "pCubeShape7.wm" "polyUnite1.im[6]";
connectAttr "pCubeShape8.wm" "polyUnite1.im[7]";
connectAttr "deleteComponent5.og" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCube2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyCube3.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polyCube4.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polyCube5.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "polyCube6.out" "groupParts6.ig";
connectAttr "groupId11.id" "groupParts6.gi";
connectAttr "polyUnite1.out" "groupParts7.ig";
connectAttr "groupId17.id" "groupParts7.gi";
connectAttr "polySurfaceShape1.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts8.ig";
connectAttr "groupId18.id" "groupParts8.gi";
connectAttr "polySeparate1.out[1]" "groupParts9.ig";
connectAttr "groupId19.id" "groupParts9.gi";
connectAttr "polySeparate1.out[2]" "groupParts10.ig";
connectAttr "groupId20.id" "groupParts10.gi";
connectAttr "polySeparate1.out[3]" "groupParts11.ig";
connectAttr "groupId21.id" "groupParts11.gi";
connectAttr "polySeparate1.out[4]" "groupParts12.ig";
connectAttr "groupId22.id" "groupParts12.gi";
connectAttr "polySeparate1.out[5]" "groupParts13.ig";
connectAttr "groupId23.id" "groupParts13.gi";
connectAttr "polySeparate1.out[6]" "groupParts14.ig";
connectAttr "groupId24.id" "groupParts14.gi";
connectAttr "polySeparate1.out[7]" "groupParts15.ig";
connectAttr "groupId25.id" "groupParts15.gi";
connectAttr "polySurfaceShape2.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape3.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape4.o" "polyUnite2.ip[2]";
connectAttr "polySurfaceShape5.o" "polyUnite2.ip[3]";
connectAttr "polySurfaceShape6.o" "polyUnite2.ip[4]";
connectAttr "polySurfaceShape7.o" "polyUnite2.ip[5]";
connectAttr "polySurfaceShape8.o" "polyUnite2.ip[6]";
connectAttr "polySurfaceShape9.o" "polyUnite2.ip[7]";
connectAttr "polySurfaceShape10.o" "polyUnite2.ip[8]";
connectAttr "polySurfaceShape11.o" "polyUnite2.ip[9]";
connectAttr "polySurfaceShape12.o" "polyUnite2.ip[10]";
connectAttr "polySurfaceShape2.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape3.wm" "polyUnite2.im[1]";
connectAttr "polySurfaceShape4.wm" "polyUnite2.im[2]";
connectAttr "polySurfaceShape5.wm" "polyUnite2.im[3]";
connectAttr "polySurfaceShape6.wm" "polyUnite2.im[4]";
connectAttr "polySurfaceShape7.wm" "polyUnite2.im[5]";
connectAttr "polySurfaceShape8.wm" "polyUnite2.im[6]";
connectAttr "polySurfaceShape9.wm" "polyUnite2.im[7]";
connectAttr "polySurfaceShape10.wm" "polyUnite2.im[8]";
connectAttr "polySurfaceShape11.wm" "polyUnite2.im[9]";
connectAttr "polySurfaceShape12.wm" "polyUnite2.im[10]";
connectAttr "polyUnite2.out" "groupParts16.ig";
connectAttr "groupId29.id" "groupParts16.gi";
connectAttr "polySurfaceShape13.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts17.ig";
connectAttr "groupId30.id" "groupParts17.gi";
connectAttr "polySeparate2.out[1]" "groupParts18.ig";
connectAttr "groupId31.id" "groupParts18.gi";
connectAttr "polySeparate2.out[2]" "groupParts19.ig";
connectAttr "groupId32.id" "groupParts19.gi";
connectAttr "polySeparate2.out[3]" "groupParts20.ig";
connectAttr "groupId33.id" "groupParts20.gi";
connectAttr "polySeparate2.out[4]" "groupParts21.ig";
connectAttr "groupId34.id" "groupParts21.gi";
connectAttr "polySeparate2.out[5]" "groupParts22.ig";
connectAttr "groupId35.id" "groupParts22.gi";
connectAttr "polySeparate2.out[6]" "groupParts23.ig";
connectAttr "groupId36.id" "groupParts23.gi";
connectAttr "polySeparate2.out[7]" "groupParts24.ig";
connectAttr "groupId37.id" "groupParts24.gi";
connectAttr "polySeparate2.out[8]" "groupParts25.ig";
connectAttr "groupId38.id" "groupParts25.gi";
connectAttr "polySeparate2.out[9]" "groupParts26.ig";
connectAttr "groupId39.id" "groupParts26.gi";
connectAttr "polySeparate2.out[10]" "groupParts27.ig";
connectAttr "groupId40.id" "groupParts27.gi";
connectAttr "polySurfaceShape14.o" "polyUnite3.ip[0]";
connectAttr "polySurfaceShape15.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape16.o" "polyUnite3.ip[2]";
connectAttr "polySurfaceShape17.o" "polyUnite3.ip[3]";
connectAttr "polySurfaceShape18.o" "polyUnite3.ip[4]";
connectAttr "polySurfaceShape19.o" "polyUnite3.ip[5]";
connectAttr "polySurfaceShape20.o" "polyUnite3.ip[6]";
connectAttr "polySurfaceShape21.o" "polyUnite3.ip[7]";
connectAttr "polySurfaceShape22.o" "polyUnite3.ip[8]";
connectAttr "polySurfaceShape23.o" "polyUnite3.ip[9]";
connectAttr "polySurfaceShape24.o" "polyUnite3.ip[10]";
connectAttr "polySurfaceShape14.wm" "polyUnite3.im[0]";
connectAttr "polySurfaceShape15.wm" "polyUnite3.im[1]";
connectAttr "polySurfaceShape16.wm" "polyUnite3.im[2]";
connectAttr "polySurfaceShape17.wm" "polyUnite3.im[3]";
connectAttr "polySurfaceShape18.wm" "polyUnite3.im[4]";
connectAttr "polySurfaceShape19.wm" "polyUnite3.im[5]";
connectAttr "polySurfaceShape20.wm" "polyUnite3.im[6]";
connectAttr "polySurfaceShape21.wm" "polyUnite3.im[7]";
connectAttr "polySurfaceShape22.wm" "polyUnite3.im[8]";
connectAttr "polySurfaceShape23.wm" "polyUnite3.im[9]";
connectAttr "polySurfaceShape24.wm" "polyUnite3.im[10]";
connectAttr "polyUnite3.out" "groupParts28.ig";
connectAttr "groupId41.id" "groupParts28.gi";
connectAttr "polySurfaceShape25.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts29.ig";
connectAttr "groupId42.id" "groupParts29.gi";
connectAttr "polySeparate3.out[1]" "groupParts30.ig";
connectAttr "groupId43.id" "groupParts30.gi";
connectAttr "polySeparate3.out[2]" "groupParts31.ig";
connectAttr "groupId44.id" "groupParts31.gi";
connectAttr "polySeparate3.out[3]" "groupParts32.ig";
connectAttr "groupId45.id" "groupParts32.gi";
connectAttr "polySeparate3.out[4]" "groupParts33.ig";
connectAttr "groupId46.id" "groupParts33.gi";
connectAttr "polySeparate3.out[5]" "groupParts34.ig";
connectAttr "groupId47.id" "groupParts34.gi";
connectAttr "polySeparate3.out[6]" "groupParts35.ig";
connectAttr "groupId48.id" "groupParts35.gi";
connectAttr "polySeparate3.out[7]" "groupParts36.ig";
connectAttr "groupId49.id" "groupParts36.gi";
connectAttr "polySeparate3.out[8]" "groupParts37.ig";
connectAttr "groupId50.id" "groupParts37.gi";
connectAttr "polySeparate3.out[9]" "groupParts38.ig";
connectAttr "groupId51.id" "groupParts38.gi";
connectAttr "polySeparate3.out[10]" "groupParts39.ig";
connectAttr "groupId52.id" "groupParts39.gi";
connectAttr "polySurfaceShape26.o" "polyUnite4.ip[0]";
connectAttr "polySurfaceShape27.o" "polyUnite4.ip[1]";
connectAttr "polySurfaceShape28.o" "polyUnite4.ip[2]";
connectAttr "polySurfaceShape29.o" "polyUnite4.ip[3]";
connectAttr "polySurfaceShape30.o" "polyUnite4.ip[4]";
connectAttr "polySurfaceShape31.o" "polyUnite4.ip[5]";
connectAttr "polySurfaceShape32.o" "polyUnite4.ip[6]";
connectAttr "polySurfaceShape33.o" "polyUnite4.ip[7]";
connectAttr "polySurfaceShape34.o" "polyUnite4.ip[8]";
connectAttr "polySurfaceShape35.o" "polyUnite4.ip[9]";
connectAttr "polySurfaceShape36.o" "polyUnite4.ip[10]";
connectAttr "polySurfaceShape37.o" "polyUnite4.ip[11]";
connectAttr "polySurfaceShape38.o" "polyUnite4.ip[12]";
connectAttr "polySurfaceShape26.wm" "polyUnite4.im[0]";
connectAttr "polySurfaceShape27.wm" "polyUnite4.im[1]";
connectAttr "polySurfaceShape28.wm" "polyUnite4.im[2]";
connectAttr "polySurfaceShape29.wm" "polyUnite4.im[3]";
connectAttr "polySurfaceShape30.wm" "polyUnite4.im[4]";
connectAttr "polySurfaceShape31.wm" "polyUnite4.im[5]";
connectAttr "polySurfaceShape32.wm" "polyUnite4.im[6]";
connectAttr "polySurfaceShape33.wm" "polyUnite4.im[7]";
connectAttr "polySurfaceShape34.wm" "polyUnite4.im[8]";
connectAttr "polySurfaceShape35.wm" "polyUnite4.im[9]";
connectAttr "polySurfaceShape36.wm" "polyUnite4.im[10]";
connectAttr "polySurfaceShape37.wm" "polyUnite4.im[11]";
connectAttr "polySurfaceShape38.wm" "polyUnite4.im[12]";
connectAttr "polyUnite4.out" "groupParts40.ig";
connectAttr "groupId55.id" "groupParts40.gi";
connectAttr "polySurfaceShape39.o" "polySeparate4.ip";
connectAttr "polySeparate4.out[0]" "groupParts41.ig";
connectAttr "groupId56.id" "groupParts41.gi";
connectAttr "polySeparate4.out[1]" "groupParts42.ig";
connectAttr "groupId57.id" "groupParts42.gi";
connectAttr "polySeparate4.out[2]" "groupParts43.ig";
connectAttr "groupId58.id" "groupParts43.gi";
connectAttr "polySeparate4.out[3]" "groupParts44.ig";
connectAttr "groupId59.id" "groupParts44.gi";
connectAttr "polySeparate4.out[4]" "groupParts45.ig";
connectAttr "groupId60.id" "groupParts45.gi";
connectAttr "polySeparate4.out[5]" "groupParts46.ig";
connectAttr "groupId61.id" "groupParts46.gi";
connectAttr "polySeparate4.out[6]" "groupParts47.ig";
connectAttr "groupId62.id" "groupParts47.gi";
connectAttr "polySeparate4.out[7]" "groupParts48.ig";
connectAttr "groupId63.id" "groupParts48.gi";
connectAttr "polySeparate4.out[8]" "groupParts49.ig";
connectAttr "groupId64.id" "groupParts49.gi";
connectAttr "polySeparate4.out[9]" "groupParts50.ig";
connectAttr "groupId65.id" "groupParts50.gi";
connectAttr "polySeparate4.out[10]" "groupParts51.ig";
connectAttr "groupId66.id" "groupParts51.gi";
connectAttr "polyCube7.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "deleteComponent24.og" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "deleteComponent28.ig";
connectAttr "deleteComponent28.og" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "deleteComponent30.ig";
connectAttr "deleteComponent30.og" "deleteComponent31.ig";
connectAttr "deleteComponent31.og" "deleteComponent32.ig";
connectAttr "deleteComponent32.og" "deleteComponent33.ig";
connectAttr "deleteComponent33.og" "deleteComponent34.ig";
connectAttr "deleteComponent34.og" "deleteComponent35.ig";
connectAttr "deleteComponent35.og" "deleteComponent36.ig";
connectAttr "deleteComponent36.og" "deleteComponent37.ig";
connectAttr "deleteComponent37.og" "deleteComponent38.ig";
connectAttr "deleteComponent38.og" "deleteComponent39.ig";
connectAttr "deleteComponent39.og" "deleteComponent40.ig";
connectAttr "deleteComponent40.og" "deleteComponent41.ig";
connectAttr "deleteComponent41.og" "deleteComponent42.ig";
connectAttr "deleteComponent42.og" "deleteComponent43.ig";
connectAttr "deleteComponent43.og" "deleteComponent44.ig";
connectAttr "deleteComponent44.og" "deleteComponent45.ig";
connectAttr "deleteComponent45.og" "deleteComponent46.ig";
connectAttr "deleteComponent46.og" "deleteComponent47.ig";
connectAttr "deleteComponent47.og" "deleteComponent48.ig";
connectAttr "deleteComponent48.og" "deleteComponent49.ig";
connectAttr "deleteComponent49.og" "deleteComponent50.ig";
connectAttr "deleteComponent50.og" "deleteComponent51.ig";
connectAttr "deleteComponent51.og" "deleteComponent52.ig";
connectAttr "deleteComponent52.og" "deleteComponent53.ig";
connectAttr "deleteComponent53.og" "deleteComponent54.ig";
connectAttr "deleteComponent54.og" "deleteComponent55.ig";
connectAttr "deleteComponent55.og" "deleteComponent56.ig";
connectAttr "deleteComponent56.og" "deleteComponent57.ig";
connectAttr "deleteComponent57.og" "deleteComponent58.ig";
connectAttr "deleteComponent58.og" "deleteComponent59.ig";
connectAttr "deleteComponent59.og" "deleteComponent60.ig";
connectAttr "deleteComponent60.og" "deleteComponent61.ig";
connectAttr "polySurfaceShape40.o" "polyUnite5.ip[0]";
connectAttr "polySurfaceShape41.o" "polyUnite5.ip[1]";
connectAttr "polySurfaceShape42.o" "polyUnite5.ip[2]";
connectAttr "polySurfaceShape43.o" "polyUnite5.ip[3]";
connectAttr "polySurfaceShape44.o" "polyUnite5.ip[4]";
connectAttr "polySurfaceShape45.o" "polyUnite5.ip[5]";
connectAttr "polySurfaceShape46.o" "polyUnite5.ip[6]";
connectAttr "polySurfaceShape47.o" "polyUnite5.ip[7]";
connectAttr "polySurfaceShape48.o" "polyUnite5.ip[8]";
connectAttr "polySurfaceShape49.o" "polyUnite5.ip[9]";
connectAttr "polySurfaceShape50.o" "polyUnite5.ip[10]";
connectAttr "pCubeShape9.o" "polyUnite5.ip[11]";
connectAttr "pCubeShape10.o" "polyUnite5.ip[12]";
connectAttr "polySurfaceShape40.wm" "polyUnite5.im[0]";
connectAttr "polySurfaceShape41.wm" "polyUnite5.im[1]";
connectAttr "polySurfaceShape42.wm" "polyUnite5.im[2]";
connectAttr "polySurfaceShape43.wm" "polyUnite5.im[3]";
connectAttr "polySurfaceShape44.wm" "polyUnite5.im[4]";
connectAttr "polySurfaceShape45.wm" "polyUnite5.im[5]";
connectAttr "polySurfaceShape46.wm" "polyUnite5.im[6]";
connectAttr "polySurfaceShape47.wm" "polyUnite5.im[7]";
connectAttr "polySurfaceShape48.wm" "polyUnite5.im[8]";
connectAttr "polySurfaceShape49.wm" "polyUnite5.im[9]";
connectAttr "polySurfaceShape50.wm" "polyUnite5.im[10]";
connectAttr "pCubeShape9.wm" "polyUnite5.im[11]";
connectAttr "pCubeShape10.wm" "polyUnite5.im[12]";
connectAttr "deleteComponent61.og" "groupParts52.ig";
connectAttr "groupId67.id" "groupParts52.gi";
connectAttr "polyUnite5.out" "groupParts53.ig";
connectAttr "groupId71.id" "groupParts53.gi";
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape38.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape44.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape45.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape47.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape48.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape49.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape50.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape51.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId51.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId53.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId65.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId69.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId71.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of towerCannon3.ma
