//Maya ASCII 2024 scene
//Name: CheckPointWS.ma
//Last modified: Wed, Nov 15, 2023 06:10:05 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "polyDisc" "modelingToolkit" "0.0.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "DB591649-426C-D8DF-6588-328139E533FC";
createNode transform -s -n "persp";
	rename -uid "48616902-45A0-74A0-CF74-67AA4387C0CC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.6136030085075657 4.3372603811671935 -9.3487238230468197 ;
	setAttr ".r" -type "double3" -20.738352730170298 2369.7999999991257 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8D8E5301-4A13-F009-DA72-1593286F8CA8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 11.630067533384423;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A5D9F835-4758-3F09-FC7A-01B107B4B1C6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2713FF7B-42DC-98C3-B0E6-2B8773FFB729";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "5E955B31-4710-9093-A2C3-21BDBEAB12AF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8085B22B-4A35-74DD-C792-23B73E90C15E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.3848374559208736;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "1486D34A-42A3-7F27-7E80-FBA52D712CDB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AE4F648A-430D-D7F8-D1F0-6F8B1EEDD0AF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "CheckPointBase";
	rename -uid "3CF547D5-4D3A-E1D2-0FF6-6FAEED4E791E";
createNode mesh -n "CheckPointBaseShape" -p "CheckPointBase";
	rename -uid "F7E6389D-4413-0620-C43A-C1BE71613D56";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 10 "f[5]" "f[13]" "f[24]" "f[30]" "f[37]" "f[44:47]" "f[64:67]" "f[80:83]" "f[92:95]" "f[108:111]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 11 "f[0:4]" "f[6:12]" "f[14:23]" "f[25:29]" "f[31:36]" "f[38:43]" "f[48:63]" "f[68:79]" "f[84:91]" "f[96:107]" "f[112:119]";
	setAttr ".pv" -type "double2" 0.49999998509883881 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 176 ".uvst[0].uvsp[0:175]" -type "float2" 0.37500003 0.19422886
		 0.40960988 0.62498736 0.59039009 0.1250125 0.625 0.55577105 0.5937531 0.32811874
		 0.45311871 0.28124687 0.54688126 0.46875313 0.40624687 0.42188126 0.40624687 0.32186937
		 0.375 0.55577105 0.40960994 0.12501253 0.55313063 0.28124687 0.625 0.19422889 0.5937531
		 0.42813063 0.44686937 0.46875313 0.59039009 0.62498748 0.44686943 0.28124687 0.5468812
		 0.28124687 0.5937531 0.32186943 0.5937531 0.42188126 0.55313063 0.46875313 0.45311874
		 0.46875313 0.40624687 0.42813063 0.40624687 0.32811874 0.45311871 0.28124687 0.54688126
		 0.28124687 0.5937531 0.32811874 0.5937531 0.42188129 0.54688126 0.46875313 0.45311874
		 0.46875316 0.40624687 0.42188126 0.40624687 0.32811874 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.37500003 0.19422886
		 0.40624687 0.32186937 0.40624687 0.42813063 0.375 0.55577105 0.44686943 0.28124687
		 0.40960994 0.12501253 0.59039009 0.1250125 0.55313063 0.28124687 0.5937531 0.32186943
		 0.625 0.19422889 0.625 0.55577105 0.5937531 0.42813063 0.40960988 0.62498736 0.44686937
		 0.46875313 0.55313063 0.46875313 0.59039009 0.62498748 0.37500003 0.19422886 0.40960994
		 0.12501253 0.44686943 0.28124687 0.40624687 0.32186937 0.40624687 0.42813063 0.44686937
		 0.46875313 0.40960988 0.62498736 0.375 0.55577105 0.5937531 0.32186943 0.55313063
		 0.28124687 0.59039009 0.1250125 0.625 0.19422889 0.55313063 0.46875313 0.5937531
		 0.42813063 0.625 0.55577105 0.59039009 0.62498748 0.37500003 0.19422886 0.40960994
		 0.12501253 0.44686943 0.28124687 0.40624687 0.32186937 0.40624687 0.42813063 0.44686937
		 0.46875313 0.40960988 0.62498736 0.375 0.55577105 0.5937531 0.32186943 0.55313063
		 0.28124687 0.59039009 0.1250125 0.625 0.19422889 0.55313063 0.46875313 0.5937531
		 0.42813063 0.625 0.55577105 0.59039009 0.62498748 0.37500003 0.19422886 0.40624687
		 0.32186937 0.40624687 0.42813063 0.375 0.55577105 0.44686943 0.28124687 0.40960994
		 0.12501253 0.59039009 0.1250125 0.55313063 0.28124687 0.5937531 0.32186943 0.625
		 0.19422889 0.625 0.55577105 0.5937531 0.42813063 0.40960988 0.62498736 0.44686937
		 0.46875313 0.55313063 0.46875313 0.59039009 0.62498748 0.37500003 0.19422886 0.40624687
		 0.32186937 0.40624687 0.42813063 0.375 0.55577105 0.44686943 0.28124687 0.40960994
		 0.12501253 0.59039009 0.1250125 0.55313063 0.28124687 0.5937531 0.32186943 0.625
		 0.19422889 0.625 0.55577105 0.5937531 0.42813063 0.40960988 0.62498736 0.44686937
		 0.46875313 0.55313063 0.46875313 0.59039009 0.62498748;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 128 ".pt[0:127]" -type "float3"  -1.273115 0 1.7605851 -1.7605851 
		0 1.273115 -1.1250374 0 0.63756752 -0.63756752 0 1.1250374 -0.63756752 0 -1.1250374 
		-1.1250374 0 -0.63756752 -1.7605851 0 -1.273115 -1.273115 0 -1.7605851 0.63756752 
		0 1.1250374 1.1250374 0 0.63756752 1.7605851 0 1.273115 1.273115 0 1.7605851 1.1250374 
		0 -0.63756752 0.63756752 0 -1.1250374 1.273115 0 -1.7605851 1.7605851 0 -1.273115 
		0.48756748 0 0.97503746 0.97503746 0 0.48756748 -0.97503746 0 0.48756748 -0.48756748 
		0 0.97503746 0.97503746 0 -0.48756748 0.48756748 0 -0.97503746 -0.48756748 0 -0.97503746 
		-0.97503746 0 -0.48756748 0.48756748 0 0.97503746 0.97503746 0 0.48756748 -0.97503746 
		0 0.48756748 -0.48756748 0 0.97503746 0.97503746 0 -0.48756748 0.48756748 0 -0.97503746 
		-0.48756748 0 -0.97503746 -0.97503746 0 -0.48756748 -1.2701333 0 1.7432506 1.2701333 
		0 1.7432506 -1.7432506 0 -1.2701333 -1.7432506 0 1.2701333 1.7432506 0 1.2701333 
		1.7432506 0 -1.2701333 1.2701333 0 -1.7432506 -1.2701333 0 -1.7432506 -0.63756752 
		0 1.1250374 -1.1250374 0 0.63756752 -0.63756752 0 -1.1250374 -1.1250374 0 -0.63756752 
		0.63756752 0 1.1250374 1.1250374 0 0.63756752 1.1250374 0 -0.63756752 0.63756752 
		0 -1.1250374 -1.107668 0 0.63756752 -1.7432158 0 1.273115 -1.107668 0 -0.63756752 
		-1.7432158 0 -1.273115 -1.273115 0 1.7432158 -0.63756752 0 1.107668 1.273115 0 1.7432158 
		0.63756752 0 1.107668 1.7432158 0 1.273115 1.107668 0 0.63756752 1.7432158 0 -1.273115 
		1.107668 0 -0.63756752 -0.63756752 0 -1.107668 -1.273115 0 -1.7432158 0.63756752 
		0 -1.107668 1.273115 0 -1.7432158 -1.657077 0 1.2756732 -1.2756732 0 1.6570771 -0.74107552 
		0 1.1224794 -1.1224794 0 0.74107552 -0.74107552 0 -1.1224794 -1.1224794 0 -0.74107552 
		-1.2756732 0 -1.6570771 -1.657077 0 -1.2756732 0.74107552 0 1.1224794 1.1224794 0 
		0.74107552 1.2756732 0 1.6570771 1.657077 0 1.2756732 1.1224794 0 -0.74107552 0.74107552 
		0 -1.1224794 1.657077 0 -1.2756732 1.2756732 0 -1.6570771 -1.6523684 0 1.2709647 
		-1.2709647 0 1.6523685 -0.73636705 0 1.1177711 -1.1177711 0 0.73636705 -0.73636705 
		0 -1.1177711 -1.1177711 0 -0.73636705 -1.2709647 0 -1.6523685 -1.6523684 0 -1.2709647 
		0.73636705 0 1.1177711 1.1177711 0 0.73636705 1.2709647 0 1.6523685 1.6523684 0 1.2709647 
		1.1177711 0 -0.73636705 0.73636705 0 -1.1177711 1.6523684 0 -1.2709647 1.2709647 
		0 -1.6523685 -1.1759102 0 0.60440958 -1.6749734 0 1.1034725 -1.1759102 0 -0.60440958 
		-1.6749734 0 -1.1034725 -1.1034725 0 1.6749734 -0.60440958 0 1.1759102 1.1034725 
		0 1.6749734 0.60440958 0 1.1759102 1.6749734 0 1.1034725 1.1759102 0 0.60440958 1.6749734 
		0 -1.1034725 1.1759102 0 -0.60440958 -0.60440958 0 -1.1759102 -1.1034725 0 -1.6749734 
		0.60440958 0 -1.1759102 1.1034725 0 -1.6749734 -1.1939771 0 0.60440958 -1.6930404 
		0 1.1034725 -1.1939771 0 -0.60440958 -1.6930404 0 -1.1034725 -1.1034725 0 1.6930404 
		-0.60440958 0 1.1939771 1.1034725 0 1.6930404 0.60440958 0 1.1939771 1.6930404 0 
		1.1034725 1.1939771 0 0.60440958 1.6930404 0 -1.1034725 1.1939771 0 -0.60440958 -0.60440958 
		0 -1.1939771 -1.1034725 0 -1.6930404 0.60440958 0 -1.1939771 1.1034725 0 -1.6930404;
	setAttr -s 128 ".vt[0:127]"  -0.42437169 4.9999999e-05 0.58686167 -0.58686167 4.9999999e-05 0.42437169
		 -0.37501249 0.3863883 0.21252251 -0.21252251 0.3863883 0.37501249 -0.21252251 0.3863883 -0.37501249
		 -0.37501249 0.3863883 -0.21252251 -0.58686167 4.9999999e-05 -0.42437169 -0.42437169 4.9999999e-05 -0.58686167
		 0.21252251 0.3863883 0.37501249 0.37501249 0.3863883 0.21252251 0.58686167 4.9999999e-05 0.42437169
		 0.42437169 4.9999999e-05 0.58686167 0.37501249 0.3863883 -0.21252251 0.21252251 0.3863883 -0.37501249
		 0.42437169 4.9999999e-05 -0.58686167 0.58686167 4.9999999e-05 -0.42437169 0.16252249 0.3863883 0.32501248
		 0.32501248 0.3863883 0.16252249 -0.32501248 0.3863883 0.16252249 -0.16252249 0.3863883 0.32501248
		 0.32501248 0.3863883 -0.16252249 0.16252249 0.3863883 -0.32501248 -0.16252249 0.3863883 -0.32501248
		 -0.32501248 0.3863883 -0.16252249 0.16252249 0.03900978 0.32501248 0.32501248 0.03900978 0.16252249
		 -0.32501248 0.03900978 0.16252249 -0.16252249 0.03900978 0.32501248 0.32501248 0.03900978 -0.16252249
		 0.16252249 0.03900978 -0.32501248 -0.16252249 0.03900978 -0.32501248 -0.32501248 0.03900978 -0.16252249
		 -0.42337775 -0.2328977 0.58108354 0.42337775 -0.2328977 0.58108354 -0.58108354 -0.23289768 -0.42337775
		 -0.58108354 -0.23289768 0.42337775 0.58108354 -0.23289768 0.42337775 0.58108354 -0.23289768 -0.42337775
		 0.42337775 -0.2328977 -0.58108354 -0.42337775 -0.2328977 -0.58108354 -0.21252251 0.3863883 0.37501249
		 -0.37501249 0.3863883 0.21252251 -0.21252251 0.3863883 -0.37501249 -0.37501249 0.3863883 -0.21252251
		 0.21252251 0.3863883 0.37501249 0.37501249 0.3863883 0.21252251 0.37501249 0.3863883 -0.21252251
		 0.21252251 0.3863883 -0.37501249 -0.36922267 0.33559078 0.21252251 -0.58107191 -0.050747547 0.42437169
		 -0.36922267 0.33559078 -0.21252251 -0.58107191 -0.050747547 -0.42437169 -0.42437169 -0.050747547 0.58107191
		 -0.21252251 0.33559078 0.36922267 0.42437169 -0.050747547 0.58107191 0.21252251 0.33559078 0.36922267
		 0.58107191 -0.050747547 0.42437169 0.36922267 0.33559078 0.21252251 0.58107191 -0.050747547 -0.42437169
		 0.36922267 0.33559078 -0.21252251 -0.21252251 0.33559078 -0.36922267 -0.42437169 -0.050747547 -0.58107191
		 0.21252251 0.33559078 -0.36922267 0.42437169 -0.050747547 -0.58107191 -0.55235898 0.030732842 0.42522436
		 -0.42522436 0.03073285 0.55235904 -0.24702516 0.35570547 0.37415981 -0.37415981 0.35570544 0.24702516
		 -0.24702516 0.35570547 -0.37415981 -0.37415981 0.35570544 -0.24702516 -0.42522436 0.03073285 -0.55235904
		 -0.55235898 0.030732842 -0.42522436 0.24702516 0.35570547 0.37415981 0.37415981 0.35570544 0.24702516
		 0.42522436 0.03073285 0.55235904 0.55235898 0.030732842 0.42522436 0.37415981 0.35570544 -0.24702516
		 0.24702516 0.35570547 -0.37415981 0.55235898 0.030732842 -0.42522436 0.42522436 0.03073285 -0.55235904
		 -0.55078948 0.0031929957 0.42365491 -0.42365491 0.0031930031 0.55078954 -0.24545568 0.32816562 0.37259036
		 -0.37259036 0.32816559 0.24545568 -0.24545568 0.32816562 -0.37259036 -0.37259036 0.32816559 -0.24545568
		 -0.42365491 0.0031930031 -0.55078954 -0.55078948 0.0031929957 -0.42365491 0.24545568 0.32816562 0.37259036
		 0.37259036 0.32816559 0.24545568 0.42365491 0.0031930031 0.55078954 0.55078948 0.0031929957 0.42365491
		 0.37259036 0.32816559 -0.24545568 0.24545568 0.32816562 -0.37259036 0.55078948 0.0031929957 -0.42365491
		 0.42365491 0.0031930031 -0.55078954 -0.3919701 0.29410747 0.20146985 -0.55832446 -0.0092642196 0.36782417
		 -0.3919701 0.29410747 -0.20146985 -0.55832446 -0.0092642196 -0.36782417 -0.36782417 -0.0092642494 0.55832446
		 -0.20146985 0.29410747 0.3919701 0.36782417 -0.0092642494 0.55832446 0.20146985 0.29410747 0.3919701
		 0.55832446 -0.0092642196 0.36782417 0.3919701 0.29410747 0.20146985 0.55832446 -0.0092642196 -0.36782417
		 0.3919701 0.29410747 -0.20146985 -0.20146985 0.29410747 -0.3919701 -0.36782417 -0.0092642494 -0.55832446
		 0.20146985 0.29410747 -0.3919701 0.36782417 -0.0092642494 -0.55832446 -0.39799237 0.34694481 0.20146985
		 -0.56434679 0.043573122 0.36782417 -0.39799237 0.34694481 -0.20146985 -0.56434679 0.043573122 -0.36782417
		 -0.36782417 0.043573093 0.56434679 -0.20146985 0.34694481 0.39799237 0.36782417 0.043573093 0.56434679
		 0.20146985 0.34694481 0.39799237 0.56434679 0.043573122 0.36782417 0.39799237 0.34694481 0.20146985
		 0.56434679 0.043573122 -0.36782417 0.39799237 0.34694481 -0.20146985 -0.20146985 0.34694481 -0.39799237
		 -0.36782417 0.043573093 -0.56434679 0.20146985 0.34694481 -0.39799237 0.36782417 0.043573093 -0.56434679;
	setAttr -s 248 ".ed";
	setAttr ".ed[0:165]"  0 11 0 6 1 0 10 15 0 14 7 0 24 27 0 26 31 0 28 25 0
		 30 29 0 1 0 0 0 3 0 3 2 0 2 1 0 3 19 1 19 18 0 18 2 1 4 5 0 5 23 1 23 22 0 22 4 1
		 4 7 0 7 6 0 6 5 0 8 9 0 9 17 1 17 16 0 16 8 1 8 11 0 11 10 0 10 9 0 12 13 0 13 21 1
		 21 20 0 20 12 1 12 15 0 15 14 0 14 13 0 17 25 0 25 24 0 24 16 0 19 27 0 27 26 0 26 18 0
		 21 29 0 29 28 0 28 20 0 23 31 0 31 30 0 30 22 0 2 5 0 8 3 0 12 9 0 4 13 0 16 19 0
		 20 17 0 22 21 0 18 23 0 0 32 0 11 33 0 32 33 0 6 34 0 1 35 0 34 35 0 10 36 0 15 37 0
		 36 37 0 14 38 0 7 39 0 38 39 0 35 32 0 39 34 0 33 36 0 37 38 0 3 40 0 2 41 0 40 41 0
		 4 42 0 5 43 0 42 43 0 8 44 0 9 45 0 44 45 0 12 46 0 13 47 0 46 47 0 41 43 0 44 40 0
		 46 45 0 42 47 0 2 48 0 1 49 0 48 49 0 5 50 0 48 50 0 6 51 0 51 50 0 51 49 0 0 52 0
		 3 53 0 52 53 0 11 54 0 52 54 0 8 55 0 55 54 0 55 53 0 10 56 0 9 57 0 56 57 0 15 58 0
		 56 58 0 12 59 0 59 58 0 59 57 0 4 60 0 7 61 0 60 61 0 13 62 0 60 62 0 14 63 0 63 62 0
		 63 61 0 1 64 1 0 65 1 64 65 0 3 66 1 65 66 0 2 67 1 66 67 0 67 64 0 4 68 1 5 69 1
		 68 69 0 7 70 1 68 70 0 6 71 1 70 71 0 71 69 0 8 72 1 9 73 1 72 73 0 11 74 1 72 74 0
		 10 75 1 74 75 0 75 73 0 12 76 1 13 77 1 76 77 0 15 78 1 76 78 0 14 79 1 78 79 0 79 77 0
		 64 80 0 65 81 0 80 81 0 66 82 0 81 82 0 67 83 0 82 83 0 83 80 0 68 84 0 69 85 0 84 85 0
		 70 86 0 84 86 0 71 87 0;
	setAttr ".ed[166:247]" 86 87 0 87 85 0 72 88 0 73 89 0 88 89 0 74 90 0 88 90 0
		 75 91 0 90 91 0 91 89 0 76 92 0 77 93 0 92 93 0 78 94 0 92 94 0 79 95 0 94 95 0 95 93 0
		 48 96 1 49 97 1 96 97 0 50 98 1 96 98 0 51 99 1 99 98 0 99 97 0 52 100 1 53 101 1
		 100 101 0 54 102 1 100 102 0 55 103 1 103 102 0 103 101 0 56 104 1 57 105 1 104 105 0
		 58 106 1 104 106 0 59 107 1 107 106 0 107 105 0 60 108 1 61 109 1 108 109 0 62 110 1
		 108 110 0 63 111 1 111 110 0 111 109 0 96 112 0 97 113 0 112 113 0 98 114 0 112 114 0
		 99 115 0 115 114 0 115 113 0 100 116 0 101 117 0 116 117 0 102 118 0 116 118 0 103 119 0
		 119 118 0 119 117 0 104 120 0 105 121 0 120 121 0 106 122 0 120 122 0 107 123 0 123 122 0
		 123 121 0 108 124 0 109 125 0 124 125 0 110 126 0 124 126 0 111 127 0 127 126 0 127 125 0;
	setAttr -s 120 -ch 480 ".fc[0:119]" -type "polyFaces" 
		f 4 154 156 158 159
		mu 0 4 128 129 130 131
		f 4 -11 12 13 14
		mu 0 4 8 16 24 23
		f 4 15 16 17 18
		mu 0 4 14 22 30 21
		f 4 -163 164 166 167
		mu 0 4 132 133 134 135
		f 4 22 23 24 25
		mu 0 4 11 18 26 17
		f 4 -171 172 174 175
		mu 0 4 136 137 138 139
		f 4 29 30 31 32
		mu 0 4 13 20 28 19
		f 4 -179 180 182 183
		mu 0 4 140 141 142 143
		f 4 -25 36 37 38
		mu 0 4 17 26 4 25
		f 4 -14 39 40 41
		mu 0 4 23 24 5 31
		f 4 -32 42 43 44
		mu 0 4 19 28 6 27
		f 4 -18 45 46 47
		mu 0 4 21 30 7 29
		f 4 -219 220 -223 223
		mu 0 4 160 161 162 163
		f 4 -227 228 -231 231
		mu 0 4 164 165 166 167
		f 4 -235 236 -239 239
		mu 0 4 168 169 170 171
		f 4 -243 244 -247 247
		mu 0 4 172 173 174 175
		f 4 -50 -26 52 -13
		mu 0 4 16 11 17 24
		f 4 -51 -33 53 -24
		mu 0 4 18 13 19 26
		f 4 -52 -19 54 -31
		mu 0 4 20 14 21 28
		f 4 -49 -15 55 -17
		mu 0 4 22 8 23 30
		f 4 -53 -39 4 -40
		mu 0 4 24 17 25 5
		f 4 -54 -45 6 -37
		mu 0 4 26 19 27 4
		f 4 -55 -48 7 -43
		mu 0 4 28 21 29 6
		f 4 -56 -42 5 -46
		mu 0 4 30 23 31 7
		f 4 -1 56 58 -58
		mu 0 4 32 33 34 35
		f 4 -2 59 61 -61
		mu 0 4 36 37 38 39
		f 4 -3 62 64 -64
		mu 0 4 40 41 42 43
		f 4 -4 65 67 -67
		mu 0 4 44 45 46 47
		f 4 -9 60 68 -57
		mu 0 4 48 49 50 51
		f 4 -21 66 69 -60
		mu 0 4 52 53 54 55
		f 4 -28 57 70 -63
		mu 0 4 56 57 58 59
		f 4 -35 63 71 -66
		mu 0 4 60 61 62 63
		f 4 10 73 -75 -73
		mu 0 4 64 65 66 67
		f 4 15 76 -78 -76
		mu 0 4 68 69 70 71
		f 4 22 79 -81 -79
		mu 0 4 72 73 74 75
		f 4 29 82 -84 -82
		mu 0 4 76 77 78 79
		f 4 48 76 -85 -74
		mu 0 4 80 81 82 83
		f 4 49 72 -86 -79
		mu 0 4 84 85 86 87
		f 4 50 79 -87 -82
		mu 0 4 88 89 90 91
		f 4 51 82 -88 -76
		mu 0 4 92 93 94 95
		f 4 -12 88 90 -90
		mu 0 4 0 8 97 96
		f 4 48 91 -93 -89
		mu 0 4 8 22 98 97
		f 4 -22 93 94 -92
		mu 0 4 22 9 99 98
		f 4 1 89 -96 -94
		mu 0 4 9 0 96 99
		f 4 -10 96 98 -98
		mu 0 4 16 10 101 100
		f 4 0 99 -101 -97
		mu 0 4 10 2 102 101
		f 4 -27 101 102 -100
		mu 0 4 2 11 103 102
		f 4 49 97 -104 -102
		mu 0 4 11 16 100 103
		f 4 -29 104 106 -106
		mu 0 4 18 12 105 104
		f 4 2 107 -109 -105
		mu 0 4 12 3 106 105
		f 4 -34 109 110 -108
		mu 0 4 3 13 107 106
		f 4 50 105 -112 -110
		mu 0 4 13 18 104 107
		f 4 -20 112 114 -114
		mu 0 4 1 14 109 108
		f 4 51 115 -117 -113
		mu 0 4 14 20 110 109
		f 4 -36 117 118 -116
		mu 0 4 20 15 111 110
		f 4 3 113 -120 -118
		mu 0 4 15 1 108 111
		f 4 8 121 -123 -121
		mu 0 4 0 10 113 112
		f 4 9 123 -125 -122
		mu 0 4 10 16 114 113
		f 4 10 125 -127 -124
		mu 0 4 16 8 115 114
		f 4 11 120 -128 -126
		mu 0 4 8 0 112 115
		f 4 -16 128 130 -130
		mu 0 4 22 14 117 116
		f 4 19 131 -133 -129
		mu 0 4 14 1 118 117
		f 4 20 133 -135 -132
		mu 0 4 1 9 119 118
		f 4 21 129 -136 -134
		mu 0 4 9 22 116 119
		f 4 -23 136 138 -138
		mu 0 4 18 11 121 120
		f 4 26 139 -141 -137
		mu 0 4 11 2 122 121
		f 4 27 141 -143 -140
		mu 0 4 2 12 123 122
		f 4 28 137 -144 -142
		mu 0 4 12 18 120 123
		f 4 -30 144 146 -146
		mu 0 4 20 13 125 124
		f 4 33 147 -149 -145
		mu 0 4 13 3 126 125
		f 4 34 149 -151 -148
		mu 0 4 3 15 127 126
		f 4 35 145 -152 -150
		mu 0 4 15 20 124 127
		f 4 122 153 -155 -153
		mu 0 4 112 113 129 128
		f 4 124 155 -157 -154
		mu 0 4 113 114 130 129
		f 4 126 157 -159 -156
		mu 0 4 114 115 131 130
		f 4 127 152 -160 -158
		mu 0 4 115 112 128 131
		f 4 -131 160 162 -162
		mu 0 4 116 117 133 132
		f 4 132 163 -165 -161
		mu 0 4 117 118 134 133
		f 4 134 165 -167 -164
		mu 0 4 118 119 135 134
		f 4 135 161 -168 -166
		mu 0 4 119 116 132 135
		f 4 -139 168 170 -170
		mu 0 4 120 121 137 136
		f 4 140 171 -173 -169
		mu 0 4 121 122 138 137
		f 4 142 173 -175 -172
		mu 0 4 122 123 139 138
		f 4 143 169 -176 -174
		mu 0 4 123 120 136 139
		f 4 -147 176 178 -178
		mu 0 4 124 125 141 140
		f 4 148 179 -181 -177
		mu 0 4 125 126 142 141
		f 4 150 181 -183 -180
		mu 0 4 126 127 143 142
		f 4 151 177 -184 -182
		mu 0 4 127 124 140 143
		f 4 -91 184 186 -186
		mu 0 4 96 97 145 144
		f 4 92 187 -189 -185
		mu 0 4 97 98 146 145
		f 4 -95 189 190 -188
		mu 0 4 98 99 147 146
		f 4 95 185 -192 -190
		mu 0 4 99 96 144 147
		f 4 -99 192 194 -194
		mu 0 4 100 101 149 148
		f 4 100 195 -197 -193
		mu 0 4 101 102 150 149
		f 4 -103 197 198 -196
		mu 0 4 102 103 151 150
		f 4 103 193 -200 -198
		mu 0 4 103 100 148 151
		f 4 -107 200 202 -202
		mu 0 4 104 105 153 152
		f 4 108 203 -205 -201
		mu 0 4 105 106 154 153
		f 4 -111 205 206 -204
		mu 0 4 106 107 155 154
		f 4 111 201 -208 -206
		mu 0 4 107 104 152 155
		f 4 -115 208 210 -210
		mu 0 4 108 109 157 156
		f 4 116 211 -213 -209
		mu 0 4 109 110 158 157
		f 4 -119 213 214 -212
		mu 0 4 110 111 159 158
		f 4 119 209 -216 -214
		mu 0 4 111 108 156 159
		f 4 -187 216 218 -218
		mu 0 4 144 145 161 160
		f 4 188 219 -221 -217
		mu 0 4 145 146 162 161
		f 4 -191 221 222 -220
		mu 0 4 146 147 163 162
		f 4 191 217 -224 -222
		mu 0 4 147 144 160 163
		f 4 -195 224 226 -226
		mu 0 4 148 149 165 164
		f 4 196 227 -229 -225
		mu 0 4 149 150 166 165
		f 4 -199 229 230 -228
		mu 0 4 150 151 167 166
		f 4 199 225 -232 -230
		mu 0 4 151 148 164 167
		f 4 -203 232 234 -234
		mu 0 4 152 153 169 168
		f 4 204 235 -237 -233
		mu 0 4 153 154 170 169
		f 4 -207 237 238 -236
		mu 0 4 154 155 171 170
		f 4 207 233 -240 -238
		mu 0 4 155 152 168 171
		f 4 -211 240 242 -242
		mu 0 4 156 157 173 172
		f 4 212 243 -245 -241
		mu 0 4 157 158 174 173
		f 4 -215 245 246 -244
		mu 0 4 158 159 175 174
		f 4 215 241 -248 -246
		mu 0 4 159 156 172 175;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "CheckPointSurface";
	rename -uid "41A55417-4225-B0DB-3865-19AFA01EFBBE";
	setAttr ".t" -type "double3" 0 0.1017242656660784 0 ;
	setAttr ".rp" -type "double3" 0 0.2706762812797035 0 ;
	setAttr ".sp" -type "double3" 0 0.2706762812797035 0 ;
