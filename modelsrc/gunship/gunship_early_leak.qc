//2001 Gunship Remake
//Model by Xinus22. Minor QC edits by epicplayer.

$modelname gunship.mdl
$body "Body" "Gunship_reference_early.smd"
$surfaceprop "gunship"
$scale 1.0
$cdmaterials models/gunship
$mostlyopaque


$texturegroup "rotor"
{
{ "prop" }
{ "prop_off" }
}

//----- Attachments -----
$attachment "muzzle" "Gunship.Nose_Muzzle"	0 0 0 rigid
$attachment "exhaustl" "Gunship.Exhaust_L"	0 0 0 rigid
$attachment "exhaustr" "Gunship.Exhaust_R"	0 0 0 rigid
$attachment "bellygun" "Gunship.Belly_Weapon"	0 -16 0 rotate 0 -90 0 rigid
$attachment "rotor" "Gunship.Propeller" 	0 0 0 rotate 0 -180 90 rigid

//----- Hit boxes -----

$hboxset "default"

$hbox 0 "Gunship.Body"			-82.75  -35.50  -52.50    67.25   59.50   52.50
$hbox 0 "Gunship.Antenna_R"		-4.15   -4.74   -6.63    91.05    2.18    5.35
$hbox 0 "Gunship.Spine"			-9.30  -16.87  -30.08    70.70   38.13   29.92
$hbox 0 "Gunship.humerus_R"		-5.00   -7.50   -7.50    35.00    4.50    7.50
$hbox 0 "Gunship.CarpalsR"		-3.00   -2.51  -20.57    27.00    3.41    9.82
$hbox 0 "Gunship.Phalanges_R"	0.00   -3.73  -20.57    50.00    3.91    9.82
$hbox 0 "Gunship.humerus_L"	    -5.00   -7.50   -7.50    35.00    4.50    7.50
$hbox 0 "Gunship.Carpals_L"	    -3.00   -2.51   -9.82    27.00    3.41   20.57
$hbox 0 "Gunship.Phalanges_L"	0.00   -4.50   -9.82    50.00    2.50   20.57
$hbox 0 "Gunship.Nose"			-7.50  -14.24  -20.00    57.50   20.76   20.00
$hbox 0 "Gunship.Nose_Weapon"	-21.30   -6.00   -7.50    63.70    6.00    7.50
$hbox 0 "Gunship.Antenna_L"		-4.26   -4.67   -5.28    90.94    2.25    6.70
$hbox 0 "Gunship.Tail"			10.00  -17.44  -85.64   260.00   27.56   85.49

//----- Sequences -----
$sequence idle "Gunship_reference_early" fps 30
$sequence prop_turn "Prop_Turn_early" fps 30 LOOP ACT_GUNSHIP_PATROL 1
$sequence 9way_look "9way_head_turn" fps 30 
$sequence hit_rightside "hit_rightside" fps 30
$sequence hit_leftside "hit_leftside" fps 30
$weightlist body_only {  "Gunship.Body" 1.0 "Gunship.humerus_R" 0 "Gunship.humerus_L" 0 "Gunship.Belly_Weapon" 0 "Gunship.Belly_L" 0 "Gunship.Belly_R" 0 "Gunship.Propeller" 0 "Gunship.Antenna_R" 0 "Gunship.Antenna_L" 0 }
$sequence reload_nose_weapon "reload_exaggerated" weightlist body_only fps 30
$sequence fin_poses_early "fin_poses_early" fps 30
$weightlist fins { "Gunship.humerus_R" 1.0 "Gunship.humerus_L" 1.0 }
$sequence fin_ambience "fin_ambience" weightlist fins fps 30 LOOP
$weightlist cannon { "Gunship.Belly_Weapon" 1.0 "Gunship.Belly_L" 1.0 "Gunship.Belly_R" 1.0 }
$sequence belly_cannon "belly_cannon" fps 30
$weightlist scanner { "Gunship.Scanner" 1.0 }
$sequence scanning "scanning" weightlist scanner fps 30 LOOP
$sequence breathing "breathing" weightlist cannon fps 30 LOOP
$weightlist antenna { "Gunship.Antenna_R" 1.0 "Gunship.Antenna_L" 1.0 }
$sequence antenna_poses "antenna_poses" weightlist antenna fps 30


