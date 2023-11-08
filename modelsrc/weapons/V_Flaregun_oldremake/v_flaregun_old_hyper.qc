/*
==============================================================================

Old flaregun viewmodel with hyper hands
Animations by Valve. Hyper hands by Xinus. Model stuff by epicplayer.

==============================================================================
*/

$modelname Weapons/v_flaregun.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_flaregun

$scale 1.48

// whole body
$body studio "Flaregun_old_reference.smd" 
$body studio "Flaregun_old_hands_reference.smd"

//$origin 0 0 68 //default qc
//$origin 1.75 -4 62 1 //HL1 pistol
$origin 0 16 82 //HL2 corrected

$pushd "Old"

$sequence idle1 "V_flaregun_idle01" loop fps 30 activity ACT_VM_IDLE 10
$sequence idle2 "V_flaregun_idle02" loop fps 30 activity ACT_VM_IDLE 10
$sequence draw "V_flaregun_draw" fps 30 activity ACT_VM_DRAW 1 snap
$sequence fire "V_flaregun_fire" fps 30 activity ACT_VM_PRIMARYATTACK 1 snap
$sequence reload "V_flaregun_reload" fps 30 activity ACT_VM_RELOAD 1
$sequence dryfire "V_flaregun_dryfire" fps 30 activity ACT_VM_DRYFIRE 1 snap
//$sequence fidget "V_flaregun_fidget" fps 30 activity ACT_VM_FIDGET 1
$sequence fidget "V_flaregun_fidget" fps 30 activity ACT_VM_IDLE 1
$sequence holster "V_flaregun_holster" fps 30 activity ACT_VM_HOLSTER 1
$sequence reload_shell "V_flaregun_shell(reload)" fps 30
$popd

