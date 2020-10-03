#!/bin/sh
# reset jetbrains ide evals

OS_NAME=$(uname -s)
JB_PRODUCTS="IntelliJIdea CLion PhpStorm GoLand PyCharm WebStorm Rider DataGrip RubyMine AppCode"

#for PRD in $JB_PRODUCTS; do
	#rm -rf ~/.java/.userPrefs/prefs.xml
	#rm -rf ~/.java/.userPrefs/jetbrains/prefs.xml
	#rm -rf ~/.config/JetBrains/${PRD}*/eval/
	#rm -rf ~/.config/JetBrains/${PRD}*/options/other.xml
#done


# https://stackoverflow.com/questions/26584948/how-do-i-remove-my-intellij-license-in-2019-3
cd ~/.config/JetBrains/GoLand2020.2
rm eval/GoLand202.evaluation.key
sed -i '/evlsprt/d' options/other.xml
cd ~/.java/.userPrefs/jetbrains
rm -rf goland*
