# add architecture
dpkg --add-architecture i386
dpkg --add-architecture x64

#install x64 headers
sudo apt-get install linux-headers-$(uname -r) -y

#update & upgrade
apt-get clean
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

#install utils
apt-get install -y emacs
apt-get install -y flashplugin-nonfree
apt-get install -y conky
apt-get install -y gdebi
apt-get install -y alsa-utils
apt-get install -y tor
apt-get install -y filezilla filezilla-common
apt-get install -y htop nethogs
apt-get install -y gtk-recordmydesktop recordmydesktop remmina
apt-get install -y virtualbox virtualbox-dkms

#install skype
wget -O skype-install.deb http://www.skype.com/go/getskype-linux-deb
dpkg -i skype-install.deb
apt-get -f install -y
rm skype-install.deb

#clean up
apt-get autoclean
apt-get autoremove
apt-get purge

# write ~/.bash_aliases
echo "alias emacs='emacs -nw'" >> ~/.bash_aliases
