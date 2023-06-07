//2001 Zombie Remake
//Original meshes and reference by Valve, Remade mesh and animations and other stuff by Epicplayer

$modelname Zombie/Classic.mdl

$eyeposition 0 0 73

$model studio "wastelandzombie_reference.smd"

$bodygroup "headcrab1"
{
	Blank
	studio "wastelandzombie_headcrab_reference.smd"
}

$cdmaterials Models\Zombie

$mostlyopaque

$surfaceprop "flesh"

$attachment "headcrab" "Bip01 Head" -4.49 -1.32 -0.02 rotate 0 20.25 29.25
$attachment "eyes" "Bip01 Head" 0 0 0 rotate 0 0 -50
$attachment "head" "Bip01 Head" 0 0 0 rotate 0 0 -50
$attachment "chest" "Bip01 Spine3" -3 6 0 rotate 0 60 90
$attachment "maw" "Bip01 Spine2" 0 0 0 rotate 0 90 90
$attachment "Blood_Left" "Bip01 L Hand" 0 0 0 rotate 0 0 0
$attachment "Blood_Right" "Bip01 R Hand" 0 0 0 rotate 0 0 0

//$sequence idle wastelandzombie_reference ACT_IDLE 1

$include zombie_animations_leak.qci
$include hitbox.qci
$include ragdoll.qci