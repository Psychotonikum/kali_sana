# copy files
cp .bashrc ~/
cp .bash_aliases ~/
cp .emacs ~/ 

# add architecture
dpkg --add-architecture i386
dpkg --add-architecture x64

#update & upgrade
apt-get clean
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

# install stuff
apt-get install -y \
	linux-headers-$(uname -r) \
	emacs \
	flashplugin-nonfree \
	conky \
	gdebi \
	alsa-utils \
	tor \
	filezilla filezilla-common \
	htop nethogs \
	virtualbox virtualbox-dkms \
	steam

#install skype
wget -O skype-install.deb http://www.skype.com/go/getskype-linux-deb
dpkg -i skype-install.deb
apt-get -f install -y
rm skype-install.deb

#clean up
apt-get autoclean
apt-get autoremove
apt-get purge
