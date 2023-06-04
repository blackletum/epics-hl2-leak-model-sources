
$modelname "citizen_ep.mdl"

$model "citizen" "gasmaskcitizen_ep_reference_opaque.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.24019 -3.51242 68.5347 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.34411 -3.52109 68.5347 "eyeball_l" 1 4 "pupil_l" 0.63
		
		mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination

}


$surfaceprop "flesh"

$contents "solid"

$illumposition -0.045 -1.261 36.061

$eyeposition 0 0 70

$mostlyopaque

$cdmaterials "models\citizen_17\\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 4.5 -4.14 0.05 rotate 0 -80.1 -90
$attachment "forward" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 -80 -90

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$sequence idle idle ACT_IDLE 1 node 1 loop


$include anims.qci
$include citizenanims.qci
$include anims_ss.qci
$include citizen_ragdoll.qci