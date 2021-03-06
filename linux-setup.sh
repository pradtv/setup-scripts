
# Add 10gen's mongo repository
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | sudo tee -a /etc/apt/sources.list.d/10gen.list

sudo apt-get -y update

# Install packages
sudo apt-get install -y curl                     \
                        git                      \
                        imagemagick              \
                        libmagickwand-dev        \
                        mongodb-10gen            \
                        ubuntu-restricted-extras \
                        vim                      \
                        vlc                      \
                        zsh

#install chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

# Create code and play directories
mkdir -p ~/code/play

# Configure git
git config --global user.name "Pradeep T V"
git config --global user.email "prad.tv@gmail.com"

# zsh configuration
chsh -s /bin/zsh
curl -L http://install.ohmyz.sh | sh

# Install RVM
\curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby

# My dotfiles
git clone https://github.com/pradtv/dotfiles.git ~/code/dotfiles
~/code/dotfiles/install

# Configure vim
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
mkdir -p ~/.tmp

# Install nvm and node.js
curl https://raw.githubusercontent.com/creationix/nvm/v0.10.0/install.sh | sh
nvm install 0.11
nvm alias default 0.11
npm install -g yo

# Generate ssh keys
mkdir -p ~/.ssh
ssh-keygen -t rsa -C "prad.tv@gmail.com"
