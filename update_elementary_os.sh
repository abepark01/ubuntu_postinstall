apt update -qq
apt install gdebi dconf-editor -y
apt install software-properties-common -y

add-apt-repository ppa:philip.scott/elementary-tweaks -y
apt update -qq
apt install elementary-tweaks -y

add-apt-repository ppa:linrunner/tlp -y
apt update -qq
apt install tlp tlp-rdw -y
tlp start
apt install redshift -y
chmod 744 /usr/lib/gvfs/gvfsd-smb-browse
apt install chromium-browser -y
apt install ubuntu-restricted-extras libavcodec-extra ffmpeg -y

apt install libavcodec-extra -y
apt install libdvd-pkg -y
apt install preload -y
gsettings set org.pantheon.files.preferences single-click false

apt purge scratch-text-editor epiphany-browser epiphany-browser-data -y
apt purge midori-granite -y
apt purge noise -y
apt purge software-center -y
apt purge bluez -y
apt purge modemmanager -y
apt purge geary -y
apt autoremove -y
apt autoclean -y

