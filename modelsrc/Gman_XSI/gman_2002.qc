// 2002 Gman remake (USING HORRID TEMP DECOMPILED 2003 ANIMS)
// Remake by Xinus22, 2003 leak port and fixes by epicplayer.

$modelname "gman.mdl"

$model gman "meshes_2002/Gman_reference.smd"{
	eyeball righteye "ValveBiped.Bip01_Head1" -1.105 -3.4748 68.1841 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.1948 -3.4748 68.2847 "eyeball_l" 1 -4 "pupil_l" 0.63

	eyelid  upper_right "Gman_expressions" lowerer 1 -0.2389 neutral 0 0.1493 raiser 2 0.2222 split 0.1 eyeball righteye
	eyelid  lower_right "Gman_expressions" lowerer 3 -0.3057 neutral 0 -0.2398 raiser 4 -0.0645 split 0.1 eyeball righteye
	eyelid  upper_left "Gman_expressions" lowerer 1 -0.2389 neutral 0 0.1493 raiser 2 0.2222 split -0.1 eyeball lefteye
	eyelid  lower_left "Gman_expressions" lowerer 3 -0.3057 neutral 0 -0.2398 raiser 4 -0.0645 split -0.1 eyeball lefteye

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination

	flexfile "Gman_expressions" {
		$include "../Humans/standardflex.qci"
	}

	$include "../Humans/facerules.qci"
	//$include "../Humans/bodyrules_xsi.qci"
}

$bodygroup "briefcase"
{
	studio "meshes_2003/briefcase_reference.smd"
	blank
}

$surfaceprop "flesh"

$eyeposition 0 0 70

$cdmaterials models\gman

$attachment "eyes" "ValveBiped.Bip01_Head1" 4.3 -3.57 -0.04 rotate 0 -80.1 -90
$proceduralbones "gman.vrd"
$include "../humans/standardhierarchy_leak.qci"

$include "gman_box.qci"
$include "gman_animation.qci"
$include "gman_collision.qci"
