/*
==============================================================================

Elena Mossman
Mesh remake by Xinus22. Rigging, flexes, and compiling by The One Epicplayer.

==============================================================================
*/

$modelname Mossman.mdl
$cdmaterials models\Mossman

//start eye/face data
$eyeposition 0 0 65

// head controllers
$attachment "eyes" "ValveBiped.Bip01_Head1" -0.08 -3.32 64.98 absolute
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.80 -5.80 -0.15 rotate 0 -80 -90
//$attachment "chest" "ValveBiped.Bip01_Spine2" 5.00 4.00 0.00 rotate 0 90 90

$model Mossman "Mossman_Elena_Reference.smd" {
	eyeball righteye "ValveBiped.Bip01_Head1" -1.20 -3.32 64.96 "eyeball_r" 1.00 4 "pupil_r" 0.63
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.05 -3.33 64.99 "eyeball_l" 1.00 -4 "pupil_l" 0.63

	eyelid  upper_right "Mossman_Elena_Expressions" lowerer 1 -0.25 neutral 0 0.16 raiser 2 0.29 split 0.1 eyeball righteye
	eyelid  lower_right "Mossman_Elena_Expressions" lowerer 3 -0.31 neutral 0 -0.25 raiser 4 -0.09 split 0.1 eyeball righteye
	eyelid  upper_left "Mossman_Elena_Expressions" lowerer 1 -0.28 neutral 0 0.14 raiser 2 0.26 split -0.1 eyeball lefteye
	eyelid  lower_left "Mossman_Elena_Expressions" lowerer 3 -0.34 neutral 0 -0.28 raiser 4 -0.12 split -0.1 eyeball lefteye

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination
	flexfile "Mossman_Elena_Expressions" {
		$include "../Humans/standardflex.qci"
	}

	$include "../Humans/facerules.qci"
}
//end eye/face data

$surfaceprop "flesh"
$bbox -13 -13 0  13 13 72
$mostlyopaque

//$proceduralbones "../Humans/Female.vrd"
$proceduralbones "mossman.vrd"

$include "Mossman_shared.qci"

$collisionjoints "Mossman_physics.smd"
{
	$mass 60
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone "valvebiped.bip01_pelvis"

	$jointdamping "ValveBiped.Bip01" -1
	$jointinertia "ValveBiped.Bip01" 0
	$jointrotdamping "ValveBiped.Bip01" 0

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -48 48 1
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -26 26 1
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -39 68 1

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -64 64 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -26 122 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -122 50 1

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -64 64 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -122 28 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -100 59 1

	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -140 0 1

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -68 68 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -37 41 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -44 70 1

	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -149 1 1

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -75 93 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -37 32 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -48 66 1

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -50 48 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -19 70 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -79 73 1

	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit 0 133 1

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -61 61 1
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -44 44 1
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -32 50 1

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -39 39 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -59 23 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -84 66 1

	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit 0 131 1

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -23 23 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -28 28 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -46 46 1

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -23 23 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -23 23 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -35 57 1
}