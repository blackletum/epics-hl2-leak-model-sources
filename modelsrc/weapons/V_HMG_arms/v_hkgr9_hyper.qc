/*
==============================================================================

HKGR9 with animated arms
Original model by Valve, enhancements by Epicplayer

==============================================================================
*/

$modelname weapons/v_HMG.mdl
$cdmaterials models\Weapons\V_hkgr9 models\Weapons\V_Flaregun


// whole body
$body studio "HMG_gr9_reference.smd"
$body studio "../V_hands_hyper/Hands_hyper_reference.smd"

$origin -1 30 68.5

//Muzzle flash
$attachment 0 "Muzzle" 0 0 0 rotate 180 0 -90
 
//Shell eject
$attachment 1 "Eject" 7.0 0 0

$sequence idle "Idle01" loop fps 30 ACT_VM_IDLE 1
$sequence fire "Fire" fps 30 ACT_VM_PRIMARYATTACK 1 { event 5001 0 "0" } { event 6001 0 "1" } snap
$sequence dryfire "Dryfire" fps 30 ACT_VM_DRYFIRE 1
$sequence draw "Draw" fps 30 ACT_VM_DRAW 1 snap
$sequence reload "Reload" fps 30 ACT_VM_RELOAD 1


/*
==============================================================================
	ANIMATION DESCRPTIONS

AR2_idle			Idle animation for the HMG
AR2_primary_fire		Fires the bullets from the HMG
AR2_primary_dry		Pulls trigger when no bullets are left in primary fire
AR2_draw			Brings weapon into view
AR2_reload			Reloads both primary and secondary rounds

Bullets are called Dummy18, Dummy17, Dummy16, and Dummy15.  Dummy15 should be the first to go.

==============================================================================
*/