/*
==============================================================================

View model MP5K remake
MP5k mesh by Jasper Carmack. Missing animations remake by epicplayer.

==============================================================================
*/

$modelname weapons/v_smg1_old.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_smg1


// whole body
//$body studio "Old/Smg1_reference.smd" 
$body studio "Old/Smg1_hands_reference.smd" 

$origin 0 0 68

//Muzzle flash
//$attachment "muzzle" "ValveBiped.muzzle" 0 0 0 
//Shell eject
//$attachment 1 "ValveBiped.eject" 0 0 0 

$pushd "Old"
/*
$sequence idle01 "Idle01" loop fps 30 activity ACT_VM_IDLE 1 node Ready
$sequence fire01 "Fire01" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}
*/

$sequence fire02 "Fire02" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}

/*
$sequence fire03 "Fire03" fps 30 snap activity ACT_VM_RECOIL2 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}
$sequence fire04 "Fire04" fps 30 snap activity ACT_VM_RECOIL3 1 node Fire {
{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}
*/

$sequence switchmodes "Switch_modes" fps 30 activity ACT_VM_SECONDARYATTACK 1 node Fire

/*
$sequence draw "Draw" fps 30 snap activity ACT_VM_DRAW 1 node Ready
$sequence reload "Reload" fps 30 activity ACT_VM_RELOAD 1 node Ready
$sequence dryfire "Dryfire" fps 30 snap activity ACT_VM_DRYFIRE 1 node Fire
$sequence idletolow "idle_to_low" fps 30 activity ACT_VM_LOWERED_TO_IDLE 1  transition Ready Low
$sequence lowtoidle "low_to_idle" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition Low Ready
$sequence lowidle "Low_idle" fps 30 loop activity ACT_VM_IDLE_LOWERED 1 node Low
*/

$popd



