<?php

// problem. Mock it: 
$gameLauncherParams = GamesLaunchParams::find($this->gameLauncherId);

// bad
$model = app(GamesLaunchParams::class);
$gameLauncherParams = $model->newQuery()->find($this->gameLauncherId);


// bad
$connection = DB::connection('integration');
\DB::shouldReceive('find')->withAnyArgs()->andReturn('value');


// another. Create funciton-adapter and mock it.
public function getById($id)
{
	return static::find($id);
}

$model->getById($this->gameLauncherId);