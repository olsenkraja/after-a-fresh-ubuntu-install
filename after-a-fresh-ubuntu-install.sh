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
bash anaconda3.sh -b -p $HOME/anaconda3
rm ~/anaconda3.sh

# PHP, Composer and Laravel
sudo apt install php-cli php-zip php-mbstring php-xml
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
composer global require laravel/installer

# PhpStorm
sudo snap install phpstorm --classic

# Tilix
sudo apt install tilix

# CopyQ
sudo add-apt-repository ppa:hluk/copyq
sudo apt update
sudo apt install copyq