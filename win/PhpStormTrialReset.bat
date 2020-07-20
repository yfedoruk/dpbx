cd "C:%HOMEPATH%\.PhpStorm*\config"
rmdir "eval" /s /q
del "options\other.xml"
:: reg delete "HKEY_CURRENT_USER\Software\JavaSoft\Prefs\jetbrains\idea" /f

:: This will work for idea 2018.3 and later
::
:: It is Highly Advised to Purchase the JetBrain Softwares
:: This is only for the case You just want to Extend the 
:: Trial Period and Evaluate the IDE for some more Time


::https://stackoverflow.com/questions/26584948/how-do-i-remove-my-intellij-license-in-2019-3

::For version 2019.3.3 on Windows:

::Delete files in 'C:\Users{user}.IntelliJIdea{idea-version}\config\eval' directory.

::That should do it.

::Otherwise you also have information about evaluation and machine id in the following locations:

::File 'C:\Users{user}.IntelliJIdea{idea-version}\config\options\other.xml' -> all properties that start with 'evlsprt*'
::Registry 'HKEY_CURRENT_USER\Software\JavaSoft\Prefs' with key '/Jet/Brains./User/Id/On/Machine'
::Registry 'HKEY_CURRENT_USER\Software\JavaSoft\Prefs\jetbrains'

