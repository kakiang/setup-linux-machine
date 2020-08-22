sudo apt update && sudo apt install git curl python3-setuptools python3-dev build-essential -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3 get-pip.py
python3 --version
pip3 --version

curl -OL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86.sh
bash Miniconda3-latest-Linux-x86_64.sh

curl -OL https://install-node.now.sh/lts
sudo bash lts -y
node -v
npm -v

wget https://github.com/sharkdp/bat/releases/download/v0.15.4/bat_0.15.4_amd64.deb
sudo dpkg -i bat_0.15.4_amd64.deb
