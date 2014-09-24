
# Setup scripts

This script installs the tools I use on my work computer.

* Git
* Imagemagick
* RVM (also installs latest ruby and 2.1.2)
* Vim (uses vim-gnome on Elementary and system vim on OSX)
* Zsh (default shell, with oh-my-zsh)

### Mac OSX

    curl -L https://raw.githubusercontent.com/pradtv/setup-scripts/master/osx-setup.sh | sh

### Elementary OS

Remove pantheon-terminal with gnome-terminal

    sudo apt-get install gnome-terminal
    sudo apt-get purge pantheon-terminal

Remove/comment the lines starting with OnlyShowIn in /usr/applications/Terminal

Run the installer script.

    sudo apt-get install -y curl
    curl https://raw.githubusercontent.com/pradtv/setup-scripts/master/linux-setup.sh | sh