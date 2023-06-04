
$modelname Zombie/Classic_torso.mdl

$eyeposition 0 0 24

$model studio "wastelandzombie_torso_reference.smd"

$bodygroup "headcrab1"
{
	Blank
	studio "wastelandzombie_headcrab_bb_reference.smd"
}

$cdmaterials "Models\Zombie\"
$cdmaterials "Models\headcrab\"

$contents "solid"

$surfaceprop "flesh"

$hboxset "default"
$hbox 3 "Bip01 Pelvis" -6.2 -4.48 -8 5.8 6.52 8 ""
$hbox 2 "Bip01 Spine" -2.5 -3 -7.5 12 5 7.5 ""
$hbox 2 "Bip01 Spine3" -5 -3 -7.5 5 5 7.5 ""
$hbox 1 "Bip01 Neck" -0.75 -4.91 -5 8.78 5.41 5 ""
$hbox 4 "Bip01 L UpperArm" -1.2 -3 3 15 3 -3 ""
$hbox 5 "Bip01 R UpperArm" -1.2 -3 -3 15 3 3 ""
$hbox 5 "Bip01 R Forearm" -1.17 -3 -2.2 12 2.2 2.7 ""
$hbox 5 "Bip01 R Hand" -2 -2 -1.5 5 1.5 4 ""
$hbox 4 "Bip01 L Forearm" -1.17 -3 2.2 12 2.2 -2.7 ""
$hbox 4 "Bip01 L Hand" -2 -2 2 5 1.5 -3.5 ""

//$sequence idle wastelandzombie_reference ACT_IDLE 1

$sequence Idle01 torso_idle ACT_IDLE 1 loop
$sequence Crawl torso_crawl ACT_WALK 1 loop lx 	{ event 18 0 } { event 17 19 } { event 19 20 } { event 16 38 }
$sequence Claw torso_attack ACT_MELEE_ATTACK1 1 { event 20 10 } { event 1 15 }
$sequence ragdoll "wastelandzombie_torso_physics" FPS 30 activity ACT_DIERAGDOLL 1

$collisionjoints "wastelandzombie_torso_physics.smd" {
	
	// Mass in kilograms
	$mass 30.0


	$inertia 5.0
	$rotdamping 1.5
	$damping 0.01


	// don't need this bone
	$jointskip "Bip01 Neck"

	$rootbone "Bip01 Pelvis"
	
	//constraints for the wrists, hinge on x
	$jointmassbias "Bip01 L Hand" 2
	$jointmassbias "Bip01 R Hand" 2
	$jointconstrain "Bip01 L Hand" z limit -35 60
	$jointconstrain "Bip01 R Hand" z limit -35 60

	// Forearm
	$jointmassbias "Bip01 L Forearm" 3
	$jointmassbias "Bip01 R Forearm" 3
	$jointconstrain "Bip01 L Forearm" z limit -120 4
	$jointconstrain "Bip01 R Forearm" z limit -120 4
	// Upper arm
	$jointmassbias "Bip01 L UpperArm" 2
	$jointmassbias "Bip01 R UpperArm" 2

	$jointconstrain "Bip01 L UpperArm" y limit -76 30
	$jointconstrain "Bip01 R UpperArm" y limit -45 76
	$jointconstrain "Bip01 R UpperArm" z limit -73.00 40.00
	$jointconstrain "Bip01 L UpperArm" z limit -73.00 40.00


	// Pelvis has no constraints because it is the root bone

	// Spine - no constraints because pelvis has no geometry, this Spine is root
	// Spine2 - upper torso
	// twist left/right
	$jointconstrain "Bip01 Spine" x limit -60 60
	// curl forward/backward
	$jointconstrain "Bip01 Spine" z limit -25 15
	// lean left/right
	$jointconstrain "Bip01 Spine" y limit -25 25
}