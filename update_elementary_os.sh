sudo apt update -qq
sudo apt install gdebi dconf-editor -y
sudo apt install software-properties-common -y

sudo add-apt-repository ppa:philip.scott/elementary-tweaks -y
sudo apt update -qq
sudo apt install elementary-tweaks -y

sudo add-apt-repository ppa:linrunner/tlp -y
sudo apt update -qq
sudo apt install tlp tlp-rdw -y
sudo tlp start
sudo apt install redshift -y
sudo chmod 744 /usr/lib/gvfs/gvfsd-smb-browse
sudo apt install chromium-browser -y
sudo apt install ubuntu-restricted-extras libavcodec-extra ffmpeg -y

sudo apt install libavcodec-extra -y
sudo apt install libdvd-pkg -y
sudo apt install preload -y
gsettings set org.pantheon.files.preferences single-click false

sudo apt purge scratch-text-editor epiphany-browser epiphany-browser-data -y
sudo apt purge midori-granite -y
sudo apt purge noise -y
sudo apt purge software-center -y
sudo apt purge bluez -y
sudo apt purge modemmanager -y
sudo apt purge geary -y
sudo apt autoremove -y
sudo apt autoclean -y

