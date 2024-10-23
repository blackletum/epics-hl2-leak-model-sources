/*
==============================================================================

Stenographers Chasm Worker

==============================================================================
*/


$modelname c17_citizen_chasmworker.mdl 
$cdmaterials Models\Citizen\Factory_sitting Models\Citizen\City

//start eye/face data
$eyeposition 0 0 70

// head controllers
$attachment "eyes" "ValveBiped.Bip01_Head1" -0.0235 -3.8496 67.1794 absolute
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.80 -5.80 -0.15 rotate 0 -80 -90
//$attachment "chest" "ValveBiped.Bip01_Spine2" 5.00 4.00 0.00 rotate 0 90 90

$model chasmworker "chasmworker_reference.smd"{

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination

	$include "../bodyrules_xsi.qci"
}
//end eye/face data

$bbox -13 -13 0  13 13 72
$include "../standardhierarchy_leak.qci"
$include "../standardikchains_leak.qci"
$alwayscollapse "Male_01"
$alwayscollapse "XSISceneRoot"

//Evil ass temp solution until I remake 2003 citizen anims qc myself - epicplayer
$pushd "../../Gman_XSI"
$include "../Male_animations/2003_citizen_shared_TEMP.qci"
$popd

$pushd "../../gasmasksamuel"
$include "../Male_animations/2003_citizen_weapons_shared_TEMP.qci"
$popd

//Use the anims from the factory sitting model, just because.
$sequence write 	"../../factory_sitting/write" loop fps 50 frame 1 244
$sequence die 		"../../factory_sitting/die" fps 50 frame 1 75

$pushd "../Male_animations"
$include "../Male_animations/body_poses_lean_leak.qci"
$popd

$pushd "..\Male"
$include "..\Male\ragdoll.qci"
$include "..\Male\hitbox.qci"
$popd