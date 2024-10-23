$modelname "weapons/v_Crowbar.mdl"
$cdmaterials models/weapons/v_crowbar models/weapons/v_flaregun

// whole body
$body studio "crowbar_reference"

$origin 0 15 64

$sequence idle1 "CROWBAR_idle1" fps  13 activity ACT_VM_IDLE 1 snap
$sequence draw "CROWBAR_draw" fps  24 ACT_VM_DRAW 1 snap
$sequence holster "CROWBAR_holster" fps  24 snap
$sequence attack1 "CROWBAR_strike1" fps 22 snap activity ACT_VM_HITCENTER 1
$sequence attack1miss "CROWBAR_strike1(miss)" fps 22 snap activity ACT_VM_MISSCENTER 1
$sequence attack2 "CROWBAR_Strike2" fps 22 snap activity ACT_VM_MISSCENTER 2
$sequence attack2hit "CROWBAR_Strike2(hit)" fps 22 snap activity ACT_VM_HITCENTER 2
$sequence attack3 "CROWBAR_Strike3" fps 24 snap activity ACT_VM_MISSCENTER 3
$sequence attack3hit "CROWBAR_Strike3(hit)" fps 24 snap activity ACT_VM_HITCENTER 3
$sequence idle2 "crowbar_idle2" fps 15 loop snap
$sequence idle3 "crowbar_idle3" fps 15 loop snap

$renamebone "Bip01 R Arm2" "Bip01 R Forearm"
$renamebone "Bip01 L Arm2" "Bip01 L Forearm"
$renamebone "Bip01 R Arm1" "Bip01 R UpperArm"
$renamebone "Bip01 L Arm1" "Bip01 L UpperArm"
$renamebone "Bip01 R Arm" "Bip01 R Clavicle"
$renamebone "Bip01 L Arm" "Bip01 L Clavicle"