// 2003 Barney

$modelname "barney.mdl"

$model "Barney" "2002_Barney_reference.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.282400 -3.839601 67.033107 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.206900 -3.839601 67.011012 "eyeball_l" 1 -4 "pupil_l" 0.63

	eyelid upper_right "barney_01.vta" lowerer 1 -0.24 neutral 0 0.19 raiser 2 0.26 split 1 eyeball "eye_right"
	eyelid lower_right "barney_01.vta" lowerer 3 -0.3 neutral 0 -0.26 raiser 4 -0.11 split 1 eyeball "eye_right"
	eyelid upper_left "barney_01.vta" lowerer 48 -0.24 neutral 0 0.19 raiser 49 0.26 split -1 eyeball "eye_left"
	eyelid lower_left "barney_01.vta" lowerer 50 -0.3 neutral 0 -0.26 raiser 51 -0.11 split -1 eyeball "eye_left"

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	$include barney_flexes.qci
}

$include "../Humans/standardhierarchy_leak.qci"
$include "../Humans/standardikchains_leak.qci"

//Evil ass temp solution until I remake 2003 citizen anims qc myself - epicplayer
$pushd "../Gman_XSI"
$include "../Humans/Male_animations/2003_citizen_shared_TEMP.qci"
$popd

$pushd "../gasmasksamuel"
$include "../Humans/Male_animations/2003_citizen_weapons_shared_TEMP.qci"
$popd

$pushd "..\Humans\Male"
$include "..\Humans\Male\ragdoll.qci"
//$include "..\Humans\Male\hitbox.qci"
$popd

$include barney_shared.qci

$pushd "../Humans/Male_animations"
$include "../Humans/Male_animations/body_poses_lean_leak.qci"
$popd