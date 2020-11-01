#!bin/bash

cd ~/.config/JetBrains/GoLand2020.2/
rm eval/GoLand202.evaluation.key
sed -i '/evlsprt/d' options/other.xml
cd ~/.java/.userPrefs/jetbrains
rm -rf goland*
