
$modelname "headcrabclassic.mdl"

$bodygroup "studio"
{
	studio "headcrab_bb_reference.smd"
}

$cdmaterials "models\headcrab\"

$surfaceprop "flesh"

$illumposition 1.067 0.247 11.269

$eyeposition 0 0 16

$sequence Idle01 Idle01 ACT_IDLE 1 loop
$sequence Run1 Run1 ACT_RUN 1 loop lx ly
$sequence attack attack ACT_RANGE_ATTACK1 1 { event AE_HEADCRAB_JUMPATTACK 0 }
$sequence flinch flinch ACT_FLINCH 1
$sequence rearup rearup ACT_HEADCRAB_THREAT_DISPLAY 1
$include ragdoll.qci