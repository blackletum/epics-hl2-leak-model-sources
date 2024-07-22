/*
==============================================================================

2002 Antlion QC Remake
By epicplayer

==============================================================================
*/

$modelname Antlion.mdl
$body studio "2002_meshes/AntLion_reference.smd" faces 3000 3000

$cdmaterials models\antlion

$eyeposition 0 0 24
$mostlyopaque

$realignbones

$poseparameter "move_yaw" -180 180 wrap

$attachment leftfront "antlion.LegR3_Bone" 46 0 0
$attachment rightfront "antlion.LegL3_Bone" 46 0 0
$attachment leftrear "antlion.LegMidL3_Bone" 30 0 0
$attachment rightrear "antlion.LegMidR3_Bone" 30 0 0

//==================================================
// Wings
//==================================================

$bodygroup wings
{
blank
studio "2003_meshes/wings_reference.smd"
}

// make the whole model out of flesh
$surfaceprop "flesh"

$include "antlion_shared_2002.qci"

//$include "hitbox.qci"
$hboxset "default"
$hbox 0 "Antlion.Body_Bone" -8.56 -8.14 -9.91 3.88 7.86 10.06
$hbox 0 "Antlion.Head_Bone" -19.01 -7.77 -8.94 0.99 9.23 9.06
$hbox 0 "Antlion.LegMidL1_Bone" -0.96 -2.45 -2.32 11.04 2.55 0.68
$hbox 0 "Antlion.LegMidL2_Bone" 0 -1.54 -1.47 24.9 2.75 1.53
$hbox 0 "Antlion.LegMidL3_Bone" -1.29 -3.99 -1.05 28.709999 1.01 1.95
$hbox 0 "Antlion.LegMidR1_Bone" 0.26 -3.03 -2.29 12.26 1.98 0.71
$hbox 0 "Antlion.LegMidR2_Bone" 0 -2.5 -2.57 26 2.5 0.43
$hbox 0 "Antlion.LegMidR3_Bone" 0 -1.86 -1.42 30 3.86 1.58
$hbox 0 "Antlion.Back_Bone" -3.34 -9 -13.56 33.439999 13 13.44
$hbox 0 "Antlion.LegL1_Bone" -4.15 -2.54 -3.12 24.940001 4.15 2.9
$hbox 0 "Antlion.LegL2_Bone" -3.93 -2.56 -2.89 30.469999 4.07 2.22
$hbox 0 "Antlion.LegL3_Bone" -2.03 -4.06 -2.6 46.209999 1.5 3.17
$hbox 0 "Antlion.LegR1_Bone" -4.46 -2.22 -2.46 24.459999 5.69 3.51
$hbox 0 "Antlion.LegR2_Bone" -6.21 -2.37 -2.07 28.200001 4.18 3.2
$hbox 0 "Antlion.LegR3_Bone" -1.92 -4.25 -3.04 46.32 1.31 2.73

$include "ragdoll.qci"