cd "C:%HOMEPATH%\.GoLand2019.3\config"
rmdir "eval" /s /q
del "options\other.xml"
reg delete "HKEY_CURRENT_USER\Software\JavaSoft\Prefs\jetbrains\goland" /f

:: This will work for idea 2018.3 and later
::
:: It is Highly Advised to Purchase the JetBrain Softwares
:: This is only for the case You just want to Extend the 
:: Trial Period and Evaluate the IDE for some more Time
