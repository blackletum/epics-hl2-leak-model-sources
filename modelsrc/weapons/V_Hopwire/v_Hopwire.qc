// Hopwire
// HD Hopwire model by Uncanny (https://ko-fi.com/s/9257347ccd)
// Model setup by epicplayer, animations by "i don't wish to be a bother, but"

$modelname weapons/v_Hopwire.mdl

// whole body
$body studio "v_hopwire_ball_hd_reference.smd"
$body studio "v_hopwire_hands_reference.smd"

$cdmaterials models\Weapons\V_hand models\Weapons\V_Hopwire
$origin 0 2 0

$sequence idle01 anims/idle01 ACT_VM_IDLE 10
$sequence idle_fidget anims/idle_fidget ACT_VM_IDLE 1 frame 0 83
$sequence throw anims/throw ACT_VM_THROW 1 { event 3005 13 }
$sequence roll anims/roll ACT_VM_SECONDARYATTACK 1 { event 3013 2 }
$sequence lob anims/roll ACT_VM_HAULBACK 1 { event 3016 9 }
$sequence draw anims/draw ACT_VM_DRAW 1 snap
$sequence holster anims/holster ACT_VM_HOLSTER 1