createNode mesh -n "CheckPointSurfaceShape" -p "CheckPointSurface";
	rename -uid "85433DF6-4859-2320-D934-A5AD523F674A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  0.21351135 0 -0.21351135 
		-0.21351135 0 -0.21351135 0.21351135 0 0.21351135 -0.21351135 0 0.21351135 0 0 -0.44990698 
		0 0 -0.44990698 0 0 0.44990686 0 0 0.44990686 0.41757214 0 0 0.41757214 0 -0.44990698 
		0.41757208 0 0.44990686 0.41757208 0 0 -0.41757208 0 0 -0.41757208 0 -0.44990698 
		-0.41757208 0 0.44990686 -0.41757208 0 0;
createNode mesh -n "polySurfaceShape1" -p "CheckPointSurface";
	rename -uid "A1F570E7-4EE0-13CB-0F94-34A70D62E2DD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.81610411 0.27067629 0.81610411 
		0.81610411 0.27067629 0.81610411 -0.81610411 0.27067629 -0.81610411 0.81610411 0.27067629 
		-0.81610411;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WorldShard";
	rename -uid "32751095-41D5-845D-33B2-3CBA48A379F1";
	setAttr ".t" -type "double3" 0 0.17730551357416291 0 ;
	setAttr ".s" -type "double3" 1.3287831707209543 1.3287831707209543 1.3287831707209543 ;
