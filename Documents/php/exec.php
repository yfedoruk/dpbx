<?php
//How to capture multi-line output for commands issued with PHP exec?

ob_start();
passthru("ls -la");
$dat = ob_get_clean();


var_dump($dat);