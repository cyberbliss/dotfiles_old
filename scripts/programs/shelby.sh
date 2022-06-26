_arch=$(dpkg --print-architecture)
curl -LO https://github.com/cyberbliss/shelby/releases/download/v2.0.1/shelby_2.0.1_Linux_${_arch}.tar.gz
tar -xvzf shelby_2.0.0_Linux_${_arch}.tar.gz
sudo mv shelby /usr/local/bin/shelby
rm -rf shelby_2.0.0_Linux_${_arch}.tar.gz
rm -rf LICENSE
rm -rf README.md