createNode mesh -n "WorldShardShape" -p "WorldShard";
	rename -uid "DE586D28-4563-95E4-1357-509F1DCDFE1B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.40689891576766968 0.98492318391799927 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt";
	setAttr ".pt[18]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[19]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[20]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[21]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[22]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[24]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[25]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[26]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[27]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[28]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[29]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[30]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[31]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[32]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[33]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[34]" -type "float3" 0 0.19283719 0 ;
	setAttr ".pt[35]" -type "float3" 0 0.19283719 0 ;
createNode transform -n "CheckPointBottom";
	rename -uid "D198D8F5-4899-E7B2-58A7-B49A9CF54C66";
	setAttr ".t" -type "double3" 0 0.05 0 ;
	setAttr ".s" -type "double3" 2.6979205010130864 2.6979205010130864 2.6979205010130864 ;
createNode mesh -n "CheckPointBottomShape" -p "CheckPointBottom";
	rename -uid "30C7516A-4A49-D7AC-F763-F0807B6B275E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D22659B5-4640-EE90-220F-43B3C3E17428";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9A42E971-4A3E-5973-FE9E-7BA27F8C77C8";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "234C1B75-483D-3BB7-6034-21AD774F8D37";
createNode displayLayerManager -n "layerManager";
	rename -uid "66778695-459A-B218-C370-0384E177D9BC";
