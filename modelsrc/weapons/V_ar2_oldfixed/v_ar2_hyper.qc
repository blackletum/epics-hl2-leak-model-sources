/*
==============================================================================

Assault Rifle 2

==============================================================================
*/

$modelname weapons/v_AR2.mdl
$cdmaterials models\Weapons\V_Flaregun models\Weapons\V_ar2


// whole body
$body studio "Old/AR2_reference.smd"
$body studio "../V_hands_hyper/Hands_hyper_reference.smd"

$origin 0 0 68

//Muzzle flash
$attachment 0 "Bip01 R Hand" 31.50 2.00 6.00 rotate -0 -0 0
 
//Shell eject
$attachment 1 "Bip01 R Hand" 10.0 2 6.0 rotate -25 -90 0

$pushd Old
$sequence AR2_idle "AR2_idle01" loop fps 30 ACT_VM_IDLE 1

$sequence AR2_primary_fire "AR2_primary_fire" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "0" } { event 6001 0 "1" }
$sequence AR2_primary_fire2 "AR2_primary_fire" fps 30 snap activity ACT_VM_HITLEFT 1 { event 5001 0 "0" } { event 6001 0 "1" }
$sequence AR2_primary_fire3 "AR2_primary_fire" fps 30 snap activity ACT_VM_HITLEFT2 1 { event 5001 0 "0" } { event 6001 0 "1" }
$sequence AR2_primary_fire4 "AR2_primary_fire" fps 30 snap activity ACT_VM_HITRIGHT 1 { event 5001 0 "0" } { event 6001 0 "1" }

$sequence AR2_primary_dry "AR2_primary_dry" fps 30 snap activity ACT_VM_DRYFIRE 1
$sequence AR2_secondary_fire "AR2_secondary_fire" fps 30 snap activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "2" }
$sequence AR2_draw "AR2_draw" fps 30 snap activity ACT_VM_DRAW 1
$sequence AR2_reload "AR2_reload" fps 40 activity ACT_VM_RELOAD 1 // this needs to be 1.5 to 2 seconds long
//$sequence AR2_reload "Reload" frames 0 55 fixuploop -5 0 fps 25 activity ACT_VM_RELOAD 1
$sequence AR2_idle_rest "AR2_idle01_rest" loop fps 30 
$sequence rest_to_idle "rest_to_idle" fps 30
$sequence Idle_to_rest "Idle_to_rest" fps 30

$sequence Idle_to_active "Idle_to_active" fps 30
$sequence rest_to_active "rest_to_active" fps 30
$sequence Active_to_idle "Active_to_idle" fps 30
$sequence AR2_idle_active "AR2_idle01_active" fps 30
$sequence AR2_primary_dry_active "AR2_primary_dry_active" fps 30
$sequence AR2_primary_fire_active "AR2_primary_fire_active" fps 30
$sequence AR2_reload_high "AR2_reload_high" fps 30
$sequence AR2_reload_low "AR2_reload_low" fps 30
$sequence AR2_secondary_dry_active "AR2_secondary_dry_active" fps 30
$sequence AR2_secondary_fire_active "AR2_secondary_fire_active" fps 30

$popd
// ================================
//  Dummy sequences for NPCs
// ================================

$sequence attack1	"Fire01" fps 30 LX rotate 180 frames 0 3 activity ACT_RANGE_ATTACK_AR2 1 { event 5001 0 "0" } { event 3007 0 } { event 6001 0 "0" }
$sequence attack2	"Fire02" fps 30 LX rotate 180 activity ACT_RANGE_ATTACK_AR2_GRENADE 1 { event 3012 0 }


