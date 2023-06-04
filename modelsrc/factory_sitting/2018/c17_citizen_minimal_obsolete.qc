// Created by Crowbar 0.56

$modelname "c17_citizen_minimal.mdl"

$bodygroup "male_Cheaple"
{
	studio "male_Cheaple_reference.smd"
}
$bodygroup "male_Cheaple"
{
	studio "Cube.smd"
}



$surfaceprop "flesh"

$contents "solid"

$illumposition 0.226 -0.561 36.113

$eyeposition 0 0 70

$cdmaterials "models\Humans\Male\"
$cdmaterials "Models\Citizen\Factory_sitting\"

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

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

$definebone "ValveBiped.Bip01" "" -0.000005 -0.533615 38.566917 0 0 89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01" 0.000005 3.345128 -2.981901 4.944225 89.999983 89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine" 7.536097 0 0 0 4.073386 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine2" 10.744785 1.374172 -1.93761 73.712031 179.739653 -95.596496 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028143 0.000001 0 -0.46209 -33.623802 93.935237 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692552 0 0.000002 -0.000004 -3.459061 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine2" 10.744779 1.374166 1.93766 -73.71186 179.740118 91.480542 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028142 0.000001 0 2.738853 -33.527944 -90.505157 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692555 0 0 -0.000002 -3.459061 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Spine2" 15.164795 2.650943 0 0 10.770862 179.413321 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01" 3.890452 -0.000004 -0.000003 2.970156 -89.700793 -89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 17.848177 0 0 0 1.959516 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 16.525253 0 0 -2.33658 -61.400389 -1.599412 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01" -3.890452 0.000004 0.000007 2.9705 -90.29935 -89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 17.848173 0 0 0 1.958771 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 16.525257 0 0 2.336464 -61.399993 2.212247 0 0 0 0 0 0

$poseparameter "move_yaw" -180 180 loop 360

$ikchain "rfoot" "ValveBiped.Bip01_R_Foot"
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot"

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

$animation "a_write" "anims\write.smd" {
	fps 50
}

$animation "a_die" "anims\die.smd" {
	fps 50
}

$sequence "write" {
	"a_write"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 50
}

$sequence "die" {
	"a_die"
	activity "ACT_DIE_SIMPLE" 1
	fps 50
}