createNode displayLayer -n "defaultLayer";
	rename -uid "0CE6A039-4CF5-04D7-2610-498FEB8D35A1";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "62674ECE-4016-7716-6BAA-6FAD44542EE5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "463442ED-4E91-C42C-21AE-ABB744696F92";
	setAttr ".g" yes;
createNode blinn -n "CheckpointBase";
	rename -uid "FAC7229B-41F4-4FB0-CAA1-A3B63769DEE8";
	setAttr ".c" -type "float3" 0.26230001 0.3344 0.3344 ;
	setAttr ".rfl" 0.73426574468612671;
	setAttr ".sro" 0.8041958212852478;
createNode shadingEngine -n "blinn1SG";
	rename -uid "A419E4EC-4466-EA05-2653-F98B17ADAE2E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "785FE0B4-4FA6-5460-03F9-22938B44DA10";
createNode polySplitRing -n "polySplitRing1";
	rename -uid "09A0CA19-4534-B41F-6A42-8FB8551D39DD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1:2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.1017242656660784 0 1;
	setAttr ".wt" 0.066206440329551697;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "7DA133D0-49A1-077D-9861-2489B15FDFA3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0]" "e[3]" "e[6]" "e[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.1017242656660784 0 1;
	setAttr ".wt" 0.040991939604282379;
	setAttr ".re" 3;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode shadingEngine -n "lambert1SG";
	rename -uid "7191A6E4-43B6-F346-713E-FBBAE82429F8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "1220D778-41D3-966A-0543-31B1BFAB7E9A";
