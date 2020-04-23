# Add special characters to the US Euro 5 layout
sudo cp eurosign /usr/share/X11/xkb/symbols/eurosign

# Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/google-chrome.deb
sudo dpkg -i ~/google-chrome.deb
sudo apt-get install -f
rm ~/google-chrome.deb

# VS Code
sudo snap install code --classic

# Sublime
sudo snap install sublime-text --classic

# Typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora

# Anaconda Python
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -O ~/anaconda3.sh
bash anaconda3.sh -b -p ~/anaconda3
rm ~/anaconda3.sh

# PHP, Composer and Laravel
sudo apt install -y php-cli php-zip php-mbstring php-xml
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
composer global require laravel/installer

# Node 12, NPM and Yarn
sudo apt install -y curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

# PhpStorm
sudo snap install phpstorm --classic

# Tilix
sudo apt install -y tilix

# CopyQ
sudo add-apt-repository ppa:hluk/copyq
sudo apt update
sudo apt install -y copyq

# Docker
sudo apt install -y docker.io docker-compose
sudo systemctl enable --now docker
sudo groupadd docker
sudo gpasswd -a $USER docker

# VLC
sudo apt install -y vlc

# Flameshot
apt install -y flameshot
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'flameshot'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Shift><Alt>4'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'flameshot gui'"