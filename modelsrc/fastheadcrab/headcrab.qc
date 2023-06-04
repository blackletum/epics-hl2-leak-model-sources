//2003 Leak Fast Headcrab
$modelname headcrab.mdl

$bodygroup "studio"
{
	studio "headcrab_reference.smd"
}

$lod 5
{
	replacemodel "headcrab_reference.smd" "headcrab_reference_lod1.smd"
}
$lod 10
{
	replacemodel "headcrab_reference.smd" "headcrab_reference_lod2.smd"
}
$lod 25
{
	replacemodel "headcrab_reference.smd" "headcrab_reference_lod3.smd"
}
$lod 40
{
	replacemodel "headcrab_reference.smd" "headcrab_reference_lod4.smd"
}

$surfaceprop "flesh"

$illumposition 1.067 0.247 11.269

$eyeposition 0 0 16

$cdmaterials "models\headcrab\"

$sequence Idle01 Idle01 ACT_IDLE 1 loop
$sequence Run1 Run1 ACT_RUN 1 loop lx ly
$sequence attack attack ACT_RANGE_ATTACK1 1 { event 2 0 }

$sequence hopleft hopleft ACT_HEADCRAB_HOP_LEFT 1
$sequence hopright hopright ACT_HEADCRAB_HOP_RIGHT 1
$sequence lookaround lookaround
$sequence die die ACT_DIESIMPLE 1
$sequence flinch flinch ACT_FLINCH 1
$sequence rearup rearup ACT_HEADCRAB_THREAT_DISPLAY 1

$include ragdoll.qci