//======================================
//   Old 2001-2002 Barney remake
//	 Model edits, QCs and custom animations by Epicplayer
//======================================

$modelname "barney.mdl"

$model "barney" "ihvbarney_reference.smd" {

	eyeball righteye "Bip01 Head" -1.291829 -3.821171 67.032681 "eyeball_r" 1 4 "pupil_r" 0.682
	eyeball lefteye "Bip01 Head" 1.191179 -3.821178 67.010544 "eyeball_l" 1 -4 "pupil_l" 0.682

	eyelid upper_right "ihvbarney_expressions" lowerer 1 -0.26 neutral 0 0.21 raiser 2 0.28 split 0.1 eyeball "righteye"
	eyelid lower_right "ihvbarney_expressions" lowerer 3 -0.3 neutral 0 -0.25 raiser 4 -0.11 split 0.1 eyeball "righteye"
	eyelid upper_left "ihvbarney_expressions" lowerer 1 -0.26 neutral 0 0.21 raiser 2 0.28 split -0.1 eyeball "lefteye"
	eyelid lower_left "ihvbarney_expressions" lowerer 3 -0.3 neutral 0 -0.25 raiser 4 -0.11 split -0.1 eyeball "lefteye"
	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination
	
	flexfile "ihvbarney_expressions" {
		$include "../Humans/standardflex.qci"
	}
	
	$include "../Humans/facerules.qci"
}

$eyeposition 0 0 67
$attachment "eyes" "Bip01 Head" -0.01 -12.09 67.25 absolute

$cdmaterials models/Police

$ikchain "leftankle" "Bip01 L Foot"
$ikchain "rightankle" "Bip01 R Foot"

$include cop_shared_newanims.qci
$include hitbox.qci
$include cop_ragdoll.qci