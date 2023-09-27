$modelname "Frozen_zombie.mdl"
$cdmaterials models\Frozen_zombie

$body studio frozen_zombie_reference
$sequence idle frozen_zombie_reference activity ACT_IDLE 1

$surfaceprop "Ice"

$collisionmodel "frozen_zombie_reference.smd" 
{
     // Mass in kilograms
     $Mass 60.0
}

// Prevents the model appearing as a prop_dynamic as it does in the mappack
$keyvalues
{
	"prop_data"
	{
		"base" "Glass.Small"
		"health" "200"
	}
}
