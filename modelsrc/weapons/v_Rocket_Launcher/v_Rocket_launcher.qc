// 2003 Leak Obsolete Rocket Launcher

$modelname Weapons/v_Rocket_launcher.mdl

$bodygroup "studio"
{
	studio "Rocket_launcher_reference.smd"
}

$cdmaterials Models\Weapons\v_Rocket_launcher
$cdmaterials models\Weapons\V_hand

$attachment "0" "muzzle" 0 0 0 rotate 0 0 0

$definebone "Bip01" "" -10.13104 -1.329903 43.181469 0 -89.999921 0 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" 0 0 0 -89.980215 -89.999921 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 4.443614 -0.009642 0.000006 -0.000057 0.045607 -0.000229 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine" 12.111413 -0.011446 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "Bip01 Neck" 0.000008 0.011442 1.352404 -78.540823 179.955158 -0.000802 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" 6.078089 0 -0.000001 2.569601 -88.156487 -72.743762 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 13.446751 -0.000001 0 0 -3.959139 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 15.996997 -0.000002 0 0 0 -96.454354 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 1.885326 0.833277 -2.177876 40.000016 -0.038273 -91.559587 0 0 0 0 0 0
$definebone "Bip01 L Finger01" "Bip01 L Finger0" 1.506965 -0.000002 0 -0.000001 -7.999983 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger02" "Bip01 L Finger01" 0.798345 -0.000003 0 -0.000001 -6.499978 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger1" "Bip01 L Hand" 3.950305 -0.539876 -2.108868 9.000021 -0.007219 -0.046181 0 0 0 0 0 0
$definebone "Bip01 L Finger11" "Bip01 L Finger1" 1.545794 0 0.000001 0 27.000006 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger12" "Bip01 L Finger11" 1.667398 -0.000002 0.000002 0 24.99998 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger2" "Bip01 L Hand" 3.899462 -0.475376 -1.170889 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger21" "Bip01 L Finger2" 1.528215 0 -0.000001 0 19.000029 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger22" "Bip01 L Finger21" 1.528218 0.000001 0 0.000001 27.500029 0 0 0 0 0 0 0
$definebone "Bip01 L Finger3" "Bip01 L Hand" 3.89946 -0.431804 0.168228 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger31" "Bip01 L Finger3" 1.506963 0 0.000005 0 24.50002 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger32" "Bip01 L Finger31" 1.506958 0.000002 -0.000003 0.000001 19.49999 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger4" "Bip01 L Hand" 3.915632 -0.278019 1.402612 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger41" "Bip01 L Finger4" 1.333083 0 0.000003 0.000001 36.499991 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger42" "Bip01 L Finger41" 1.159201 0.000001 -0.000002 0.000001 12.499993 0 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" 0.000009 0.01145 -1.352404 78.540823 179.953614 -0.000802 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 6.078088 0 0.000002 -2.569601 -88.156548 72.743762 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 13.446753 -0.000002 0 0 -3.959138 -0.000002 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 15.997 -0.000001 -0.000001 0 0 96.454354 0 0 0 0 0 0
$definebone "Dummy15" "Bip01 R Hand" 1.57081 7.303089 1.488159 -1.064753 -179.115414 90.655885 0 0 0 0 0 0
$definebone "Dummy14" "Bip01 R Hand" -3.835325 7.810403 0.358661 -1.064753 -179.115414 90.655885 0 0 0 0 0 0
$definebone "muzzle" "Bip01 R Hand" 29.99419 4.029573 0.307656 -1.064753 -179.115414 90.655885 0 0 0 0 0 0

$sequence idle1 idle1 ACT_VM_IDLE 1 loop
$sequence draw draw ACT_VM_DRAW 1
$sequence fire fire ACT_VM_PRIMARYATTACK 1
$sequence reload reload ACT_VM_RELOAD 1