createNode shadingEngine -n "blinn2SG";
	rename -uid "289B2FB4-4614-4608-3063-CB967B3C5598";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "ADC38192-4EAB-A8E2-6396-8EB5B1B43348";
createNode polyDisc -n "polyDisc1";
	rename -uid "32B49DB6-4439-3BF5-9156-B68D1F4246E0";
	setAttr ".sides" 9;
	setAttr ".subdivisions" 1;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "C4C4E35F-4151-A6D4-170E-6290D179376D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:1]" "e[4:5]" "e[7:8]" "e[10:11]" "e[13:14]" "e[16:17]" "e[19:20]" "e[22:23]" "e[25:26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 -0.030153722 ;
	setAttr ".rs" 56369;
	setAttr ".lt" -type "double3" 8.9257162551826917e-18 -5.4788862922600836e-17 -0.13175458862781103 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.98480772972106934 0 -1.0000001192092896 ;
	setAttr ".cbx" -type "double3" 0.98480772972106934 0 0.93969267606735229 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "CA3807EA-4D65-71B5-2A0D-3DB1035A19D4";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[3]" -type "float3" 8.5265128e-14 0 9.6857548e-08 ;
	setAttr ".tk[4]" -type "float3" 1.3634562e-06 0 -7.4505806e-08 ;
	setAttr ".tk[5]" -type "float3" -1.3634562e-06 0 -1.6391277e-07 ;
	setAttr ".tk[9]" -type "float3" 8.3792422e-08 0 -0.61031348 ;
	setAttr ".tk[10]" -type "float3" -0.40449917 0 -0.4630878 ;
	setAttr ".tk[11]" -type "float3" -0.61972845 0 -0.090299472 ;
	setAttr ".tk[12]" -type "float3" -0.54497999 0 0.33361995 ;
	setAttr ".tk[13]" -type "float3" -0.21522936 0 0.61031348 ;
	setAttr ".tk[14]" -type "float3" 0.21522945 0 0.61031353 ;
	setAttr ".tk[15]" -type "float3" 0.54498029 0 0.3336201 ;
	setAttr ".tk[16]" -type "float3" 0.61972874 0 -0.090299353 ;
	setAttr ".tk[17]" -type "float3" 0.40449893 0 -0.46308774 ;
	setAttr ".tk[18]" -type "float3" -3.8743019e-07 0 -2.2351742e-08 ;
	setAttr ".tk[19]" -type "float3" 3.2782555e-07 0 -8.9406967e-08 ;
	setAttr ".tk[20]" -type "float3" -1.6391277e-07 0 -1.4901161e-07 ;
	setAttr ".tk[21]" -type "float3" -7.1054274e-15 0 -2.682209e-07 ;
	setAttr ".tk[22]" -type "float3" -1.4901161e-08 0 -8.9406967e-08 ;
	setAttr ".tk[23]" -type "float3" -2.9802322e-07 0 -1.4901161e-07 ;
	setAttr ".tk[24]" -type "float3" 3.8743019e-07 0 -7.4505806e-09 ;
	setAttr ".tk[25]" -type "float3" -2.0861626e-07 0 0 ;
	setAttr ".tk[26]" -type "float3" -3.2782555e-07 0 0 ;
	setAttr ".tk[27]" -type "float3" 0 0 1.1920929e-07 ;
