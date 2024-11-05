//2002 APC model remake
//By Xinus22

$modelname "APC"

$cdmaterials "models/APC"

$surfaceprop "metal"

$body "apc_reference" "apc_reference.smd"

$collisionmodel "apc_collision.smd" {
    $concave
    //$maxconvexpieces 10000
   $mass 800.0
}

$sequence "idle" "apc_reference.smd"
$sequence slam slam //Used in E3 Terminal