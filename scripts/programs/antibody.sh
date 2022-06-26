_arch=$(dpkg --print-architecture)
curl -LO https://github.com/getantibody/antibody/releases/download/v6.1.1/antibody_6.1.1_linux_${_arch}.deb
sudo apt install -y ./antibody_6.1.1_linux_${_arch}.deb
rm -rf antibody_6.1.1_linux_${_arch}.deb
