
$modelname Zombie_headless_torso.mdl

$eyeposition 0 0 24

$model studio "wastelandzombie_torso_reference.smd"

$cdmaterials "Models\Zombie\"

$mostlyopaque

$sequence Idle01 torso_idle ACT_IDLE 1 loop origin 0 -10 0
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