//Manhack_Gibs


$modelname gibs/manhack_gib04.mdl
$cdmaterials models/obsolete/ManhackOld

$scale 1.0
$body "Body" "manhack_Gibs7.smd" 
$staticprop
$surfaceprop "metal"
$autocenter


$sequence  idle "manhack_Gibs7" fps 30





$collisionmodel "manhack_Gibs7.smd" {
	// Mass in kilograms
	$mass 2.0
	$concave
}

$keyvalues
{
	"prop_data"
	{
		"base" "Metal.Small"
	}
}
