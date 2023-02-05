bash update.sh -y
sudo apt install ssh sshpass gdebi sshfs snapd vlc vim hdf5-tools hdf-compass python3-pip fonts-cantarell qpdfview blender paraview -y
sudo pip install numpy astropy scipy h5py yt
sudo snap install slack --classic
sudo snap install zoom-client
sudo snap install spotify
sudo snap install meshlab
sudo snap install code
bash update.sh -y

sudo add-apt-repository ppa:git-core/ppa -y
bash update.sh -y

sudo apt install git -y

sudo add-apt-repository ppa:slimbook/slimbook
bash update.sh -y
sudo apt install slimbookamdcontroller slimbookbattery slimbookgestures slimbookwelcome -y
sudo apt -y install curl software-properties-common apt-transport-https 
curl https://brave-browser-apt-release.s3.brave.com/brave-core.asc| gpg --dearmor > brave-core.gpg
sudo install -o root -g root -m 644 brave-core.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
bash update.sh -y
sudo apt install brave-browser

