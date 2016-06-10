# http://stackoverflow.com/questions/10902433/setting-environment-variables-for-accessing-in-php

<VirtualHost hostname:80>
   ...
   SetEnv VARIABLE_NAME variable_value
   ...
</VirtualHost>

#then use in php
if(!$_SERVER['VARIABLE_NAME']) {
	die('only for developers');
}
