// 2003 Leak Obsolete Rocket Launcher

$modelname Weapons/v_Rocket_launcher.mdl

$bodygroup "studio"
{
	studio "Rocket_launcher_nohands_reference.smd"
}
$body studio "../V_hands_hyper/Hands_hyper_reference.smd"

$cdmaterials Models\Weapons\v_Rocket_launcher
$cdmaterials models\Weapons\V_Flaregun

$attachment "0" "muzzle" 0 0 0 rotate 0 0 0

$sequence idle1 idle1 ACT_VM_IDLE 1 loop
$sequence draw draw ACT_VM_DRAW 1
$sequence fire fire ACT_VM_PRIMARYATTACK 1
$sequence reload reload ACT_VM_RELOAD 1