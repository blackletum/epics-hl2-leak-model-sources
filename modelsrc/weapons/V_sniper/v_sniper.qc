/*
==============================================================================

Sniper rifle

==============================================================================
*/

$modelname weapons/v_sniper.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_sniper


// whole body
$body studio "sniper_reference.smd" 

$origin 0 0 68

//Muzzle flash
$attachment 0 "Bip01 R Hand" -6.4 -57 65.2 absolute

$sequence sniper_idle01 "Idle01" loop fps 30 activity ACT_VM_IDLE 1
$sequence sniper_fire "Fire" fps 40 snap activity ACT_VM_PRIMARYATTACK 1 { event 5001 1 "51" } { event 6001 1 "1" }
$sequence sniper_fire_dry "Dryfire" fps 30 snap activity ACT_VM_DRYFIRE 1
$sequence sniper_draw "Draw" fps 30 activity ACT_VM_DRAW 1
$sequence sniper_reload "Reload" fps 35 activity ACT_VM_RELOAD 1


/*
==============================================================================

Animation descriptions

sniper_idle01  Idle animation for the sniper rifle
sniper_fire  fires the rifle
sniper_fire_dry  pulls trigger when bullets are gone
sniper_draw  brings into view
sniper_reload  reloads rifle with single shell

==============================================================================
*/



