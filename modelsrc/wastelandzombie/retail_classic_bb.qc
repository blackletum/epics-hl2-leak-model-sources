
$modelname Zombie/Classic.mdl

$eyeposition 0 0 73

$model studio "wastelandzombie_reference.smd"

$bodygroup "headcrab1"
{
	Blank
	studio "wastelandzombie_headcrab_bb_reference.smd"
}

$cdmaterials "Models\Zombie\"
$cdmaterials "Models\headcrab\"

$contents "solid"
$surfaceprop "zombieflesh"

$attachment "headcrab" "Bip01 Head" -4.49 -1.32 -0.02 rotate 0 20.25 29.25
$attachment "eyes" "Bip01 Head" 0 0 0 rotate 0 0 -50
$attachment "head" "Bip01 Head" 0 0 0 rotate 0 0 -50
$attachment "chest" "Bip01 Spine3" -3 6 0 rotate 0 60 90
$attachment "maw" "Bip01 Spine2" 0 0 0 rotate 0 90 90
$attachment "Blood_Left" "Bip01 L Hand" 0 0 0 rotate 0 0 0
$attachment "Blood_Right" "Bip01 R Hand" 0 0 0 rotate 0 0 0

$sequence Idle01 idle ACT_IDLE 1 loop
$sequence Walk walk ACT_WALK 1 loop lx 	{ event AE_ZOMBIE_STEP_RIGHT 2 } { event AE_ZOMBIE_STEP_LEFT 23 }
$sequence Claw1 attack1 ACT_MELEE_ATTACK1 1 { event AE_ZOMBIE_ATTACK_SCREAM 5 } { event AE_ZOMBIE_ATTACK_RIGHT 20 }
$sequence Claw2 attack2 ACT_MELEE_ATTACK1 1 { event AE_ZOMBIE_ATTACK_SCREAM 10 } { event AE_ZOMBIE_ATTACK_LEFT 20 }
$sequence Swat1 attack2 ACT_ZOM_SWATLEFTMID 1 { event AE_ZOMBIE_STARTSWAT 18 } { event AE_ZOMBIE_SWATITEM 20 } fps 60
$sequence Swat2 attack1_alt ACT_ZOM_SWATRIGHTMID 1 { event AE_ZOMBIE_STARTSWAT 15 } { event AE_ZOMBIE_SWATITEM 20 } fps 60
$sequence Swat3 attack2 ACT_ZOM_SWATLEFTLOW 1 { event AE_ZOMBIE_STARTSWAT 18 } { event AE_ZOMBIE_SWATITEM 20 } fps 60
$sequence Swat4 attack1 ACT_ZOM_SWATRIGHTLOW 1 { event AE_ZOMBIE_STARTSWAT 15 } { event AE_ZOMBIE_SWATITEM 20 } fps 60

$include hitbox.qci
$include ragdoll.qci