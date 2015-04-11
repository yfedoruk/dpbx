#How to Downgrade a Package via apt-get? 
      #man apt-get
sudo apt-get install <package-name>=<package-version-number> #OR
sudo apt-get -t=<target release> install <package-name> #OR
sudo aptitude install pkg=version

#remember: Don't remove higher package version before downgrading. Reason: removing a package may remove many dependent ones, resulting in an unusable system. ppapurge sounds interesting though. Can you explain why you believe we ought to first uninstall packages (as a separate step) before installing older versions of them?


#Also, use 
apt-cache showpkg <package-name> #to list available versions.