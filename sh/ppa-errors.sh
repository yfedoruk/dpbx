#!/bin/sh

1. #GPG error: The following signatures were invalid: KEYEXPIRED

apt-key list | grep expired

#You will get a result similar to the following:

pub   4096R/BE1DB1F1 2011-03-29 [expired: 2014-03-28]
#The key ID is the bit after the / i.e. BE1DB1F1 in this case.
#To update the key, run
sudo apt-key adv --recv-keys --keyserver keys.gnupg.net BE1DB1F1
#Note: Updating the key will obviously not work if the package maintainer has not (yet) uploaded a new key. In that case there is little you can do other than contacting the maintainer, filing a bug against your distribution etc.


2. #GPG error: NO_PUBKEY
# GPG error: http://download.virtualbox.org precise Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 54422A4B98AB5139
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54422A4B98AB5139