//2002 Kleiner remake by epicplayer

$modelname Kleiner.mdl
$cdmaterials models/Kleiner

// head controllers

$attachment "eyes" "ValveBiped.Bip01_Head1" 0.1007 -2.8691 67.6 absolute
/*
$attachment "lefteye" "ValveBiped.Bip01_Head1" 3.58 -3.50 -1.55 rotate 0 -80 -90
$attachment "righteye" "ValveBiped.Bip01_Head1" 3.58 -3.50 1.30 rotate 0 -80 -90
$attachment "nose" "ValveBiped.Bip01_Head1" 2.70 -5.50 0.00 rotate 0 -80 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 1.00 -5.20 0.00 rotate 0 -80 -90
$attachment "tie" "ValveBiped.Bip01_Spine4" 1.50 6.20 0.00 rotate 0 90 90
$attachment "pen" "ValveBiped.Bip01_Spine4" -3.50 8.20 4.80 rotate 0 90 90
$attachment "chest" "ValveBiped.Bip01_Spine4" -4.00 4.00 0.00 rotate 0 83 90
$attachment "hips" "ValveBiped.Bip01_Pelvis" -0.00 0.00 -0.00 rotate -90 -90 0
$attachment "lefthand" "ValveBiped.Bip01_L_Hand" 3.50 -0.50 0.00 rotate -0 -0 0
$attachment "righthand" "ValveBiped.Bip01_R_Hand" 3.50 -0.50 0.00 rotate 0 0 0
*/

$model kleiner "2002_Kleiner_reference.smd"{
	eyeball righteye "ValveBiped.Bip01_Head1" -1.3182 -2.8691 67.5771 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.5195 -2.8691 67.5774 "eyeball_l" 1 -4 "pupil_l" 0.63

	eyelid  upper_right "kleiner_expressions" lowerer 1 -0.2813 neutral 0 0.1503 raiser 2 0.2446 split 0.1 eyeball righteye
	eyelid  lower_right "kleiner_expressions" lowerer 3 -0.3553 neutral 0 -0.2877 raiser 4 -0.146 split 0.1 eyeball righteye
	eyelid  upper_left "kleiner_expressions" lowerer 1 -0.2813 neutral 0 0.1503 raiser 2 0.2446 split -0.1 eyeball lefteye
	eyelid  lower_left "kleiner_expressions" lowerer 3 -0.3553 neutral 0 -0.2877 raiser 4 -0.146 split -0.1 eyeball lefteye

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination

	flexfile "kleiner_expressions" {
		$include "../Humans/standardflex.qci"
	}

	$include "../Humans/facerules.qci"
	$include "../Humans/Bodyrules_xsi.qci"
}

$eyeposition 0 0 70
$surfaceprop "flesh"
$bbox -13 -13 0  13 13 72
$mostlyopaque

$proceduralbones "kleiner.vrd"

$include "../Humans/standardhierarchy_leak.qci"
$include "../humans/standardikchains_leak.qci"
//$include "../humans/male/commonbones.qci"
/*
$includemodel Kleiner_animations.mdl
$includemodel humans/male_shared.mdl
$includemodel Kleiner_postures.mdl
$includemodel Kleiner_gestures.mdl
*/



/*
//Clipboard bodygroup
$bodygroup clipboard
{
blank
studio "clipboardbodygroup_reference.smd"
}
*/


//Evil ass temp solution until I remake 2003 citizen anims qc myself - epicplayer
$pushd "../Gman_XSI"
$include "../Humans/Male_animations/2003_citizen_shared_TEMP.qci"
$popd

$pushd "../Humans/Male_animations"
$include "../Humans/Male_animations/body_poses_lean_leak.qci"
$popd

$include kleiner_leakanims_temp.qci

$pushd "..\Humans\Male"
$include "..\Humans\Male\ragdoll.qci"
$include "..\Humans\Male\hitbox.qci"
$popd



