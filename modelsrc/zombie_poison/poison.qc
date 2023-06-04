//Poison Zombie

$modelname "zombie/poison.mdl"

$body studio Zombie_poison_reference

$bodygroup "headcrab1"
{
	blank
	studio "Headcrab_1_reference.smd"
}
$bodygroup "headcrab2"
{
	blank
	studio "Headcrab_2_reference.smd"
}
$bodygroup "headcrab3"
{
	blank
	studio "Headcrab_3_reference.smd"
}
$bodygroup "headcrab4"
{
	blank
	studio "Headcrab_4_reference.smd"
}
$bodygroup "headcrab5"
{
	blank
	studio "Headcrab_5_reference.smd"
}

$cdmaterials models\zombie_poison
$surfaceprop flesh
$eyeposition 0 0 64

$include hitbox.qci

$sequence refpose poison_anims\refpose LX LY
$sequence Idle01 poison_anims\Idle01 ACT_IDLE 1 loop

$sequence FireWalk poison_anims\FireWalk ACT_ZOM_WALK_ON_FIRE 1 {
	{ event 16 40 }
	{ event 17 10 }
	fps 44
	loop
	LX
}

$sequence Walk poison_anims\Walk ACT_WALK 1 {
	{ event 16 40 }
	{ event 17 10 }
	fps 40
	loop
	LX
}

$sequence Run poison_anims\Run fps 40 loop LX

$sequence headcrab2Leap poison_anims\headcrab2Leap ACT_RANGE_ATTACK1 1 {
	{ event 61 4 }
	{ event 63 68 }
}

$sequence Throw poison_anims\Throw ACT_RANGE_ATTACK2 1 {
	{ event 61 23 }
	{ event 62 30 }
	{ event 63 39 }
}

$sequence spray poison_anims\spray ACT_MELEE_ATTACK1 1 { event 64 31 }
$sequence releasecrab poison_anims\releasecrab ACT_ZOM_RELEASECRAB 1
$sequence FlinchL poison_anims\FlinchL ACT_SMALL_FLINCH 1
$sequence FlinchR poison_anims\FlinchR ACT_SMALL_FLINCH 1
$sequence FlinchC poison_anims\FlinchC ACT_SMALL_FLINCH 1
$sequence ThrowWarning poison_anims\ThrowWarning ACT_ZOMBIE_POISON_THREAT 1 fps 10 { event 60 1 }

$include ragdoll.qci