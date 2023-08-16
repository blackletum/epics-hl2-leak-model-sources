//
// .qc file version 1.0
//

$modelname props_junk\Rock001a.mdl

$scale 1.0
$body "Body" "W_Rock.smd"
$cdmaterials models\junk\w_rock
$surfaceprop "concrete"
/*
$definebone "Bip01" "" 0.445146 5.615 22.208099 28.280395 -93.544529 3.709128 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" 0.000001 0 0 -89.980154 -89.999641 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 3.995431 -0.003186 -0.001473 5.938307 16.2017 24.422214 0 0 0 0 0 0
$definebone "Bip01 Spine1" "Bip01 Spine" 4.51888 -0.001676 -0.000228 -7.099747 61.739637 3.668693 0 0 0 0 0 0
$definebone "Bip01 Spine2" "Bip01 Spine1" 4.517159 -0.003156 -0.000924 -5.57974 23.326201 14.947838 0 0 0 0 0 0
$definebone "Bip01 Spine3" "Bip01 Spine2" 4.515859 -0.00359 0.00014 2.584926 2.389575 -2.246855 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine3" 4.51631 -0.001477 -0.000001 -0.000057 22.499992 -0.000014 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" 0.000001 0.001602 -1.72062 60.108438 165.116681 8.8204 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 4.22028 0 0 -5.216925 -63.907136 80.14934 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 11.759302 0 0.000001 0.000006 -55.535653 0.000006 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 11.983999 0.000001 -0.000002 52.393602 4.556959 78.019106 0 0 0 0 0 0
$definebone "W_Rock" "Bip01 R Hand" 2.09663 1.80926 -1.04914 -80.365939 94.706467 -56.702619 0 0 0 0 0 0
*/
$sequence idle idle fps 30
$sequence throw throw ACT_RANGE_ATTACK_THROW 1 fps 5


$collisionmodel "W_Rock_physbox.smd"
{
	$mass 0.5
	$inertia 1
	$damping 0.2
	$rotdamping 2

}

$keyvalues
{
	"prop_data"
	{
		"base" "Stone.Small"
	}
}
