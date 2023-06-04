
$modelname "weapons/W_molotov.mdl"

$bodygroup "studio"
{
	studio "Molotov_valvebiped_reference.smd"
}

$cdmaterials "models\weapons\w_molotov\"

$attachment "0" "fire" 0 0 0 rotate 0 0 0


$sequence idle Molotov_valvebiped_reference ACT_VM_IDLE 1 loop
$sequence attack1 Molotov_valvebiped_reference
