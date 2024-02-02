//Manhack_Gibs


$modelname gibs/manhack_gib06.mdl
$cdmaterials models/obsolete/ManhackOld

$scale 1.0
$body "Body" "manhack_Gibs6.smd" 
$staticprop
$surfaceprop "metal"
$autocenter


$sequence  idle "manhack_Gibs6" fps 30





$collisionmodel "manhack_Gibs6.smd" {
	// Mass in kilograms
	$mass 1.0
	$concave
}

$keyvalues
{
	"prop_data"
	{
		"base" "Metal.Small"
	}
}
