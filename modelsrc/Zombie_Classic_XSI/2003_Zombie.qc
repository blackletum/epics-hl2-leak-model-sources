/*
==============================================================================

Zombie Classic
2003 QC remake by epicplayer

==============================================================================
*/

$modelname Zombie/Classic.mdl

$cdmaterials models\zombie_classic models\headcrab_classic
// whole body
$body studio "2003_meshes/Zombie_reference.smd"

//$bbox -13 -13 0 13 13 72

$eyeposition 0 0 64

/*
$attachment "headcrab" "ValveBiped.HC_Rear_Bone" -0.00 -0.00 0.00 rotate -0 0 0 rigid
$attachment "eyes" "ValveBiped.HC_Body_Bone" -0.00 -0.00 0.00 rotate 0 0 -50
$attachment "head" "ValveBiped.HC_Body_Bone" -0.00 -0.00 0.00 rotate 0 0 -50
$attachment "chest" "ValveBiped.Bip01_Spine4" -3.00 6.00 0.00 rotate 0 60 90
$attachment "maw" "ValveBiped.Bip01_Spine2" 0.00 8.00 0.00 rotate 0 90 90
$attachment Blood_Left "ValveBiped.Bip01_L_Finger2" 0 0 0 rigid
$attachment Blood_Right "ValveBiped.Bip01_R_Finger2" 0 0 0 rigid
*/

//$collapsebones
$mostlyopaque

$include "hitbox_torso.qci"
$include "hitbox_legs.qci"
$include "hitbox_head.qci"

//$include "..\humans\standardhierarchy.qci"
//$include "..\humans\standardikchains.qci"
//$include "..\humans\weaponmacros.qci"

$include "2003_Zombie_shared.qci"

$sequence Tantrum "Tantrum" FPS 30 rotate 180 LOOP ACT_ZOMBIE_TANTRUM 1
$sequence WallPound "WallPound" FPS 30 LOOP ACT_ZOMBIE_WALLPOUND 1 { event 22 14 } { event 22 35 }


//$pushd "..\Humans\Male"
$include "2003_ragdoll.qci"
//$popd


//Headcrab 1
$bodygroup headcrab1
{
blank
studio "2003_meshes/Headcrab_reference.smd"
}


$lod 10
{
	replacemodel "2003_meshes/Zombie_reference.smd" "2003_meshes/Zombie_reference_lod1.smd"
	//replacemodel "body1_model0.smd" "body1_model0_lod1.smd"
	replacemodel "2003_meshes/Headcrab_reference.smd" "2003_meshes/Headcrab_reference_lod1.smd"
}
$lod 20
{
	replacemodel "2003_meshes/Zombie_reference.smd" "2003_meshes/Zombie_reference_lod2.smd"
	//replacemodel "body1_model0.smd" "body1_model0_lod2.smd"
	replacemodel "2003_meshes/Headcrab_reference.smd" "2003_meshes/Headcrab_reference_lod2.smd"
}
$lod 35
{
	replacemodel "2003_meshes/Zombie_reference.smd" "2003_meshes/Zombie_reference_lod3.smd"
	//replacemodel "body1_model0.smd" "body1_model0_lod3.smd"
	replacemodel "2003_meshes/Headcrab_reference.smd" "2003_meshes/Headcrab_reference_lod3.smd"
}
$lod 60
{
	replacemodel "2003_meshes/Zombie_reference.smd" "2003_meshes/Zombie_reference_lod4.smd"
	//replacemodel "body1_model0.smd" "body1_model0_lod4.smd"
	replacemodel "2003_meshes/Headcrab_reference.smd" "2003_meshes/Headcrab_reference_lod4.smd"
}
$lod 90
{
	replacemodel "2003_meshes/Zombie_reference.smd" "2003_meshes/Zombie_reference_lod5.smd"
	//replacemodel "body1_model0.smd" "body1_model0_lod5.smd"
	replacemodel "2003_meshes/Headcrab_reference.smd" "2003_meshes/Headcrab_reference_lod5.smd"
}
$lod 120
{
	replacemodel "2003_meshes/Zombie_reference.smd" "2003_meshes/Zombie_reference_lod6.smd"
	//replacemodel "body1_model0.smd" "body1_model0_lod6.smd"
	replacemodel "2003_meshes/Headcrab_reference.smd" "2003_meshes/Headcrab_reference_lod6.smd"
}
$shadowlod
{
	replacemodel "2003_meshes/Zombie_reference.smd" "2003_meshes/Zombie_reference_lod7.smd"
	//replacemodel "body1_model0.smd" "body1_model0_lod7.smd"
	replacemodel "2003_meshes/Headcrab_reference.smd" "2003_meshes/Headcrab_reference_lod7.smd"
}

/*

$keyvalues
{
	"dynamic_interactions"
	{
		"alyx_v_zombie_elbow_45L"
		{
			"trigger"		"auto_in_combat"
			"origin_relative"	"64 0 0"		// (forward,right,up)
			"angles_relative"	"0 135 0"		// (pitch, yaw, roll)
			"sequence"		"Alyx_Zombie_Elbow_45L"
			"delay"			"10.0"
		}
		
	}
}

*/
