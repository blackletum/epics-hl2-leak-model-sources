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

$cdmaterials "Models\Zombie\"

$contents "solid"

$surfaceprop "flesh"

$attachment "headcrab" "Bip01 Head" -4.49 -1.32 -0.02 rotate 0 20.25 29.25
$attachment "eyes" "Bip01 Head" 0 0 0 rotate 0 0 -50
$attachment "head" "Bip01 Head" 0 0 0 rotate 0 0 -50
$attachment "chest" "Bip01 Spine3" -3 6 0 rotate 0 60 90
$attachment "maw" "Bip01 Spine2" 0 0 0 rotate 0 90 90
$attachment "Blood_Left" "Bip01 L Hand" 0 0 0 rotate 0 0 0
$attachment "Blood_Right" "Bip01 R Hand" 0 0 0 rotate 0 0 0

//$sequence idle wastelandzombie_reference ACT_IDLE 1

$sequence Idle01 idle ACT_IDLE 1 loop
$sequence Walk walk ACT_WALK 1 loop lx 	{ event 16 2 } { event 17 23 }
$sequence Claw1 attack1 ACT_MELEE_ATTACK1 1 { event 20 5 } { event 1 20 }
$sequence Claw2 attack2 ACT_MELEE_ATTACK1 1 { event 20 10 } { event 2 20 }
$sequence Swat1 attack2 ACT_ZOM_SWATLEFTMID 1 { event 11 18 } { event 10 20 } fps 60
$sequence Swat2 attack1_alt ACT_ZOM_SWATRIGHTMID 1 { event 11 15 } { event 10 20 } fps 60
$sequence Swat3 attack2 ACT_ZOM_SWATLEFTLOW 1 { event 11 18 } { event 10 20 } fps 60
$sequence Swat4 attack1 ACT_ZOM_SWATRIGHTLOW 1 { event 11 15 } { event 10 20 } fps 60

$include hitbox.qci
$include ragdoll.qci