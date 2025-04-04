//Animated Hyper Physics Gun
//Model by Valve. Fixing and animations by The One Epicplayer

$modelname weapons/v_physics.mdl
$cdmaterials models/weapons/V_physics_gun_hyper

//$origin 12.5 48 13
$origin -0.076 -1.734 53.367

$attachment 0 "Point02" 0 0 10
$attachment 1 "Point02" 0 0 10
$attachment muzzle "Point02" 0 0 10

$body studio "physgun_reference"

$sequence idle "TESTreference" fps 3 loop ACT_VM_IDLE 1 node 0

$sequence "holdidle" {
	"TESTreference"
//	{ event 5004 0 "weapons\ggun_hold.wav" }
//	frame 0 9
	fps 15
	loop
	ACT_VM_PRIMARYATTACK 1
 }

$sequence draw "TESTreference" fps 13 ACT_VM_DRAW 1 node 0 snap