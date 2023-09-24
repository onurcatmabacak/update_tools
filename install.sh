# alias onur-update='sudo apt update -y && sudo apt full-upgrade -y && sudo snap refresh && sudo apt autoremove -y && sudo apt autoclean -y && sudo service fwupd start && sudo fwupdmgr refresh && sudo fwupdmgr update'
# alias restart-bluetooth='sudo systemctl restart bluetooth.service && sudo hciconfig hci0 down && sudo rmmod btusb && sudo modprobe btusb && sudo hciconfig hci0 up'

# install packages 
onur-update
sudo apt install ssh sshpass gdebi snapd vlc vim python3-pip qpdfview -y
sudo pip install numpy astropy scipy
onur-update
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/ms-vscode-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/ms-vscode-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
onur-update
sudo apt install code -y

# install git
sudo add-apt-repository ppa:git-core/ppa -y
onur-update
sudo apt install git -y

# install slimbook tools
sudo add-apt-repository ppa:slimbook/slimbook
onur-update
sudo apt install slimbookamdcontroller slimbookbattery slimbookgestures slimbookwelcome -y

# install brave browser
sudo apt -y install curl software-properties-common apt-transport-https 
curl https://brave-browser-apt-release.s3.brave.com/brave-core.asc| gpg --dearmor > brave-core.gpg
sudo install -o root -g root -m 644 brave-core.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
onur-update
sudo apt install brave-browser -y

# install Googl Chrome
sudo apt install wget -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
onur-update

