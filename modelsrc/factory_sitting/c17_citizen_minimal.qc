// Citizen Minimal
// Original remake by WC, Animations and new version by The One Epicplayer

$modelname c17_citizen_minimal.mdl

$model citizen_minimal factory_sitting

$bodygroup "chair"
{
	studio "factory_chair1"
	studio "factory_chair2"
	blank
}

$origin 0 8 12
$surfaceprop "flesh"

$illumposition 0.226 -0.561 36.113

$eyeposition 0 0 70

$cdmaterials Models\Citizen\Factory_sitting Models\Citizen\City

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

//$include definebones.qci

$hboxset "default"
$hbox 0 "ValveBiped.Bip01_Spine" -6.23 -4.81 -7.57 7.54 8.47 7.24 ""
$hbox 0 "ValveBiped.Bip01_Spine2" -2.04 -3.02 -7.46 15.16 9.13 7.15 ""
$hbox 0 "ValveBiped.Bip01_R_UpperArm" -1.75 -3.74 -2.18 14.55 3.28 3.32 ""
$hbox 0 "ValveBiped.Bip01_R_Forearm" 0 -3.03 -2.02 18.450001 2.23 2.58 ""
$hbox 0 "ValveBiped.Bip01_L_UpperArm" -2.26 -3.63 -3.87 12.08 2.86 2.24 ""
$hbox 0 "ValveBiped.Bip01_L_Forearm" 0 -3.03 -3.04 18.450001 1.96 2.15 ""
$hbox 0 "ValveBiped.Bip01_Head1" -1.28 -5.91 -3.66 8.4 3.77 3.64 ""
$hbox 0 "ValveBiped.Bip01_L_Thigh" 0 -4.39 -3.92 18.33 5.99 3.8 ""
$hbox 0 "ValveBiped.Bip01_L_Calf" 0 -4.14 -3.28 20.9 3.48 2.29 ""
$hbox 0 "ValveBiped.Bip01_R_Thigh" 0 -4.21 -4.07 18.33 5.9 4.6 ""
$hbox 0 "ValveBiped.Bip01_R_Calf" 0 -3.53 -2.96 20.9 3.49 3.23 ""
/*
$weightlist "weights_layer_crouch_run_holding" {
	 "ValveBiped.Bip01" 0
	 "ValveBiped.Bip01_Spine" 1
	 "ValveBiped.Bip01_Spine2" 1
	 "ValveBiped.Bip01_R_Clavicle" 1
	 "ValveBiped.Bip01_R_UpperArm" 1
	 "ValveBiped.Bip01_R_Forearm" 1
	 "ValveBiped.Bip01_L_Clavicle" 1
	 "ValveBiped.Bip01_L_UpperArm" 1
	 "ValveBiped.Bip01_L_Forearm" 1
	 "ValveBiped.Bip01_Head1" 1
	 "ValveBiped.Bip01_L_Thigh" 0
	 "ValveBiped.Bip01_L_Calf" 0
	 "ValveBiped.Bip01_L_Foot" 0
	 "ValveBiped.Bip01_R_Thigh" 0
	 "ValveBiped.Bip01_R_Calf" 0
	 "ValveBiped.Bip01_R_Foot" 0
}
*/

//$animation write_old write_old
$sequence write write ACT_IDLE 1 fps 50 frame 1 244
$sequence die die ACT_DIESIMPLE 1 fps 50 frame 1 75

//$sequence writefix die frame 0 0 subtract write_old 0 delta
