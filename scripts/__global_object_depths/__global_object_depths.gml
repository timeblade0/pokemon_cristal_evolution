function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // fire box
	global.__objectDepths[1] = 0; // water box
	global.__objectDepths[2] = 0; // ground box
	global.__objectDepths[3] = 0; // boy
	global.__objectDepths[4] = 0; // fire1
	global.__objectDepths[5] = 0; // fire2
	global.__objectDepths[6] = 0; // water1
	global.__objectDepths[7] = 0; // water2
	global.__objectDepths[8] = 0; // ground1
	global.__objectDepths[9] = 0; // ground2
	global.__objectDepths[10] = 0; // control
	global.__objectDepths[11] = 0; // hq control
	global.__objectDepths[12] = 0; // lava control
	global.__objectDepths[13] = 0; // water control
	global.__objectDepths[14] = 0; // ground control
	global.__objectDepths[15] = 0; // view
	global.__objectDepths[16] = 0; // title
	global.__objectDepths[17] = 0; // fire cristal
	global.__objectDepths[18] = 0; // water cristal
	global.__objectDepths[19] = 0; // earth cristal
	global.__objectDepths[20] = 0; // fireball u
	global.__objectDepths[21] = 0; // tornado fish l
	global.__objectDepths[22] = 0; // tornado fish r
	global.__objectDepths[23] = 0; // shock fish
	global.__objectDepths[24] = 0; // giant fish l
	global.__objectDepths[25] = 0; // hpbar
	global.__objectDepths[26] = 0; // revert
	global.__objectDepths[27] = 0; // fireball u launch
	global.__objectDepths[28] = 0; // explode
	global.__objectDepths[29] = 0; // junk block
	global.__objectDepths[30] = 0; // title
	global.__objectDepths[31] = 0; // fireball r
	global.__objectDepths[32] = 0; // fireball l
	global.__objectDepths[33] = 0; // bubble u
	global.__objectDepths[34] = 0; // bubble d
	global.__objectDepths[35] = 0; // bubble l
	global.__objectDepths[36] = 0; // bubble r
	global.__objectDepths[37] = 0; // rock r
	global.__objectDepths[38] = 0; // rock l
	global.__objectDepths[39] = 0; // h missle ene
	global.__objectDepths[40] = 0; // charged shot l
	global.__objectDepths[41] = 0; // lava select
	global.__objectDepths[42] = 0; // water select
	global.__objectDepths[43] = 0; // earth select
	global.__objectDepths[44] = 0; // wall
	global.__objectDepths[45] = 0; // 2 l
	global.__objectDepths[46] = 0; // 2 r
	global.__objectDepths[47] = 0; // roof
	global.__objectDepths[48] = 0; // lava
	global.__objectDepths[49] = 0; // ice
	global.__objectDepths[50] = 0; // door
	global.__objectDepths[51] = 0; // warp lava 1-2
	global.__objectDepths[52] = 0; // warp lava 2-3
	global.__objectDepths[53] = 0; // warp water 1-2
	global.__objectDepths[54] = 0; // warp ground 1-2
	global.__objectDepths[55] = 0; // press enter


	global.__objectNames[0] = "fire box";
	global.__objectNames[1] = "water box";
	global.__objectNames[2] = "ground box";
	global.__objectNames[3] = "boy";
	global.__objectNames[4] = "fire1";
	global.__objectNames[5] = "fire2";
	global.__objectNames[6] = "water1";
	global.__objectNames[7] = "water2";
	global.__objectNames[8] = "ground1";
	global.__objectNames[9] = "ground2";
	global.__objectNames[10] = "control";
	global.__objectNames[11] = "hq control";
	global.__objectNames[12] = "lava control";
	global.__objectNames[13] = "water control";
	global.__objectNames[14] = "ground control";
	global.__objectNames[15] = "view";
	global.__objectNames[16] = "title";
	global.__objectNames[17] = "fire cristal";
	global.__objectNames[18] = "water cristal";
	global.__objectNames[19] = "earth cristal";
	global.__objectNames[20] = "fireball u";
	global.__objectNames[21] = "tornado fish l";
	global.__objectNames[22] = "tornado fish r";
	global.__objectNames[23] = "shock fish";
	global.__objectNames[24] = "giant fish l";
	global.__objectNames[25] = "hpbar";
	global.__objectNames[26] = "revert";
	global.__objectNames[27] = "fireball u launch";
	global.__objectNames[28] = "explode";
	global.__objectNames[29] = "junk block";
	global.__objectNames[30] = "title";
	global.__objectNames[31] = "fireball r";
	global.__objectNames[32] = "fireball l";
	global.__objectNames[33] = "bubble u";
	global.__objectNames[34] = "bubble d";
	global.__objectNames[35] = "bubble l";
	global.__objectNames[36] = "bubble r";
	global.__objectNames[37] = "rock r";
	global.__objectNames[38] = "rock l";
	global.__objectNames[39] = "h missle ene";
	global.__objectNames[40] = "charged shot l";
	global.__objectNames[41] = "lava select";
	global.__objectNames[42] = "water select";
	global.__objectNames[43] = "earth select";
	global.__objectNames[44] = "wall";
	global.__objectNames[45] = "2 l";
	global.__objectNames[46] = "2 r";
	global.__objectNames[47] = "roof";
	global.__objectNames[48] = "lava";
	global.__objectNames[49] = "ice";
	global.__objectNames[50] = "door";
	global.__objectNames[51] = "warp lava 1-2";
	global.__objectNames[52] = "warp lava 2-3";
	global.__objectNames[53] = "warp water 1-2";
	global.__objectNames[54] = "warp ground 1-2";
	global.__objectNames[55] = "press enter";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
