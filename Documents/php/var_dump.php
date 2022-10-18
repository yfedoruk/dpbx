<?php
// I like to capture the output of var_dump to a string.

ob_start();
var_dump($someVar);
$result = ob_get_clean();
?>
