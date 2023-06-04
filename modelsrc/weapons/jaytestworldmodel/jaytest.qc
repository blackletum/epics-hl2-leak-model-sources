
$modelname "weapons/w_smg1.mdl"

$bodygroup "studio"
{
	studio "w_mp5k_reference.smd"
}

$bodygroup "clip"
{
	studio "clip_reference.smd"
	blank
}

$surfaceprop "weapon"

$contents "solid"

$mostlyopaque

$cdmaterials "Models\Weapons\v_jaytest\"

$illumposition 1.687 0.746 -0.882

$attachment "0" "Muzzle" 0 0 0 rotate 90 0 0
$attachment "1" "ValveBiped.Weapon_bone" 2.4 0.57 -1.96 rotate 1.92 89.98 -80.98

$cbox 0 0 0 0 0 0

$bbox -9.577 0.077 -6.987 8.086 3.296 5.223


$sequence "idle" {
	"w_smg1_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_smg1_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_SMG1" 1
	{ event 5003 0 "2" }
	{ event 3002 0 "" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "attackoffcenter" {
	"w_smg1_anims\attackoffcenter.smd"
	{ event 5003 0 "2" }
	{ event 3002 0 "lefthand" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$collisionmodel "w_smg1_physics.smd"
{
	$mass 8
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
