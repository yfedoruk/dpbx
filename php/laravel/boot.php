<?php 
$ROOT_DIR = '/www/';
require $ROOT_DIR . 'vendor/autoload.php';
/** @var Illuminate\Foundation\Application $app */
$app = require $ROOT_DIR . 'bootstrap/app.php';
$app->loadEnvironmentFrom('.env');
$app->instance('request', new \Illuminate\Http\Request);
$app->make(Illuminate\Contracts\Http\Kernel::class)->bootstrap();


$bar = (new SymfonyStyle(new ArgvInput, new ConsoleOutput))->createProgressBar($aliases->rowCount());
