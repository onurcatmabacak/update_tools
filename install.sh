# alias onur-update='sudo apt update -y && sudo apt full-upgrade -y && sudo snap refresh && sudo apt autoremove -y && sudo apt autoclean -y && sudo service fwupd start && sudo fwupdmgr refresh && sudo fwupdmgr update'
# alias restart-bluetooth='sudo systemctl restart bluetooth.service && sudo hciconfig hci0 down && sudo rmmod btusb && sudo modprobe btusb && sudo hciconfig hci0 up'

# install packages 
onur_update
sudo apt install ssh sshpass gdebi snapd vlc vim python3-pip qpdfview -y
sudo pip install numpy astropy scipy
sudo snap install code
onur_update

# install git
sudo add-apt-repository ppa:git-core/ppa -y
onur_update
sudo apt install git -y

# install slimbook tools
sudo add-apt-repository ppa:slimbook/slimbook
onur_update
sudo apt install slimbookamdcontroller slimbookbattery slimbookgestures slimbookwelcome -y

# install brave browser
sudo apt -y install curl software-properties-common apt-transport-https 
curl https://brave-browser-apt-release.s3.brave.com/brave-core.asc| gpg --dearmor > brave-core.gpg
sudo install -o root -g root -m 644 brave-core.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
onur_update
sudo apt install brave-browser

# install Googl Chrome
sudo apt install wget -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
onur_update