/*
//-----9way Head_Turn-----
$weightlist Head_Look { "Gunship.Spine" 1.0 }
$animation down_left "9way_head_turn" frame 0 0 weightlist Head_Look
$animation down_center "9way_head_turn" frame 1 1 weightlist Head_Look
$animation down_right "9way_head_turn" frame 2 2 weightlist Head_Look
$animation mid_left "9way_head_turn" frame 3 3 weightlist Head_Look
$animation mid_center "9way_head_turn" frame 4 4 weightlist Head_Look
$animation mid_right "9way_head_turn" frame 5 5 weightlist Head_Look
$animation up_left "9way_head_turn" frame 6 6 weightlist Head_Look
$animation up_center "9way_head_turn" frame 7 7 weightlist Head_Look
$animation up_right "9way_head_turn" frame 8 8 weightlist Head_Look
$sequence aim_all { 	down_left down_center down_right 
			mid_left mid_center mid_right 
			up_left up_center up_right 
			blend "yaw" 60 -60 blend "pitch" 60 -65 weightlist Head_Look autoplay }
*/

//----Body Flex----

$animation a_neutral "body_flex" frame 0 0 weightlist body_only

$cmdlist fixup_dirs {	
	alignto a_neutral
	subtract a_neutral 0
}

$animation a_up	 "body_flex" frame 1 1 cmdlist fixup_dirs weightlist body_only
$animation a_down  "body_flex" frame 2 2 cmdlist fixup_dirs weightlist body_only
$animation a_right "body_flex" frame 3 3 cmdlist fixup_dirs weightlist body_only
$animation a_left  "body_flex" frame 4 4 cmdlist fixup_dirs weightlist body_only

$sequence upndown { a_down a_up blend "flex_vert" -75 75 weightlist body_only } delta autoplay
$sequence rightnleft { a_left a_right blend "flex_horz" 75 -75 weightlist body_only } delta autoplay

//-----Fin Poses-----

$animation fin_neutral "fin_poses_early" frame 0 0
$animation fin_forward "fin_poses_early" frame 1 1 subtract fin_neutral 0
$animation fin_backward "fin_poses_early" frame 2 2 subtract fin_neutral 0
$animation fin_right "fin_poses_early" frame 3 3 subtract fin_neutral 0
$animation fin_left "fin_poses_early" frame 4 4 subtract fin_neutral 0

$sequence fin_front-back { fin_forward fin_backward blend "fin_accel" -1 1 weightlist fins } delta autoplay
$sequence fin_right-left { fin_right fin_left blend "fin_sway" -1 1 weightlist fins } delta autoplay

//-----Antenna Poses-----

$animation antenna_neutral "antenna_poses" frame 0 0
$animation antenna_forward "antenna_poses" frame 1 1 subtract antenna_neutral 0
$animation antenna_backward "antenna_poses" frame 2 2 subtract antenna_neutral 0
$animation antenna_right "antenna_poses" frame 3 3 subtract antenna_neutral 0
$animation antenna_left "antenna_poses" frame 4 4 subtract antenna_neutral 0

$sequence antenna_front-back { antenna_forward antenna_backward blend "antenna_accel" -1 1 weightlist antenna } delta autoplay
$sequence antenna_right-left { antenna_right antenna_left blend "antenna_sway" -1 1 weightlist antenna } delta autoplay


$include "ragdoll.qci"
$include "hitbox.qci"

//-----Custom Animations-----

//$sequence crashing body_flex ACT_GUNSHIP_CRASH 1 fps 3 loop //Gunship code has an activity for crashing, so let use it.

//-----LODs-----
/*
$lod 45
{
	replacemodel "Gunship_reference_early" "Gunship_lod_1_early" 
}

$lod 85
{
	replacemodel "Gunship_reference_early" "Gunship_lod_2_early" 
}

$lod 170
{
	replacemodel "Gunship_reference_early" "Gunship_lod_3_early" 
}

$lod 350
{
	replacemodel "Gunship_reference_early" "Gunship_lod_4_early" 
}

$shadowlod
{
	replacemodel "Gunship_reference_early" "Gunship_lod_4_early" 
}
*/

