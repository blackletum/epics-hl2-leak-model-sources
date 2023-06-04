
$modelname Combine_Elite.mdl

$eyeposition 0 0 73

$model studio "Elite_reference_fixed.smd" {

	eyeball righteye "Bip01 Head" -1.674 -10.541 68.93 "eyeball_r" 1 4 "pupil_r" 0.680
	eyeball lefteye  "Bip01 Head"  1.757 -10.541 68.89 "eyeball_l" 1 -4 "pupil_l" 0.680

	eyelid upper_right "ce_expressions" lowerer 1 -0.221 neutral 0  0.071 raiser 2  0.246 split 0.1 eyeball righteye
	eyelid lower_right "ce_expressions" lowerer 3 -0.331 neutral 0 -0.309 raiser 4 -0.165 split 0.1 eyeball righteye
	eyelid upper_left "ce_expressions" lowerer 1 -0.221 neutral 0  0.071 raiser 2  0.246 split -0.1 eyeball lefteye
	eyelid lower_left "ce_expressions" lowerer 3 -0.331 neutral 0 -0.309 raiser 4 -0.165 split -0.1 eyeball lefteye

	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination

	flexfile "ce_expressions" {
	}
}

$cdmaterials "Models\Combine_Elite\"

$bodygroup studio
{
	Blank
	studio "Sniper_reference.smd"
}

$include "anims_classic.qci"
$include "ragdoll_fixed.qci"