createNode polyPlane -n "polyPlane1";
	rename -uid "94424750-4708-4633-1464-BFBF4E641349";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "0B339E33-4F84-DB13-A139-0287369B09E3";
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.29919311619151434 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.29919311 -0.030153722 ;
	setAttr ".rs" 60976;
	setAttr ".lt" -type "double3" 0 0 0.12655017604163388 ;
	setAttr ".off" 0.10000000149011612;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.98480772972106934 0.29919311619151434 -1.0000001192092896 ;
	setAttr ".cbx" -type "double3" 0.98480772972106934 0.29919311619151434 0.93969267606735229 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "2F80D584-409A-775A-8B7A-09935BD2D2D0";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[19]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[32]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.27588591 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.27588591 0 ;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "FB293416-465F-2376-0D71-3DB3033131A1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.21181344477853215 0 1;
	setAttr ".a" 0;
createNode lambert -n "CheckPointBottomSurface";
	rename -uid "C2E7EB95-4F4B-6DE4-F770-078603C23537";
	setAttr ".c" -type "float3" 0.31959999 0.097599998 0.38350001 ;
	setAttr ".ambc" -type "float3" 0.15483871 0.15483871 0.15483871 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "88C08D5F-47F7-3C37-2082-5A9D0A3B9C4C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "73A28506-4BBD-117B-7129-6FA35B358A49";
