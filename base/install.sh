echo "Installing base packages"

if [ ! -f /etc/apt/sources.list.d/sublime-text.list ]; then
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee "/etc/apt/sources.list.d/sublime-text.list"
fi

sudo apt-get update

sudo apt-get install -y \
	git \
	curl \
	wget \
	zsh \
	sublime-text


