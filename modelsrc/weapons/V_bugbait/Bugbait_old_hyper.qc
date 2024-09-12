/*
==============================================================================

Old bugbait viewmodel remake
Mesh by Valve, anims by epicplayer

==============================================================================
*/

$modelname weapons/V_bugbait.mdl
$cdmaterials models\Weapons\V_Flaregun models\Weapons\V_bugbait

// whole body
$body studio "Source/v_bugbait_nohands_reference.smd" reverse
$body studio "../V_hands_hyper/Hands_hyper_reference.smd"

$origin 0 0 68

$attachment 0 "Bip01 R Hand" 4 -4 0

$pushd "Old"
//$sequence drawback "Drawback" ACT_VM_HAULBACK 1 { event 3900 4 }
//$sequence throw "Throw" ACT_VM_THROW 1 { event 3005 1 }
$sequence throw "Throw_full" fps 70 ACT_VM_THROW 1 { event 3005 22 }

$sequence idle01 "Idle01" loop fps 30 activity ACT_VM_IDLE 1
$sequence draw "Draw" fps 25 frames 10 28 snap activity ACT_VM_DRAW 1
$sequence holster "Holster" fps 30 activity ACT_VM_HOLSTER 1
//$sequence squeeze "Squeeze" fps 30 activity ACT_VM_SECONDARYATTACK 1
$popd