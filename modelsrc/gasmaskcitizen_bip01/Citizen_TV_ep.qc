// TV! Free TV!

$modelname Citizen_TV.mdl

$eyeposition 0 0 70

// head controllers
$controller 0 "Bip01 Head" XR -20 20
//$controller mouth "Line01" ZR 0 45

$surfaceprop "flesh"
$mostlyopaque
$attachment "eyes" "Bip01 Head" -0.01 -8.54 68.52 absolute
$attachment "mouth" "Bip01 Head" 0.80 -5.80 -0.15 rotate 0 -80 -90

$cdmaterials models/citizen_17

$model studio "gasmaskcitizen_ep_reference" {
	eyeball "righteye" "Bip01 Head" -1.24019 -8.00226 68.5347 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball "lefteye" "Bip01 Head" 1.34411 -8.01093 68.5347 "eyeball_l" 1 -4 "pupil_l" 0.63

	eyelid  upper_right "gasmaskcitizen_ep_expressions" lowerer 1 -0.29 neutral 0 0.23 raiser 2 0.32 split 0.1 eyeball righteye
	eyelid  lower_right "gasmaskcitizen_ep_expressions" lowerer 3 -0.28 neutral 0 -0.22 raiser 4 -0.12 split 0.1 eyeball righteye
	eyelid  upper_left "gasmaskcitizen_ep_expressions" lowerer 1 -0.29 neutral 0 0.23 raiser 2 0.32 split -0.1 eyeball lefteye
	eyelid  lower_left "gasmaskcitizen_ep_expressions" lowerer 3 -0.28 neutral 0 -0.22 raiser 4 -0.12 split -0.1 eyeball lefteye	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination
	
	flexfile "gasmaskcitizen_ep_expressions" {
			$include "../Humans/standardflex.qci"
	}
	
	$include "../Humans/facerules.qci"
}

$bodygroup TV
{

studio "TV.smd"
blank

}

$sequence Idle "Idle_TV" loop FPS 30 ACT_IDLE 1
$sequence Run "Run_TV" loop FPS 32 LX ACT_RUN 1
$sequence Run2 "Run_TV2" loop FPS 32 LX ACT_WALK 1
$sequence Die_simple Die_simple FPS 50 ACT_DIESIMPLE 1

$include "hitbox.qci"