/*
==============================================================================

Sniper rifle hyper realistic edition

==============================================================================
*/

$modelname weapons/v_sniper.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_sniper


// whole body
$body studio "sniper_reference_meme.smd" 

$origin 0 0 68

//Muzzle flash
$attachment 0 "Bip01 R Hand" -6.4 -57 65.2 absolute

$sequence sniper_idle01 "Idle01" loop fps 30 activity ACT_VM_IDLE 1
$sequence sniper_fire "anims/Reload_meme" frames 150 170 fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event 5001 1 "51" } { event 6001 1 "1" }
$sequence sniper_fire_dry "Dryfire" fps 30 snap activity ACT_VM_DRYFIRE 1
$sequence sniper_draw "Draw" fps 30 activity ACT_VM_DRAW 1 snap
$sequence sniper_reload "anims/Reload_meme" frames 0 150 fps 45 activity ACT_VM_RELOAD 1