createNode blinn -n "WorldShardSurface";
	rename -uid "85B66DD1-402D-2950-7C88-36987A744690";
	setAttr ".c" -type "float3" 0.30166602 1 0.16000003 ;
createNode shadingEngine -n "blinn3SG";
	rename -uid "3BED7360-403F-491D-FD8B-F893C335936C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "B63980E8-4307-9C44-ECB5-E093E9D5DC03";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "122D5750-4DB3-616A-9FDD-52A9A25C301A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -109.52380517172455 -837.67436768439075 ;
	setAttr ".tgi[0].vh" -type "double2" 892.25049533071342 329.34105455040827 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 200;
	setAttr ".tgi[0].ni[0].y" -340;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 155.71427917480469;
	setAttr ".tgi[0].ni[1].y" -41.428569793701172;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 278.57144165039062;
	setAttr ".tgi[0].ni[2].y" -70;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -151.42857360839844;
	setAttr ".tgi[0].ni[3].y" -41.428569793701172;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 704.28570556640625;
	setAttr ".tgi[0].ni[4].y" -345.71429443359375;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 397.14285278320312;
	setAttr ".tgi[0].ni[5].y" -345.71429443359375;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 145.71427917480469;
	setAttr ".tgi[0].ni[6].y" 284.28570556640625;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 452.85714721679688;
	setAttr ".tgi[0].ni[7].y" 284.28570556640625;
	setAttr ".tgi[0].ni[7].nvs" 1923;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B013AA51-462C-F5AA-DEFF-22BF8213E8B0";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 605\n            -height 358\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 604\n            -height 357\n            -sceneRenderFilter 0\n"
		+ "            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n"
		+ "            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 605\n            -height 357\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1016\n            -height 759\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n"
		+ "            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1016\\n    -height 759\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1016\\n    -height 759\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "EAC11E82-4004-BEF0-E16B-83868FCD3108";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
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
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.7058 1 0.77929997 ;
	setAttr ".it" -type "float3" 0.82580644 0.82580644 0.82580644 ;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
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
connectAttr "polySplitRing2.out" "CheckPointSurfaceShape.i";
connectAttr "polySoftEdge1.out" "WorldShardShape.i";
connectAttr "polyPlane1.out" "CheckPointBottomShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "CheckpointBase.oc" "blinn1SG.ss";
connectAttr "CheckPointBaseShape.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "CheckpointBase.msg" "materialInfo1.m";
connectAttr "polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "CheckPointSurfaceShape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "CheckPointSurfaceShape.wm" "polySplitRing2.mp";
connectAttr ":lambert1.oc" "lambert1SG.ss";
connectAttr "CheckPointSurfaceShape.iog" "lambert1SG.dsm" -na;
connectAttr "lambert1SG.msg" "materialInfo2.sg";
connectAttr ":lambert1.msg" "materialInfo2.m";
connectAttr "blinn2SG.msg" "materialInfo3.sg";
connectAttr "polyTweak1.out" "polyExtrudeEdge1.ip";
connectAttr "WorldShardShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyDisc1.output" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "WorldShardShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace1.out" "polySoftEdge1.ip";
connectAttr "WorldShardShape.wm" "polySoftEdge1.mp";
connectAttr "CheckPointBottomSurface.oc" "lambert2SG.ss";
connectAttr "CheckPointBottomShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo4.sg";
connectAttr "CheckPointBottomSurface.msg" "materialInfo4.m";
connectAttr "WorldShardSurface.oc" "blinn3SG.ss";
connectAttr "WorldShardShape.iog" "blinn3SG.dsm" -na;
connectAttr "blinn3SG.msg" "materialInfo5.sg";
connectAttr "WorldShardSurface.msg" "materialInfo5.m";
connectAttr "lambert1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "blinn2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "CheckpointBase.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "blinn3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "WorldShardSurface.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "CheckPointBottomSurface.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "CheckpointBase.msg" ":defaultShaderList1.s" -na;
connectAttr "CheckPointBottomSurface.msg" ":defaultShaderList1.s" -na;
connectAttr "WorldShardSurface.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of CheckPointWS.ma
