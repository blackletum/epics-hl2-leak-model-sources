/*
==============================================================================

Iceaxe

==============================================================================
*/

$modelname Weapons/v_iceaxe.mdl
$cdmaterials models\Weapons\V_Flaregun models\Weapons\V_iceaxe

// whole body
$body studio "Iceaxe_nohands_reference.smd" reverse
$body studio "../V_hands_hyper/Hands_hyper_reference.smd"

//Tip of axe
$attachment 0 "tip" 0 0 0

$origin 0 0 68

$sequence idle01 	"idle01" 		loop fps 30 activity		ACT_VM_IDLE 1
$sequence draw 		"draw" 			fps 30 activity			ACT_VM_DRAW 1 snap
$sequence attackcm 	"attackcenter(miss)" 	fps 30 snap activity		ACT_VM_MISSCENTER 1
$sequence attackch 	"attackcenter" 		fps 30 snap activity		ACT_VM_HITCENTER 1
$sequence attacklm 	"attackleft(miss)" 	fps 30 snap activity		ACT_VM_MISSCENTER 1
$sequence attacklh 	"attackleft" 		fps 30 snap activity		ACT_VM_HITCENTER 1
$sequence attackrm 	"attackright(miss)" 	fps 30 snap activity		ACT_VM_MISSCENTER 1
$sequence attackrh 	"attackright" 		fps 30 snap activity		ACT_VM_HITCENTER 1
$sequence battackcm 	"Big_attackcenter(miss)"fps 30 snap activity		ACT_VM_MISSCENTER2 1
$sequence battackch 	"Big_attackcenter" 	fps 30 snap activity		ACT_VM_HITCENTER2 1
$sequence battacklm 	"Big_attackleft(miss)" 	fps 30 snap activity		ACT_VM_MISSCENTER2 1
$sequence battacklh 	"Big_attackleft" 	fps 30 snap activity		ACT_VM_HITCENTER2 1
$sequence battackrm 	"Big_attackright(miss)" fps 30 snap activity		ACT_VM_MISSCENTER2 1
$sequence battackrh 	"Big_attackright" 	fps 30 snap activity		ACT_VM_HITCENTER2 1

/*
==============================================================================
Description of animations

idle01				Idle animation for the iceaxe model
draw					Brings iceaxe to view
attackcenter(miss)	Swings to center but misses (follows through)
attackcenter			Swings to center and hits
attackleft(miss)		Swings to left but misses (follows through)
attackleft			Swings to left and hits
attackright(miss)	Swings to right but misses (follows through)
attackright			Swings to right and hits

==============================================================================
*/
