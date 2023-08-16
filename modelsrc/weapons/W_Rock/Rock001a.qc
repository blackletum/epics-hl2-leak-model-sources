//
// .qc file version 1.0
//

$modelname props_junk\Rock001a.mdl

$scale 1.0
$body "Body" "W_Rock.smd"
$cdmaterials models\junk\w_rock
$surfaceprop "concrete"

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
